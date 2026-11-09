import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:medusa_mobile/shared/widgets/widgets.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// Demo banners for the Home screen.
///
/// Medusa has no banner entity, so the images come from the same sample JSON
/// the React Native app uses. Point [bannersUrl] at your own CMS or endpoint;
/// the carousel hides itself when the request fails or answers nothing.
class HeroCarousel extends StatefulWidget {
  const HeroCarousel({super.key});

  static const bannersUrl = 'https://dummyjson.com/c/9fd9-bd11-4526-8405';

  @override
  State<HeroCarousel> createState() => _HeroCarouselState();
}

class _HeroCarouselState extends State<HeroCarousel> {
  List<String> _imageUrls = const [];
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final response = await Dio().get<List<dynamic>>(HeroCarousel.bannersUrl);
      final urls = (response.data ?? [])
          .whereType<Map<String, dynamic>>()
          .map((item) => item['imageUrl'])
          .whereType<String>()
          .toList();
      if (mounted) setState(() => _imageUrls = urls);
    } on Exception {
      // Banners are decoration; leave the carousel hidden.
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_imageUrls.isEmpty) return const SizedBox.shrink();
    final colors = context.colors;

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          CarouselSlider.builder(
            itemCount: _imageUrls.length,
            options: CarouselOptions(
              height: 115,
              viewportFraction: 1,
              autoPlay: _imageUrls.length > 1,
              onPageChanged: (index, reason) => setState(() => _index = index),
            ),
            itemBuilder: (context, index, realIndex) => Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: colors.borderLight),
              ),
              child: AppNetworkImage(
                url: _imageUrls[index],
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          if (_imageUrls.length > 1) ...[
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < _imageUrls.length; i++)
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: i == _index ? colors.content : colors.muted,
                    ),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
