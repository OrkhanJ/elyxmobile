import 'package:flutter/material.dart';
//import './userinterface/otpscreen.dart';

class EnterName extends StatelessWidget {
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
              onPressed: () {
                print('clicked');
              }),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, top: 16),
              height: MediaQuery.of(context).size.height * 0.043,
              width: MediaQuery.of(context).size.width * 0.54,
              child: Text(
                'What is your name?                                                                        ',
                style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 0.3,
                    fontFamily: 'GilroySemiBold'),
              ),
            ),
            Expanded(flex: 12, child: Container()),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: new Flexible(
                child: Focus(
                  child: TextFormField(
                    decoration: new InputDecoration(
                      hintText: 'Enter your name',
                      hintStyle: TextStyle(
                          fontFamily: 'GilroyMedium',
                          fontSize: 20,
                          letterSpacing: 0.3),

                      //   border: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                      ),
                    ),
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    // onTap: () => ,
                  ),
                  onFocusChange: (hasFocus) {
                    isTextFiledFocus = hasFocus;
                  },
                ),
              ),
            ),
            Expanded(flex: 12, child: Container()),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              //    alignment: Alignment.centerLeft,
              width: double.infinity,
              height: 80,
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
                        MaterialPageRoute(builder: (context) => EnterName()))
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
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ),
      ),
    );
  }
}
