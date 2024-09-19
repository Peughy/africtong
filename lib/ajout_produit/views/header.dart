import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _mainColor = Color(0xFF1c77c3); // PreferredSizeWidget

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({super.key});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "NameApp",
        style: GoogleFonts.nunito(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
      ),
      backgroundColor: _mainColor,
    );
  }

  @override
  // TODO: implement preferredSize
  // ignore: override_on_non_overriding_member
  Size get child => throw UnimplementedError();
}
