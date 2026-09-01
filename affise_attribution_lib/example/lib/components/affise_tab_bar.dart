import 'package:flutter/material.dart';

class AffiseTabBar extends StatelessWidget {
  const AffiseTabBar({
    required this.tabs,
    this.controller,
    super.key,
  });

  final Map<String, IconData> tabs;
  final TabController? controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      labelColor: Theme.of(context).colorScheme.primary,
      indicatorColor: Theme.of(context).colorScheme.primary,
      tabs: tabs.entries
          .map(
            (tab) => Tab(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(tab.value),
                  const SizedBox(width: 8),
                  Text(tab.key),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
