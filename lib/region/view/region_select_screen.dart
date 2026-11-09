import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/catalog/widgets/catalog_list_tile.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/region/cubit/region_cubit.dart';
import 'package:medusa_mobile/region/cubit/region_state.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// Picks the region. Prices and the cart follow the selection.
class RegionSelectScreen extends StatelessWidget {
  const RegionSelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final cubit = context.read<RegionCubit>();
    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            Navbar(title: context.l10n.selectRegion),
            Expanded(
              child: BlocBuilder<RegionCubit, RegionState>(
                builder: (context, state) {
                  if (state.regions.isEmpty) {
                    return state.status == RegionStatus.failure
                        ? ErrorView(onRetry: cubit.load)
                        : const Loader();
                  }
                  return ListView.builder(
                    itemCount: state.regions.length,
                    itemBuilder: (context, index) {
                      final region = state.regions[index];
                      return CatalogListTile(
                        title: region.name,
                        subtitle: region.currencyCode.toUpperCase(),
                        trailing: state.region?.id == region.id
                            ? Icon(Icons.check, size: 20, color: colors.primary)
                            : const SizedBox.shrink(),
                        onTap: () {
                          cubit.select(region);
                          context.pop();
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
