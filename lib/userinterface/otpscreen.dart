import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 16, top: 16),
            height: MediaQuery.of(context).size.height * 0.05,
            width: double.infinity,
            child: Text(
              'Enter the 4-digit code sent to',
              style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 0.3,
                  fontFamily: 'GilroySemibold'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            height: MediaQuery.of(context).size.height * 0.05,
            width: double.infinity,
            child: Text(
              '+994556944817',
              style: TextStyle(
                  fontFamily: 'GilroySemibold',
                  fontSize: 24,
                  letterSpacing: 0.3,
                  color: Color(0xFF007AFF)),
            ),
          ),
          Expanded(flex: 1, child: Container()),
          Container(
            //  alignment: Alignment.topCenter,
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: <Widget>[
                new Flexible(
                  // flex: 1,
                  child: Focus(
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          letterSpacing: 0.3,
                          fontFamily: 'GilroySemiBold'),
                      decoration: new InputDecoration(
                          //   hintText: 'x',

                          enabledBorder: new UnderlineInputBorder(
                              borderSide:
                                  new BorderSide(color: Color(0xFFF3F3F3)))),
                      keyboardType: TextInputType.number,
                      autofocus: true,

                      // onTap: () => ,
                    ),
                    onFocusChange: (hasFocus) {
                      isTextFiledFocus = hasFocus;
                    },
                  ),
                ),
                new Flexible(
                  flex: 1,
                  child: Container(),
                ),
                new Flexible(
                  // flex: 1,
                  child: Focus(
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          letterSpacing: 0.3,
                          fontFamily: 'GilroySemiBold'),
                      decoration: new InputDecoration(
                        //     hintText: 'x',
                        // border: InputBorder.none,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      autofocus: true,

                      // onTap: () => ,
                    ),
                    onFocusChange: (hasFocus) {
                      isTextFiledFocus = hasFocus;
                    },
                  ),
                ),
                new Flexible(
                  flex: 1,
                  child: Container(),
                ),
                new Flexible(
                  //  flex: 1,
                  child: Focus(
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          letterSpacing: 0.3,
                          fontFamily: 'GilroySemiBold'),
                      decoration: new InputDecoration(
                        //      hintText: 'x',
                        // border: InputBorder.none,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      autofocus: true,

                      // onTap: () => ,
                    ),
                    onFocusChange: (hasFocus) {
                      isTextFiledFocus = hasFocus;
                    },
                  ),
                ),
                new Flexible(
                  flex: 1,
                  child: Container(),
                ),
                new Flexible(
                  //  flex: 1,
                  child: Focus(
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          letterSpacing: 0.3,
                          fontFamily: 'GilroySemiBold'),
                      decoration: new InputDecoration(
                        //      hintText: 'x',
                        // border: InputBorder.none,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFF3F3F3)),
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      autofocus: true,

                      // onTap: () => ,
                    ),
                    onFocusChange: (hasFocus) {
                      isTextFiledFocus = hasFocus;
                    },
                  ),
                ),
              ],
            ),
          ),
          /*    Container(
            padding: EdgeInsets.only(top: 15, left: 16),
            child: Text(
              'The SMS passcode you have entered is incorrect                                             ',
              style: TextStyle(
                  letterSpacing: 0.1, fontSize: 12, color: Color(0xFFFF3B30)),
            ),
          ),*/
          Expanded(flex: 1, child: Container()),
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: FlatButton(
                onPressed: null,
                child: Text(
                  'Resend code in  0:20',
                  style: TextStyle(
                      fontSize: 13,
                      letterSpacing: 0.1,
                      fontFamily: 'GilroyMedium',
                      // color: Color(0xFFF3F3F3)
                      color: Colors.grey),
                )),
          )
        ],
      ),
    );
  }
}
