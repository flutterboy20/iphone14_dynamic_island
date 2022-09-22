import 'package:flutter/material.dart';
import '../widgets/call_collapsed.dart';
import '../widgets/call_expanded.dart';
import '../widgets/location_collapsed.dart';
import '../widgets/location_expanded.dart';
import '../widgets/music_collapsed.dart';
import '../widgets/music_expanded.dart';

class Views {
  Views(
      {required this.collapsedViews,
      required this.expandedViews,
      this.expandedHeight = 200,
      this.expandedBorderRadius = 20.0});
  final Widget collapsedViews;
  final Widget expandedViews;
  double expandedHeight;
  double expandedBorderRadius;
}

final List<Views> views = [
  Views(
      collapsedViews: const MusicCollapsed(),
      expandedViews: const MusicExpanded(),
      expandedHeight: 180,
      expandedBorderRadius: 40),
  Views(
      collapsedViews: const CallCollapsed(),
      expandedViews: const CallExpanded(),
      expandedHeight: 80,
      expandedBorderRadius: 40),
  Views(
      collapsedViews: const LocationCollapsed(),
      expandedViews: const LocationExpanded(),
      expandedHeight: 180,
      expandedBorderRadius: 40)
];
