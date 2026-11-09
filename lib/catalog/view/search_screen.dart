import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medusa_mobile/api/store/product_api.dart';
import 'package:medusa_mobile/catalog/widgets/products_list.dart';
import 'package:medusa_mobile/l10n/l10n.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  /// How long typing must pause before the search runs.
  static const debounce = Duration(milliseconds: 300);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _controller = TextEditingController();
  Timer? _debounce;
  String _query = '';

  void _onChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(SearchScreen.debounce, () {
      if (mounted) setState(() => _query = value.trim());
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = context.colors;
    return Scaffold(
      backgroundColor: colors.background,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 56,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const BackRoundedButton(),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Material(
                        color: colors.contentSecondary,
                        elevation: 2,
                        borderRadius: BorderRadius.circular(24),
                        child: SizedBox(
                          height: 48,
                          child: TextField(
                            key: const Key('search-input'),
                            controller: _controller,
                            onChanged: _onChanged,
                            autofocus: true,
                            autocorrect: false,
                            textInputAction: TextInputAction.search,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              hintText: l10n.searchProducts,
                              hintStyle: const TextStyle(color: Colors.black54),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                size: 18,
                                color: colors.primary,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                vertical: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: _query.isEmpty
                  ? Align(
                      alignment: Alignment.topCenter,
                      child: EmptyMessage(l10n.searchPrompt),
                    )
                  : ProductsList(
                      params: ProductListParams(q: _query),
                      hideTitle: true,
                      emptyMessage: l10n.noProductsFoundFor(_query),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
