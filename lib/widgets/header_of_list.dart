import 'package:flutter/material.dart';

class HeaderOfList extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final String description;
  const HeaderOfList({
    Key? key,
    required this.title,
    required this.description,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineMedium),
            InkWell(
              onTap: onTap,
              child: Text(
                'View All',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
        Text(description, style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}
