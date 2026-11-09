import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medusa_mobile/shared/widgets/rounded_button.dart';
import 'package:medusa_mobile/theme/app_colors.dart';

/// The 56 px screen header: back button on the left, centered title.
class Navbar extends StatelessWidget {
  const Navbar({this.title, this.showBackButton = true, super.key});

  final String? title;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: showBackButton ? const BackRoundedButton() : null,
              ),
            ),
            Expanded(
              child: Text(
                title ?? '',
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: context.colors.content,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class BackRoundedButton extends StatelessWidget {
  const BackRoundedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      onPressed: () {
        if (context.canPop()) {
          context.pop();
        } else {
          context.go('/home');
        }
      },
      child: const Icon(
        Icons.arrow_back_ios_new,
        size: 14,
        color: Colors.black,
      ),
    );
  }
}
