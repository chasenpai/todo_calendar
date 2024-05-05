import 'package:flutter/material.dart';

class CustomFieldContainer extends StatelessWidget {
  final bool isFocus;
  final Widget child;

  const CustomFieldContainer({
    required this.isFocus,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 62,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onInverseSurface,
        borderRadius: BorderRadius.circular(16.0),
        border: isFocus ? Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 2.0,
        ) : null,
      ),
      child: child,
    );
  }
}
