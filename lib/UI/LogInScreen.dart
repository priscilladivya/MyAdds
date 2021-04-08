import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/dimens.dart';
import 'package:myads_app/Constants/images.dart';
import 'package:myads_app/Constants/strings.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/DashBoard.dart';

import 'BarChart.dart';
import 'CheckMyCoupons.dart';
import 'SettingScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.colorLight,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(''),
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: Image.asset(MyImages.appBarLogo),
            ),
           _DividerPopMenu(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Center(
                  child: Text(MyStrings.letSGetThis,
                    style: MyStyles.robotoMedium22.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Center(
                child: Text(MyStrings.theRoad,
                  style: MyStyles.robotoMedium22.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                ),
              ),
              SizedBox(height:40.0,),
              _entryField(MyStrings.loginName),
              _entryField(MyStrings.password,isPassword: true),
              SizedBox(height:30.0,),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new DashBoardScreen()));
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => DashBoardScreen()));
                  },
                  child: _submitButton(MyStrings.logIn)),
              SizedBox(height:media.size.height/4),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(MyStrings.didYouForgot,
                  style: MyStyles.robotoLight12.copyWith(letterSpacing: 1.0, color: MyColors.lightGray, fontWeight: FontWeight.w100,),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

Widget _DividerPopMenu() {
  return new PopupMenuButton<String>(
      offset: const Offset(-40, 600),
      color: MyColors.blueShade,
      icon: const Icon(
        Icons.menu,
        color: MyColors.accentsColors,
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        new PopupMenuItem<String>(
            value: 'value01',
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dashboard                  ',
                  style: MyStyles.robotoMedium16.copyWith(
                      letterSpacing: 1.0,
                      color: MyColors.lightGray,
                      fontWeight: FontWeight.w100),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColors.darkGray,
                )
              ],
            )),
        new PopupMenuDivider(height: 3.0),
        new PopupMenuItem<String>(
            value: 'value02',
            child: InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new SettingScreen()));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => SettingScreen()));
                },
                child: new Text(
                  'Settings',
                  style: MyStyles.robotoMedium16.copyWith(
                      letterSpacing: 1.0,
                      color: MyColors.black,
                      fontWeight: FontWeight.w100),
                ))),
        new PopupMenuDivider(height: 3.0),
        new PopupMenuItem<String>(
            value: 'value03',
            child: InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new MyCouponScreen()));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => MyCouponScreen()));
                },
                child: new Text(
                  'Gift Card',
                  style: MyStyles.robotoMedium16.copyWith(
                      letterSpacing: 1.0,
                      color: MyColors.black,
                      fontWeight: FontWeight.w100),
                ))),
        new PopupMenuDivider(height: 3.0),
        new PopupMenuItem<String>(
            value: 'value04',
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new ChartsDemo()));
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => ChartsDemo()));
              },
              child: new Text(
                'Graphs',
                style: MyStyles.robotoMedium16.copyWith(
                    letterSpacing: 1.0,
                    color: MyColors.black,
                    fontWeight: FontWeight.w100),
              ),
            ))
      ],
      onSelected: (String value) {
        // setState(() { _bodyStr = value; });
      });
}
Widget _entryField(String title, {bool isPassword = false}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: MyStyles.robotoMedium16.copyWith(letterSpacing: Dimens.letterSpacing_14, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50.0,
            width: 300.0,
            child: TextField(
              obscureText: isPassword,
              decoration: InputDecoration(
                fillColor: MyColors.colorLight,
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.red,
                      width: 5.0),
                  // fillColor: Color(0xfff3f3f4),
                  // filled: true
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ]
    ),
  );
}

Widget _submitButton(String buttonName) {
  return Container(
    width: 180.0,
    height: 45.0,
    padding: EdgeInsets.symmetric(vertical: 13),
    alignment: Alignment.center,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.blueAccent.withAlpha(100),
              offset: Offset(2, 4),
              blurRadius: 8,
              spreadRadius: 1)
        ],
        color: MyColors.primaryColor),
    child: Text(
      buttonName,
      style: MyStyles.robotoMedium14.copyWith(letterSpacing: 3.0, color: MyColors.white, fontWeight: FontWeight.w500),

    ),
  );
}