import 'package:flutter/material.dart';

import '../../responsiveness/responsive_component/app_padding.dart';


class PageParts extends StatelessWidget {
  const PageParts({
    super.key,
    required this.color,
    required this.children,
  });

  final Color color;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return // First top part.
    Container(
      padding: AppPadding.onlyPaddingGeometry(
        context: context,
        bottom: 0.10,
      ),
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}
