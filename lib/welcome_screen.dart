import 'package:course_app_ui/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


const List<Color> firstGradientColor = [
  Color.fromRGBO(197, 4, 98, 1),
  Color.fromRGBO(0, 77, 228, 1),
];

const List<Color> secondGradientColor = [
  Color.fromRGBO(80, 3, 112, 1),
  Color.fromRGBO(1, 47, 135, 1),
];

const List<String> cardTexts = [
  "UX Designer from Scratch.",
  "Design Thinking The Beginner"
];

const List<String> cardImages = [
  "assets/svg/first_card.svg",
  "assets/svg/second_card.svg"
];

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  Widget courseContainer(BuildContext context, int index){
    return Padding(
      padding: const EdgeInsets.only(
        right: 25
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const SecondScreen())
          );
        },
        child: Container(
          height: 250,
          width: 190,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors:[
                firstGradientColor[index],
                secondGradientColor[index],
              ] 
            ),
            borderRadius: BorderRadius.circular(14)
          ),
          child: Column(
            
            children: [
        
              /// TEXT 
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 25
                ),
                child: Text(
                  cardTexts[index],
                  style: GoogleFonts.jost(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15
                ),
                child: SvgPicture.asset(
                  cardImages[index],
                  height: 160,
                  width: 160,
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(205, 218, 218, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [

          /// ICONS OF MENU AND BELL 
          Padding(
            padding: const EdgeInsets.only(
              top: 67,
              left: 20,
              right: 20
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  "assets/svg/menu.svg"
                ),
                const Spacer(),
                SvgPicture.asset(
                  "assets/svg/bell.svg"
                ),
              ],
            )
          ),

          ///
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome to New",
                  style: GoogleFonts.jost(
                    fontSize: 27,
                    fontWeight: FontWeight.w300
                  ),
                ),
                Text(
                  "Educourse",
                  style: GoogleFonts.jost(
                    fontSize: 37,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
          ),

          /// TEXFFIELD FOR ENTER YOUR KEYWORD and SEARCH ICON
          
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28.5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25, 
                ),
                child: Row(
                  children: [
                    Expanded( 
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your Keyword",
                          hintStyle: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromRGBO(143, 143, 143, 1),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/svg/search.svg",
                      height: 27,
                      width: 27,
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// 
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  )
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    /// CORSE FOR YTOU TEXT
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 35,
                        left: 30
                      ),
                      child: Text(
                        "Course For You",
                        style: GoogleFonts.jost(
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 25
                      ),
                      child: SizedBox(
                        // color: Colors.black,
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context, index) => courseContainer(context,index),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),

                    /// COURSE FOR YOU TEXT
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 25,
                        left: 25
                      ),
                      child: Text(
                        "Course By Category",
                        style: GoogleFonts.jost(
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 25,
                        horizontal: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/uiux.svg",
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                "UI/UX",
                                style: GoogleFonts.jost(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/visual.svg",
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                "VISUAL",
                                style: GoogleFonts.jost(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/illustration.svg",
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                "ILLUSTRATON",
                                style: GoogleFonts.jost(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(25, 0, 56, 1),
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/photo.svg",
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                "PHOTO",
                                style: GoogleFonts.jost(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}