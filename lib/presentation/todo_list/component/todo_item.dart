import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onPressed;
  final bool isCheck;

  const TodoItem({
    required this.title,
    required this.subTitle,
    required this.onPressed,
    required this.isCheck,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onInverseSurface,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ListTile(
        title: Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        subtitle: Text(subTitle,),
        leading: IconButton(
          icon: const Icon(
            Icons.check,
          ),
          onPressed: onPressed,
          color: isCheck ? Theme.of(context).colorScheme.primary : Colors.white,
          iconSize: 28.0,
        ),
      ),
    );
  }
}
