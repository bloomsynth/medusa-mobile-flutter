import 'package:flutter/material.dart';

/// A heart placeholder, as in the React Native app: wishlists are not
/// implemented yet.
class WishlistButton extends StatelessWidget {
  const WishlistButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: const BoxDecoration(
        color: Colors.black54,
        shape: BoxShape.circle,
      ),
      child: const Icon(Icons.favorite_border, size: 14, color: Colors.white),
    );
  }
}
