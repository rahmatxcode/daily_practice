import 'package:flutter/material.dart';

class DpAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;

  const DpAppbar({
    super.key,
    required this.title,
    this.actions,
    this.leading,

  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor, // this is used to set the background color of the app bar to the primary color of the theme
      foregroundColor: Colors.white,
      centerTitle: true,
      actions: actions,
      leading: leading,
    );
  }
}