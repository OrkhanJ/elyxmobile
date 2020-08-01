//import 'dart:js';

import 'dart:ffi';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:elyx/registration.dart';
import 'package:elyx/userinterface/phone.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'dart:ui';
import 'package:elyx/userinterface/otpscreen.dart';
import 'package:elyx/userinterface/entername.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
      ),
      bottomSheet: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: double.infinity,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
        ),
        child: Column(),
        //  child: Text('Hello World'),
      ),
    );
  }
} */
/*Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            height: MediaQuery.of(context).size.height * 0.7,
            color: Colors.grey),
        Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: Colors.blue)
      ],
    );
  }*/

class Login extends StatelessWidget {
  //@override
  TextEditingController controller = new TextEditingController();
  Column buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            //  height: 64,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              /*boxShadow: [
                new BoxShadow(
                    color: Colors.grey,
                    offset: new Offset(20.0, 10.0),
                    //blurRadius: 20.0,
                    spreadRadius: 100.0)
              ]*/
            ),
            child: ListTile(
              leading: Icon(Icons.search, color: Colors.blue),
              title: new TextField(
                controller: controller,
                decoration: new InputDecoration(
                    hintText: 'Search for a country', border: InputBorder.none),
              ),
              trailing: new IconButton(
                  icon: new Icon(Icons.cancel),
                  onPressed: () {
                    controller.clear();
                  }),
            ),
          ),
        ),
        // Expanded(flex: 1, child: Container(color: Colors.white38)),
        Expanded(
          flex: 1,
          child: Container(
            //  height: 64,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: ListTile(
              leading: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 18, maxWidth: 27),
                child: Image.network(
                    'https://wallpaper.hinaji.com/wp-content/uploads/2017/07/Azerbaijan-Flag-Real-Official-Photos.jpg'),
              ),
              title: Text(
                'Azerbaijan',
              ),
              trailing: Icon(
                Icons.check,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        //   Expanded(flex: 2, child: Container(color: Colors.white)),
        Expanded(
          flex: 2,
          child: Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: ListView(
              children: ListTile.divideTiles(tiles: [
                ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('text1'),
                ),
                ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Text('text2'),
                )
              ]).toList(),
            ),
            /* child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.ac_unit),
                      title: Text('text1'),
                    ),
                    ListTile(
                      leading: Icon(Icons.ac_unit),
                      title: Text('text2'),
                    )
                  ],
                ),
              )*/
          ),
        )
      ],
    );
  }

  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return Material(
        color: Color.fromRGBO(0, 122, 255, 0.66),
        //type: MaterialType.transparency,
        child: Container(
          //color: Color.fromRGBO(0, 122, 255, 0.66),
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: CarouselSlider(
                          items: <Widget>[
                            BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 2.4, sigmaY: 2.4),
                                child: Image.asset(
                                  'assets/images/RiderWoman.png',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 2.4, sigmaY: 2.4),
                                child: Image.asset(
                                  'assets/images/RiderMan.png',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                            BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 2.4, sigmaY: 2.4),
                                child: Image.asset(
                                  'assets/images/RiderDriver.png',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                )),
                          ],
                          options: CarouselOptions(
                            enlargeCenterPage: true,
                            height: double.infinity,
                            enlargeStrategy: CenterPageEnlargeStrategy.scale,
                            autoPlay: true,
                            // aspectRatio: 16 / 9,
                            enableInfiniteScroll: true,
                            autoPlayCurve: Curves.ease,
                            autoPlayAnimationDuration:
                                Duration(milliseconds: 800),
                            viewportFraction: 1,
                          )),
                    ),
                    Positioned.fill(
                        child: Container(
                      color: Color.fromRGBO(0, 122, 255, 0.66),
                    )),
                    Positioned.fill(
                        child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              // width: 236,
                              //height: 24,
                              // alignment: Alignment.center,
                              // alignment: Align(237, 297),
                              //margin: EdgeInsets.only(top: 297),
                              //padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                              child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: new SvgPicture.asset(
                                    'assets/images/Logo.svg',
                                  )))
                        ],
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(14.0),
                        topRight: const Radius.circular(14.0))),

                // alignment: Alignment.topLeft,
                // padding: EdgeInsets.only(left: 16, top: 12, bottom: 16),
                //width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    /* Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.grey,
                        )),*/
                    Container(
                      padding: const EdgeInsets.only(left: 16 /*, top: 12*/),
                      height: MediaQuery.of(context).size.height * 0.062,
                      width: MediaQuery.of(context).size.width * 0.394,
                      alignment: Alignment.bottomLeft,

                      //   height: 54,
                      // alignment: Alignment.topLeft,
                      child: Text(
                        "Let's go!",
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            //    height: 24,
                            fontFamily: 'GilroySemiBold',
                            letterSpacing: 0.3,
                            fontSize: 34,
                            // height: 54,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16 /*, top: 6*/),
                      height: MediaQuery.of(context).size.height * 0.042,
                      width: MediaQuery.of(context).size.width * 0.69,
                      //alignment: Alignment.bottomLeft,
                      child: Text(
                        'Enter your phone number',
                        textAlign: TextAlign.left,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontFamily: 'GilroyMedium',
                          letterSpacing: 0.3,
                          color: Colors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          // padding: EdgeInsets.only(right: 50),
                          height: MediaQuery.of(context).size.height * 0.07,
                          // width: MediaQuery.of(context).size.width * 0.67,
                          alignment: Alignment.centerLeft,
                          child: FlatButton(
                              padding: EdgeInsets.only(
                                left: 16, /*top: 18*/
                              ),
                              onPressed: () => {
                                    showModalBottomSheet(
                                        /*backgroundColor: Color.fromRGBO(
                                                    0, 122, 255, 0.66),*/
                                        backgroundColor: Colors.transparent,
                                        elevation: 2.0,
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                              // height: 850,
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              // color: Colors.transparent,
                                              // padding: EdgeInsets.only(top: 56),
                                              child: Container(
                                                padding:
                                                    EdgeInsets.only(top: 30),
                                                decoration: BoxDecoration(
                                                    color: Colors.white54,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          const Radius.circular(
                                                              14),
                                                      topRight:
                                                          const Radius.circular(
                                                              14),
                                                    )),
                                                child: Column(
                                                  children: <Widget>[
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14),
                                                      ),
                                                      child: ListTile(
                                                          leading: Container(
                                                              width: 18,
                                                              height: 18,
                                                              child: Icon(Icons
                                                                  .search))),
                                                    ),
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(1),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14)),
                                                      child: ListTile(
                                                        leading: Container(
                                                          width: 27,
                                                          height: 30,
                                                          child: Image.network(
                                                              'https://wallpaper.hinaji.com/wp-content/uploads/2017/07/Azerbaijan-Flag-Real-Official-Photos.jpg'),
                                                        ),
                                                        title:
                                                            Text('Azerbaijan'),
                                                        trailing: Icon(
                                                            Icons.check,
                                                            color: Color(
                                                                0xFF007AFF)),
                                                      ),
                                                    ),
                                                    Container(
                                                      padding:
                                                          EdgeInsets.all(2),
                                                    ),
                                                    Expanded(
                                                        child: Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.only(
                                                              topLeft: const Radius
                                                                      .circular(
                                                                  14.0),
                                                              topRight: const Radius
                                                                      .circular(
                                                                  14.0))),
                                                      child: ListTile(),
                                                    ))
                                                  ],
                                                ),
                                              ));
                                        },
                                        isScrollControlled: true)
                                  },
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(right: 6),
                                    child: Text(
                                      '+994',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 20,
                                          letterSpacing: 0.3,
                                          fontFamily: 'GilroyMedium'),
                                    ),
                                  ),
                                  // Icon(//Icons.keyboard_arrow_down

                                  SvgPicture.asset(
                                    'assets/images/ChevronDown.svg',
                                    color: Colors.black,
                                    height: 7,
                                    width: 12,
                                  ),

                                  //)
                                ],
                              )),
                        ),
                        /* Container(
                          height: MediaQuery.of(context).size.height * 0.07,
                          //width: MediaQuery.of(context).size.width * 0.27,
                          child: */
                        new Flexible(
                          //   child: Focus(
                          child: TextFormField(
                            style: TextStyle(
                                fontFamily: 'GilroyMedium',
                                fontSize: 20,
                                letterSpacing: 0.3,
                                color: Colors.grey),
                            autofocus: false,
                            readOnly: true,
                            //  onEditingComplete: ,
                            decoration: new InputDecoration(
                              hintText: ('30 123 45 67'),
                              border: InputBorder.none,
                            ),
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Phone())),
                          ),
                          /*onFocusChange: (hasFocus) {
                              if (hasFocus) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Phone()));
                              }
                              /*else {
                                //Navigator.pop(context);

                                FocusScope.of(context).unfocus();
                              }*/
                            },
                          ),*/

                          // ),
                          /*FlatButton(
                              padding: EdgeInsets.only(/*top: 18, */ left: 6),
                              /* onPressed: () => {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Phone()))
                                          },*/
                              onPressed: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Phone()))
                                  },
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '30 123 45 67',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 20,
                                        letterSpacing: 0.3,
                                        fontFamily: 'GilroyMedium',
                                        color: Colors.grey[400]),
                                  )
                                ],
                              )),*/
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          /*top: 6, */ left: 16,
                          right: 16),
                      child: Divider(
                        color: Color(
                            0xFFF3F3F3), //Color(0xFF007AFF),  Colors.grey[200],
                        thickness: 2,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      //  padding: EdgeInsets.only(left: 16, bottom: 16),
                      //color: Colors.black,
                      height: MediaQuery.of(context).size.height * 0.025,
                      width: MediaQuery.of(context).size.width * 0.43,
                      child: FlatButton(
                          padding: EdgeInsets.only(left: 16, bottom: 10),
                          onPressed: () => showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.3,
                                  // height: MediaQuery.of(context).size.height,
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(14.0),
                                          topRight:
                                              const Radius.circular(14.0))),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 16 /*, top: 12*/),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.062,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.394,
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          "Connect with social accounts",
                                          textAlign: TextAlign.left,
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                              //    height: 24,
                                              fontFamily: 'GilroyMedium',
                                              letterSpacing: 0.3,
                                              fontSize: 20,
                                              // height: 54,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        padding: const EdgeInsets.only(
                                            left: 16 /*, top: 6*/),
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.022,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.69,
                                        child: Text(
                                          'Choose your account',
                                          textAlign: TextAlign.left,
                                          textDirection: TextDirection.ltr,
                                          style: TextStyle(
                                              fontFamily: 'GilroyMedium',
                                              fontSize: 15,
                                              letterSpacing: 0.1,
                                              color: Colors.grey),
                                        ),
                                      ),
                                      Expanded(flex: 1, child: Container()),
                                      Container(
                                        /*padding: EdgeInsets.only(
                                            left: 16, right: 16),*/
                                        child: Column(
                                          children: <Widget>[
                                            ListTile(
                                              contentPadding: EdgeInsets.only(
                                                  right: 16, left: 16),
                                              leading: SvgPicture.asset(
                                                  'assets/images/Facebook.svg',
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.027,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.058),
                                              title: Text(
                                                'Facebook',
                                                style: TextStyle(
                                                    fontFamily: 'GilroyMedium',
                                                    fontSize: 15,
                                                    letterSpacing: 0.1),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xFFCCCCCC),
                                                size: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.04,
                                              ),
                                            ),
                                            Divider(
                                              color: Color(
                                                  0xFFF3F3F3), //Color(0xFF007AFF),  Colors.grey[200],
                                              thickness: 2,
                                            ),
                                            ListTile(
                                              contentPadding: EdgeInsets.only(
                                                  right: 16, left: 16),
                                              leading: SvgPicture.asset(
                                                  'assets/images/Google.svg',
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.027,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.058),
                                              title: Text(
                                                'Google',
                                                style: TextStyle(
                                                    fontFamily: 'GilroyMedium',
                                                    fontSize: 15,
                                                    letterSpacing: 0.1),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Color(0xFFCCCCCC),
                                                size: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.04,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(flex: 2, child: Container()),
                                    ],
                                  ),
                                );
                              }),
                          child: Text(
                            'Connect with social accounts',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 13,
                                letterSpacing: 0.1,
                                fontFamily: 'GilroyMedium',
                                color: Color(4278221567)),
                          )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
