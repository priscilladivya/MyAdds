import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/images.dart';
import 'package:myads_app/Constants/strings.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/DashBoard.dart';
import 'package:myads_app/UI/RewardScreen.dart';
import 'package:myads_app/UI/Survey2.dart';
import 'package:myads_app/UI/SurveyScreen.dart';
import 'package:myads_app/UI/videoPlayer.dart';
import 'package:myads_app/UI/webview.dart';
import 'package:myads_app/sample.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'BarChart.dart';
import 'CheckMyCoupons.dart';
import 'SettingScreen.dart';

class WatchPortrait extends StatefulWidget {
  @override
  _WatchPortraitState createState() => _WatchPortraitState();
}

class _WatchPortraitState extends State<WatchPortrait> {
  @override
  Widget build(BuildContext context) {
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
            _DividerPopMenu()
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultPlayer(),
            Padding(
              padding: const EdgeInsets.only(left:50.0,right: 50.0, top:30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => new WebViewScreen(url: "https://www.google.com/",title: "Google",)));
                        },
                      child: Image.asset(MyImages.group2)),
                  Image.asset(MyImages.group1),
                  Image.asset(MyImages.group3),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => new SurveyScreen()));

                      },
                      child: Image.asset(MyImages.group4)),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:130.0, top: 10.0),
                        child: Row(
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: '0',
                                  style: MyStyles.robotoMedium60.copyWith(
                                      letterSpacing: 1.0,
                                      color: MyColors.white,
                                      fontWeight: FontWeight.w100),
                                  children: [
                                    TextSpan(
                                      text: 'hr',
                                      style: MyStyles.robotoMedium14.copyWith(
                                          letterSpacing: 1.0,
                                          color: MyColors.white,
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ]),
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: '12',
                                  style: MyStyles.robotoMedium60.copyWith(
                                      letterSpacing: 1.0,
                                      color: MyColors.white,
                                      fontWeight: FontWeight.w100),
                                  children: [
                                    TextSpan(
                                      text: 'mins',
                                      style: MyStyles.robotoMedium14.copyWith(
                                          letterSpacing: 1.0,
                                          color: MyColors.white,
                                          fontWeight: FontWeight.w100),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:18.0),
                        child: Center(
                          child: Text(MyStrings.minutesThis,
                            style: MyStyles.robotoMedium12.copyWith(
                                letterSpacing: 1.0,
                                color: MyColors.white,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  color: MyColors.lightBlueShade,
                ),

                Center(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:130.0, top: 10.0),
                          child: Row(
                            children: [
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: '0',
                                    style: MyStyles.robotoMedium60.copyWith(
                                        letterSpacing: 1.0,
                                        color: MyColors.white,
                                        fontWeight: FontWeight.w100),
                                    children: [
                                      TextSpan(
                                        text: 'hr',
                                        style: MyStyles.robotoMedium14.copyWith(
                                            letterSpacing: 1.0,
                                            color: MyColors.white,
                                            fontWeight: FontWeight.w100),
                                      ),
                                    ]),
                              ),
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: '12',
                                    style: MyStyles.robotoMedium60.copyWith(
                                        letterSpacing: 1.0,
                                        color: MyColors.white,
                                        fontWeight: FontWeight.w100),
                                    children: [
                                      TextSpan(
                                        text: 'mins',
                                        style: MyStyles.robotoMedium14.copyWith(
                                            letterSpacing: 1.0,
                                            color: MyColors.white,
                                            fontWeight: FontWeight.w100),
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Center(
                            child: Text(MyStrings.yetToWatch,
                              style: MyStyles.robotoMedium12.copyWith(
                                  letterSpacing: 1.0,
                                  color: MyColors.white,
                                  fontWeight: FontWeight.w100),
                            ),
                          ),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 100.0,
                    color: MyColors.accentsColors,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new DashBoardScreen()));
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoardScreen()));
                },
                child: _submitButton(MyStrings.enoughForNow),),
          ],
        ),
      )
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

Widget _submitButton(String buttonName) {
  return Container(
    width: 220.0,
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

