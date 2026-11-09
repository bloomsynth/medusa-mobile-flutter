import 'package:equatable/equatable.dart';
import 'package:medusa_mobile/api/models/models.dart';

enum RegionStatus { initial, loading, ready, failure }

class RegionState extends Equatable {
  const RegionState({
    this.status = RegionStatus.initial,
    this.region,
    this.regions = const [],
    this.error,
  });

  final RegionStatus status;

  /// The region prices and the cart are scoped to.
  final StoreRegion? region;

  /// Every region the store sells to; the Home header offers a picker when
  /// there is more than one.
  final List<StoreRegion> regions;
  final String? error;

  bool get hasMultipleRegions => regions.length > 1;

  List<StoreRegionCountry> get countries => region?.countries ?? const [];

  RegionState copyWith({
    RegionStatus? status,
    StoreRegion? region,
    List<StoreRegion>? regions,
    String? error,
  }) => RegionState(
    status: status ?? this.status,
    region: region ?? this.region,
    regions: regions ?? this.regions,
    error: error,
  );

  @override
  List<Object?> get props => [status, region, regions, error];
}
