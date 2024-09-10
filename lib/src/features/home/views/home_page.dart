import 'package:africtong/src/constants/colors.dart';
import 'package:africtong/src/constants/images.dart';
import 'package:africtong/src/constants/size.dart';
import 'package:africtong/src/constants/strings.dart';
import 'package:africtong/src/features/home/views/home_botton_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        titleSpacing: pad,
        title: Text(
          app_name, // quicksand, dosis, oxygen, comfortaa
          style: GoogleFonts.dosis(fontSize: 48, letterSpacing: -0.5),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: pad),
            child: IconButton(
                onPressed: null,
                icon: Icon(Icons.person, size: 32, color: primaryColor)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        backgroundColor: secondaryColor,
        child: const Image(
          image: AssetImage(botAssist),
          height: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const HomeBottonNavigationBar(),
      body: SingleChildScrollView(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const SizedBox(height: 10),
          const Divider(
            height: 2,
            color: Colors.black38,
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: pad),
            child: Text(
              "Hey, Junior",
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF808080)),
            ),
          ),
          Expanded(
              child: ListView.builder(
            shrinkWrap: true,
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                margin: const EdgeInsets.all(pad / 2),
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(pad),
                  child: Column(children: [
                    Image(
                      image: AssetImage(botLove),
                      height: 70,
                    ),
                    Text("Hello peughy je suis Jimi")
                  ]),
                )),
              );
            },
          )),
        ]),
      ),
    );
  }
}
