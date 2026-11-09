import 'dart:async';

import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';
import 'package:medusa_mobile/region/cubit/region_state.dart';
import 'package:medusa_mobile/shared/cubit/safe_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Restores the selected region from storage, or picks the store's first one.
///
/// `CartCubit` listens to this cubit: the cart is created for the region and
/// moved when the customer picks another.
class RegionCubit extends SafeCubit<RegionState> {
  RegionCubit(this._client, this._prefs) : super(const RegionState());

  static const _key = 'region_id';

  final MedusaClient _client;
  final SharedPreferences _prefs;

  Future<void> load() async {
    emit(state.copyWith(status: RegionStatus.loading));
    try {
      final regions = await _client.region.list();
      final savedId = _prefs.getString(_key);
      var region = regions.where((r) => r.id == savedId).firstOrNull;
      if (region == null && savedId != null) {
        // The saved region may be hidden from the list; ask for it directly.
        try {
          region = await _client.region.retrieve(savedId);
        } on Exception {
          region = null;
        }
      }
      region ??= regions.firstOrNull;
      if (region == null) {
        emit(
          state.copyWith(
            status: RegionStatus.failure,
            regions: regions,
            error: 'The store has no regions',
          ),
        );
        return;
      }
      await _prefs.setString(_key, region.id);
      emit(
        state.copyWith(
          status: RegionStatus.ready,
          region: region,
          regions: regions,
        ),
      );
    } on Exception catch (error) {
      emit(state.copyWith(status: RegionStatus.failure, error: '$error'));
    }
  }

  Future<void> select(StoreRegion region) async {
    if (region.id == state.region?.id) return;
    emit(state.copyWith(status: RegionStatus.ready, region: region));
    await _prefs.setString(_key, region.id);
  }
}
