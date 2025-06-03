import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sidebarx/sidebarx.dart';

class Sidebar extends StatelessWidget {
  final SidebarXController controller;
  const Sidebar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: controller,
      theme: SidebarXTheme(width: 100),
      extendedTheme: const SidebarXTheme(
        itemTextPadding: EdgeInsets.only(left: 10),
        selectedItemTextPadding: EdgeInsets.only(left: 10),
        width: 180,
        decoration: BoxDecoration(color: Color(0xFF1E1E2C)),
        textStyle: TextStyle(color: Colors.white70),
        selectedTextStyle: TextStyle(color: Color(0xFFF57C00),),
        selectedItemDecoration: BoxDecoration(
          color: Color(0xFF3B3B58),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      headerBuilder: (context, extended) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(22, 80, 16, 15),
          child: Row(
            children: [
              const CircleAvatar(radius: 25, backgroundImage: AssetImage('assets/image/carousel/avatar.jpg')),
              if (extended) ...[
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    'Alex!',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ],
          ),
        );
      },
      items:  [
        SidebarXItem(icon: Icons.home, label: 'Home', onTap: () {
          context.push('/');
        } ),
        SidebarXItem(icon: Icons.star, label: 'Favorites', onTap: () {
          context.push('/favorite');
        }),
        SidebarXItem(icon: Icons.add, label: 'Add Question', onTap: () {
          context.push('/add');
        }),
        SidebarXItem(icon: Icons.chat_sharp, label: 'Chat', onTap: () {
          context.push('/chat');
        }),
      ],
    );
  }
}
