import 'package:elyx/userinterface/entername.dart';
import 'package:elyx/userinterface/otpscreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:elyx/userinterface/login.dart';

//import './userinterface/otpscreen.dart';

class Phone extends StatelessWidget {
  @override
  bool isTextFiledFocus = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Elyx AppBar'),

        bottomOpacity: 0.0,
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Container(
            padding: EdgeInsets.only(right: 380),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              /*SvgPicture.asset(
                'assets/images/Arrowleft.svg',
                color: Colors.blue,
                height: 13,
                width: 18,
              ),*/

              onPressed: () => Navigator.of(context).pop(),
            )),
      ),
      body: Container(
        color: Colors.white,
        //padding: EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              height: MediaQuery.of(context).size.height * 0.043,
              width: double.infinity,
              child: Text(
                'Enter your phone number',
                style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 0.3,
                    fontFamily: 'GilroySemiBold'),
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16 /*, top: 6*/),
              height: MediaQuery.of(context).size.height * 0.025,
              width: double.infinity,
              child: Text(
                'You will receive an SMS to confirm your phone number',
                style: TextStyle(
                    fontSize: 13,
                    letterSpacing: 0.1,
                    fontFamily: 'GilroyMedium',
                    color: Color.fromARGB(125, 60, 60, 67)),
              ),
            ),
            Expanded(flex: 5, child: Container()),
            Row(
              children: <Widget>[
                Container(
                  // padding: EdgeInsets.only(right: 50),
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: FlatButton(
                      onPressed: () => {
                            showModalBottomSheet(
                                /*backgroundColor: Color.fromRGBO(
                                                    0, 122, 255, 0.66),*/
                                backgroundColor: Colors.transparent,
                                elevation: 2.0,
                                context: context,
                                builder: (context) {
                                  return Container(
                                      //  height: 850,
                                      // color: Colors.transparent,
                                      height:
                                          MediaQuery.of(context).size.height,
                                      child: Container(
                                        padding: EdgeInsets.only(top: 30),
                                        decoration: BoxDecoration(
                                            color: Colors.white54,
                                            borderRadius: BorderRadius.only(
                                              topLeft:
                                                  const Radius.circular(14),
                                              topRight:
                                                  const Radius.circular(14),
                                            )),
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                              ),
                                              child: ListTile(
                                                  leading: Container(
                                                      width: 18,
                                                      height: 18,
                                                      child:
                                                          Icon(Icons.search))),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(1),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          14)),
                                              child: ListTile(
                                                leading: Container(
                                                  width: 27,
                                                  height: 30,
                                                  child: Image.network(
                                                      'https://wallpaper.hinaji.com/wp-content/uploads/2017/07/Azerbaijan-Flag-Real-Official-Photos.jpg'),
                                                ),
                                                title: Text('Azerbaijan'),
                                                trailing: Icon(Icons.check,
                                                    color: Color(0xFF007AFF)),
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.all(2),
                                            ),
                                            Expanded(
                                                child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft: const Radius
                                                              .circular(14.0),
                                                          topRight: const Radius
                                                              .circular(14.0))),
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
                          )
                          //)
                        ],
                      )),
                ),
                new Flexible(
                  child: Focus(
                    child: TextFormField(
                      style: TextStyle(
                          fontFamily: 'GilroyMedium',
                          fontSize: 20,
                          letterSpacing: 0.3,
                          color: Colors.grey),
                      autofocus: false,

                      keyboardType: TextInputType.phone,
                      decoration: new InputDecoration(
                        hintText: ('30 123 45 67'),
                        border: InputBorder.none,
                      ),
                      // onTap: () => ,
                    ),
                    onFocusChange: (hasFocus) {
                      isTextFiledFocus = hasFocus;
                    },
                  ),
                ),

                /*  FlatButton(
                    onPressed: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Phone()))
                        },
                    child: Row(
                      children: <Widget>[
                        Text(
                          '55 555 55 55',
                          textAlign: TextAlign.left,
                        )
                      ],
                    )),*/
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(left: 16, right: 16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
              child: Divider(
                color: Color(0xFFF3F3F3),
                //color: Color(0xFF007AFF),
                thickness: 2,
              ),
            ),
            /* Container(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Enter a valid phone number.                                                     ',
                style: TextStyle(
                  letterSpacing: 0.1,
                  color: Color(0xFFFF3B30),
                ),
                textAlign: TextAlign.left,
              ),
            ),*/
            Container(
                padding: EdgeInsets.only(left: 16, top: 5),
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              "By tapping “Next”, You confirm that you agree to Elyx’s\n",
                          style: TextStyle(
                            fontFamily: 'GilroyMedium',
                            fontSize: 11,
                            letterSpacing: 0.1,
                            color: Colors.grey,
                          )),
                      TextSpan(
                          text: 'Terms of Service',
                          style: TextStyle(
                              fontFamily: 'GilroyMedium',
                              fontSize: 11,
                              letterSpacing: 0.1,
                              color: Colors.blue,
                              height: 2),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Service"');
                            }),
                      TextSpan(
                          text: ' and ',
                          style: TextStyle(
                              fontFamily: 'GilroyMedium',
                              fontSize: 11,
                              letterSpacing: 0.1,
                              color: Colors.grey)),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              fontFamily: 'GilroyMedium',
                              fontSize: 11,
                              letterSpacing: 0.1,
                              color: Colors.blue,
                              height: 2),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Privacy Policy"');
                            }),
                    ],
                  ),
                )),
            Expanded(flex: 6, child: Container()),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16 /*, bottom: 16*/),
              width: MediaQuery.of(context).size.width * 0.93,
              height: MediaQuery.of(context).size.height * 0.072,
              //    alignment: Alignment.centerLeft,
              //width: double.infinity,
              child: ButtonTheme(
                // height: 80,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14.0),
                  ),
                  // color: Color(0xFFF3F3F3),
                  //  color: Color(0xFF007AFF),
                  // color: Color(0xFFFF3B30),
                  //   color: Color(0xFF00BC00),
                  color:
                      isTextFiledFocus ? Color(0xFF007AFF) : Color(0xFFF3F3F3),

                  //color: Colors.blue,
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OtpScreen()))
                  },
                  child: isTextFiledFocus
                      ? const Text(
                          'Next',
                          style: TextStyle(
                            //color: Color.fromRGBO(60, 60, 67, 0.2),
                            color: Colors.white,
                            fontFamily: 'GilroySemibold',
                            fontSize: 20,
                            letterSpacing: 0.3,
                          ),
                          textAlign: TextAlign.center,
                        )
                      : const Text(
                          'Next',
                          style: TextStyle(
                            color: Color.fromRGBO(60, 60, 67, 0.2),
                            //color: Colors.white,
                            //  color: rgba(60, 60, 67, 0.2)
                            fontFamily: 'GilroySemibold',
                            fontSize: 20,
                            letterSpacing: 0.3,
                          ),
                          textAlign: TextAlign.center,
                        ),
                  /*  new SvgPicture.asset(
                      'assets/images/Checkmark.svg',
                      color: Colors.white,
                      height: 20,
                      width: 28,
                    )*/
                  /*Icon(
                    Icons.check,
                    color: Colors.white,
                  )*/
                ),
              ),
            ),
            Expanded(flex: 1, child: Container())
          ],
        ),
      ),
    );
  }
}
