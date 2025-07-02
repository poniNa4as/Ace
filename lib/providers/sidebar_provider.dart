import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidebarx/sidebarx.dart';

final sidebarControllerProvider = Provider<SidebarXController>((ref) {
  return SidebarXController(selectedIndex: 0, extended: false);
});
