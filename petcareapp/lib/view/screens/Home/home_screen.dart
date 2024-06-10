

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:petcareapp/contants/style/colors.dart';
import 'package:petcareapp/contants/style/fonts.dart';
import 'package:petcareapp/contants/style/shadow.dart';
import 'package:petcareapp/utils/textformfields.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColor.bgColor,

      body: SingleChildScrollView( 
        child: Container( 
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column( 

            children: [ 

              Container( 
                margin:EdgeInsets.only(top: 70,bottom:20 ) ,
                child:  Row( 

                  children: [ 

                    CircleAvatar( 
                      // radius: 100,
                      child: ClipRRect(
                      
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          // height: 80,
                          // width: 80,
                          fit: BoxFit.cover,
                          "lib/assets/img/tejas dp.jpeg"
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column( 
                        crossAxisAlignment: CrossAxisAlignment.start,
                      
                        children: [ 
                          Text("Ram Ram, Tejas",
                            style: AppFonts.h3Medium(Colors.black),
                          ),
                          Text("Good Morning!",
                            style: AppFonts.h3Regular(Colors.black54),
                          )
                        ],
                      ),
                    ),

                    const Spacer(),
                    SvgPicture.asset(
                      "lib/assets/svg/fi_bell.svg"
                    )

                  ],
                ),
              ),

              buildTextFormFuild(hint: "search",onTap: (){},sufixSvgUrl: "lib/assets/svg/fi_search.svg"),

              const SizedBox(height: 20,),

              Container( 
                padding: EdgeInsets.all(10),
                height: 99,
                width: double.infinity,
                decoration: BoxDecoration( 
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                     
                     AppShadow.getShadow1()
                  ]
                ),

                child: Row( 
                  children: [ 
                    Column( 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ 

                        Text(
                          "In Love With Pets?",
                          style: AppFonts.h3SemiBolod(Colors.black),

                          
                        ),

                        Text(
                          "Get all what you need for them?",
                          style: AppFonts.h3Medium(AppColor.mainColor),
                          
                          
                        )
                      ],
                    ),

                    Container( 
                      height: 71,
                      width: 67,
                      decoration: BoxDecoration( 
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage( 
                          fit: BoxFit.cover,
                          image: AssetImage(

                            "lib/assets/img/getallneedforthem.png"
                          )
                        )
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}