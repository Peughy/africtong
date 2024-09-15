import 'package:africtong/src/commons/navigator_page_bar.dart';
import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/features/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderBar extends StatelessWidget implements PreferredSize{
  const HeaderBar({super.key, required this.title});
  final String title;

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    NavigatorPage navigatorPage = NavigatorPage();
    return AppBar(
      backgroundColor: primaryColor,
      title: Text(
        title, // quicksand, dosis, oxygen, comfortaa
        style: GoogleFonts.comfortaa(
            fontSize: 32, letterSpacing: -1, color: Colors.white),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: pad),
            child: IconButton(
                onPressed: () =>
                    navigatorPage.changePage(context, const HomeView()),
                icon: const FaIcon(FontAwesomeIcons.house,
                    size: 26, color: Colors.white))),
      ],
    );
  }
  
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
}
