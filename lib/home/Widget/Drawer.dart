
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import 'package:project/home/HomeController/homeController.dart';
import 'package:project/home/Widget/app_bar_action.dart';
import 'package:project/home/Widget/continaerlist.dart';
import 'package:project/home/Widget/pading.dart';
import 'package:project/language/language_cantroller.dart';

import 'package:shimmer/shimmer.dart';

class drawer extends StatelessWidget {


//
  
  const drawer({
    Key? key,
    required TextStyle textStyle,
  })  : _textStyle = textStyle,
        super(key: key);

  final TextStyle _textStyle;

  @override
  Widget build(BuildContext context) {
    
       final   LanguageController languageController = Get.put(LanguageController());



    var format = DateFormat.yMMMMEEEEd('fa_IR');
    var dateString = format.format(DateTime.now());
    var _hijridate = HijriCalendar.now();
    var _today = _hijridate;

    const textStyle2 = TextStyle(
      fontSize: 14,
      color: Color.fromRGBO(1, 138, 194, 1),
    );
    return Drawer(
        width: 300,
        child: SingleChildScrollView(

          child: Column(
            children: [
              Container(
                height: 240,
                child: Card(
                  borderOnForeground: true,
                  shadowColor: const Color.fromRGBO(1, 138, 194, 1),
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      children: [
                        Shimmer.fromColors(
                          period: Duration(seconds: 30),
                          baseColor: Color.fromRGBO(1, 138, 194, 1),
                          highlightColor: Colors.white,
                          child: Image.asset(
                            "images/p1.png",
                          ),
                        ),
                        Container(
                          height: 30,
                          child: Shimmer.fromColors(
                            period: Duration(seconds: 3),
                            baseColor: Color.fromRGBO(1, 138, 194, 1),
                            highlightColor: Colors.black,
                            child: AnimatedTextKit(
                                repeatForever: true,
                                animatedTexts: [
                                  FadeAnimatedText(
                                    "ده افغانستان ملی رادیو تلویزیون",
                                    textStyle: textStyle2,
                                  ),
                                  FadeAnimatedText("رادیو تلویزیون ملی افغانستان",
                                      textStyle: textStyle2),
                                  FadeAnimatedText('AFG National Tv And Radio ',
                                      textStyle: textStyle2),
                                ]),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Shimmer.fromColors(
                          period: Duration(seconds: 3),
                          baseColor: Color.fromRGBO(1, 138, 194, 1),
                          highlightColor: Colors.black,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              _today.toFormat("MMMM dd yyyy") +
                                  "    " +
                                  dateString,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const contineroneline(),
              Card(
                elevation: 1,
                borderOnForeground: true,
                shadowColor: const Color.fromRGBO(1, 138, 194, 1),
                child: ListTile(
                  // list one   //
                  leading: const Padding(
                    padding: EdgeInsets.fromLTRB(9, 1, 9, 1),
                    child: FaIcon(FontAwesomeIcons.radio,
                        color: Color.fromRGBO(1, 138, 194, 1)),
                  ),
                  title: Text(
                  'listone'.tr,
                    style: _textStyle,
                  ),
                  onTap: () {
                    // To close the Drawer
                    // Navigator.pop(context);
                    // // Navigating to About Page
                    // Navigator.pushNamed(context, radiopages);
                  },
                ),
              ),
              const contineroneline(),
              Card(
                elevation: 1,
                borderOnForeground: true,
                shadowColor: const Color.fromRGBO(1, 138, 194, 1),
                child: ListTile(
                  //this is for call
                  leading: const Padding(
                    padding: EdgeInsets.fromLTRB(9, 1, 9, 1),
                    child: FaIcon(
                      // ignore: deprecated_member_use
                      FontAwesomeIcons.contactCard,
                      color: Color.fromRGBO(1, 138, 194, 1),
                    ),
                  ),
          
                  title: Text(
                    // translation(context).settings
                    'contact'.tr,
                    style: _textStyle,
                  ),
                  onTap: () {
                    // // To close the Drawer
                    // Navigator.pop(context);
                    // // Navigating to About Page
                    // Navigator.pushNamed(context, contact);
                  },
                ),
              ),
              const contineroneline(),
              Card(
                elevation: 1,
                borderOnForeground: true,
                shadowColor: const Color.fromRGBO(1, 138, 194, 1),
                child: ListTile(
                  title: Text(
                    'youtubecomb'.tr,
                    style: _textStyle,
                  ),
                  leading: PopupMenuButton(
                    elevation: 2,
                    icon: const FaIcon(
                      FontAwesomeIcons.youtube,
                      color: Colors.red,
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Card(
                          elevation: 1,
                          borderOnForeground: true,
                          shadowColor: const Color.fromARGB(255, 224, 238, 250),
                          child: ElevatedButton(
                              onPressed: () 
                              {
                                
                                // if (languageController.locale.value == "ps-AF") {
                                //   Navigator.pop(context);
                                //   Navigator.pushNamed(context, werbview,
                                //       arguments: {
                                //         'url':
                                //             'https://www.youtube.com/@rtapashto',
                                //         'title':
                                //            'youtubechenal'.tr,
                                //       });
                                // } else if (translation(context).state ==
                                //     "pashto") {
                                //   Navigator.pop(context);
                                //   Navigator.pushNamed(context, werbview,
                                //       arguments: {
                                //         'url': 'https://www.youtube.com/@RTADari',
                                //         'title':
                                //             translation(context).youtubechenal,
                                //       });
                                // } else {
                                //   Navigator.pop(context);
                                //   Navigator.pushNamed(context, werbview,
                                //       arguments: {
                                //         'url':
                                //             'https://www.youtube.com/@rtapashto',
                                //         'title':
                                //             translation(context).youtubechenal,
                                //       });
                                // }
                              },
                              child: Image.asset("images/yt1.png")),
                        ),
                      ),
                      PopupMenuItem(
                        child: Card(
                          elevation: 1,
                          borderOnForeground: true,
                          shadowColor: const Color.fromARGB(255, 224, 238, 250),
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.pop(context);
                              // Navigator.pushNamed(context, werbview, arguments: {
                              //   'url': 'https://www.youtube.com/@rtauzbek',
                              //   'title': "چینل ازبکی تلویزیون ملی ",
                              // });
                            },
                            child: Image.asset("images/yt2.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //this is for call
                ),
              ),
               contineroneline(),
              Card(
                elevation: 1,
                borderOnForeground: true,
                shadowColor: const Color.fromRGBO(1, 138, 194, 1),
                child: ListTile(
                  leading: const Padding(
                    padding: EdgeInsets.fromLTRB(12, 1, 12, 1),
                    child: Icon(Icons.info_outline,
                        color: Color.fromRGBO(1, 138, 194, 1)),
                  ),
                  title: Text(
                    'aboutUs'.tr,
                    style: _textStyle,
                  ),
                  onTap: () {
                    // To close the Drawer
                    // Navigator.pop(context);
                    // // Navigating to About Page
                    // Navigator.pushNamed(context, aboutRoute);
                  },
                ),
              ),
          
          
          
              Padding(
                padding: const EdgeInsets.only(top: 290),
                child: Card(
                  elevation: 0,
                  borderOnForeground: false,
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {
                          // if (languageController.locale.value == "pashto") {
                          //   Navigator.pop(context);
                          //   Navigator.pushNamed(context, werbview, arguments: {
                          //     'url': 'https://twitter.com/rtapashto',
                          //     'title': translation(context).twittername,
                          //   });
                          // } else if (translation(context).state == "pashto") {
                          //   Navigator.pop(context);
                          //   Navigator.pushNamed(context, werbview, arguments: {
                          //     'url': 'https://twitter.com/rtadari',
                          //     'title': translation(context).twittername,
                          //   });
                          // } else {
                          //   Navigator.pop(context);
                          //   Navigator.pushNamed(context, werbview, arguments: {
                          //     'url': 'https://twitter.com/rtadari',
                          //     'title': translation(context).twittername,
                          //   });
                          // }
                        },
                        child: const FaIcon(
                          FontAwesomeIcons.x,
                          color: Colors.black45,
                        ),
                      ),
                      const padingline(),
                      TextButton(
                        onPressed: () {
                          // if (translation(context).state == "pashto") {
                          //   Navigator.pop(context);
                          //   Navigator.pushNamed(context, werbview, arguments: {
                          //     'url': 'https://t.me/rtapashto1',
                          //     'title': translation(context).telegramname,
                          //   });
                          // } else if (translation(context).state == "dari") {
                          //   Navigator.pop(context);
                          //   Navigator.pushNamed(context, werbview, arguments: {
                          //     'url': 'https://t.me/rtadari1',
                          //     'title': translation(context).telegramname,
                          //   });
                          // } else {
                          //   Navigator.pop(context);
                          //   Navigator.pushNamed(context, werbview, arguments: {
                          //     'url': 'https://t.me/rtapashto1',
                          //     'title': translation(context).telegramname,
                          //   });
                          // }
                        },
                        child: const FaIcon(FontAwesomeIcons.telegram,
                            color: Color.fromRGBO(1, 138, 194, 1)),
                      ),
                      const padingline(),
                      TextButton(
                        onPressed: () {
                          // if (translation(context).state == "pashto") {
                          //   Navigator.pop(context);
                          //   Navigator.pushNamed(context, werbview, arguments: {
                          //     'url': 'https://rta.af/',
                          //     'title': translation(context).webpage,
                          //   });
                          // } else if (translation(context).state == "dari") {
                          //   Navigator.pop(context);
                          //   Navigator.pushNamed(context, werbview, arguments: {
                          //     'url': 'https://rta.af/fa/',
                          //     'title': translation(context).webpage,
                          //   });
                          // } else {
                          //   Navigator.pop(context);
                          //   Navigator.pushNamed(context, werbview, arguments: {
                          //     'url': 'https://rta.af/',
                          //     'title': translation(context).webpage,
                          //   });
                          // }
                        },
                        child: const Icon(Icons.language,
                            color: Color.fromRGBO(5, 83, 147, 1),),
                      ),
                    ],
                  ),
                ),
              ),
           buildLanguageDropdown(),
            ],
          ),
        ),
        );
  
  
  }
}


