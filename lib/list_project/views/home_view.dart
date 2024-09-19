import 'package:flutter/material.dart';

const mainColor = Color(0xFF1c77c3);

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FooterBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FooterBar extends StatefulWidget {
  const FooterBar({super.key});

  @override
  State<FooterBar> createState() => _FooterBarState();
}

class _FooterBarState extends State<FooterBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
    // const NaviBar(
    //   fabColor: mainColor,
    //   navBarColor: Colors.white,
    //   fabIconColor: Colors.white,
    //   fabItems: [
    //     FabCont(
    //       icon: Icons.place,
    //       text: 'plane',
    //       color: Colors.red,
    //     ),
    //   ],
    //   navIconSize: 16,
    //   navIcon1: FontAwesomeIcons.house,
    //   navIcon2: FontAwesomeIcons.listCheck,
    //   navIcon3: FontAwesomeIcons.handHoldingDollar,
    //   navIcon4: FontAwesomeIcons.userLarge,
    //   navIconColor: mainColor,
    //   nav1Name: 'Acceuil',
    //   nav2Name: 'Projets',
    //   nav3Name: 'Mon projet',
    //   nav4Name: 'Profil',
    //   routeList: [
    //     HomePage(),
    //     Header(),
    //     HomePage(),
    //     HomePage(),
    //   ],
    // );
  }
}
