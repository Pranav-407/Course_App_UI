import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(80, 3, 112, 1),
      body: Column(
        children: [
          Container(
            height: 325,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(197, 4, 98, 1),
                  Color.fromRGBO(80, 3, 112, 1),
                ]
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 25
                  ),
                  child: SvgPicture.asset(
                    "assets/svg/arrow_left.svg",
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 40,
                    right: 40
                  ),
                  child: SizedBox(
                    height: 225,
                    child: Column(
                      children: [
                        Text(
                          "UX Designer from Scratch.",
                          style: GoogleFonts.jost(
                            fontSize: 33,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                        ),
                        const SizedBox(height: 15,),
                        Text(
                          "Basic guideline & tips & tricks for how to become a UX designer easily.",
                          style: GoogleFonts.jost(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 30,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white),
                                  color: const Color.fromRGBO(0, 82, 178, 1),
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/profile.svg"
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Text(
                                "Author: ",
                                style: GoogleFonts.jost(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(190, 154, 197, 1)
                                ),
                              ),
                              Text(
                                "Jenny",
                                style: GoogleFonts.jost(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Text(
                                    "4.8",
                                    style: GoogleFonts.jost(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                    ),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Color.fromRGBO(255, 146, 0, 1),
                                  ),
                                  Text(
                                    "(20 reviews)",
                                    style: GoogleFonts.jost(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromRGBO(190, 154, 197, 1)
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(235, 235, 235, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                    topRight: Radius.circular(38),
                  )
                ),

                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        right: 30,
                        bottom: 20
                      ),
                      child: Container(
                        height: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: 46,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(230, 239, 239, 1),
                                  borderRadius: BorderRadius.circular(12)
                                ),
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/svg/youtube.svg"
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 12,
                                  left: 15
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Introduction",
                                      style: GoogleFonts.jost(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    Expanded(
                                      child: Text(
                                        "Lorem Ipsum is simply dummy text ... ",
                                        style: GoogleFonts.jost(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: const Color.fromRGBO(143, 143, 143, 1)
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}