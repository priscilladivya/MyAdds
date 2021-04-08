import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/images.dart';
import 'package:myads_app/Constants/strings.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/RewardScreen.dart';
import 'package:myads_app/UI/SettingScreen.dart';
import 'package:myads_app/UI/videoPlayer.dart';
import 'package:myads_app/UI/watchPortraitScreen.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'BarChart.dart';
import 'CheckMyCoupons.dart';

class DashBoardScreen extends StatefulWidget {
  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text(
                  MyStrings.yourDashBoard,
                  style: MyStyles.robotoMedium28.copyWith(
                      letterSpacing: 1.0,
                      color: MyColors.accentsColors,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0,bottom: 10.0),
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width/3,
                    color: MyColors.accentsColors,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('67',style: MyStyles.robotoLight60.copyWith(
                            color: MyColors.white,
                            fontWeight: FontWeight.w100),),
                        Text('minutes yet to watch',style: MyStyles.robotoLight14.copyWith(
                            color: MyColors.colorLight,
                            fontWeight: FontWeight.w100),),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width/3,
                    color: MyColors.primaryColor,
                    child: Center(child: ProgressIndicator()),

                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/6,
                    width: MediaQuery.of(context).size.width/3,
                    color: MyColors.accentsColors,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('13',style: MyStyles.robotoLight62.copyWith(
                            color: MyColors.white,
                            fontWeight: FontWeight.w100),),
                        Text('days left in month',style: MyStyles.robotoLight14.copyWith(
                            color: MyColors.colorLight,
                            fontWeight: FontWeight.w100),),
                      ],
                    ),
                  )
                ],
              ),
            ),
            mbleBeeRemoteVideo(),
            SizedBox(height: 10),

            // Stack(
            //  children: [
            //    Container(
            //      height: media.size.height/5,
            //      width: MediaQuery.of(context).size.width,
            //      color: MyColors.lightBlueShade,
            //      child: InkWell(
            //          onTap:(){
            //            Navigator.push(context, MaterialPageRoute(builder: (context) => WatchPortrait()));
            //          },
            //          child: Center(child: _submitButton('WATCH MYADS'))),
            //    ),
            //    Padding(
            //
            //      padding:  EdgeInsets.only(top: media.padding.bottom + 120),
            //      child: Row(
            //        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //        crossAxisAlignment: CrossAxisAlignment.start,
            //        children: [
            //          Row(
            //            children: [
            //              InkWell(
            //                onTap:(){
            //                  Navigator.push(context, MaterialPageRoute(builder: (context) => RewardsScreen()));
            //                },
            //                child: Stack(
            //                  children: [
            //                    Container(
            //                      height:70,
            //                      width: 70.0,
            //                      child: Image.asset(MyImages.goldIcon),),
            //                    Padding(
            //                      padding: const EdgeInsets.all(21.0),
            //                      child: Text('100',
            //                        style: MyStyles.robotoBold14.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
            //                      ),
            //                    ),
            //                    Padding(
            //                      padding: const EdgeInsets.only(left:16.0, top: 35.0),
            //                      child: Text('minutes',
            //                        style: MyStyles.robotoMedium10.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
            //                      ),
            //                    ),
            //                  ],
            //                ),
            //              ),
            //              InkWell(
            //                onTap:(){
            //                  Navigator.push(context, MaterialPageRoute(builder: (context) => RewardsScreen()));
            //                },
            //                child: Stack(
            //                  children: [
            //                    Container(
            //                      height:70,
            //                      width: 70.0,
            //                      child: Image.asset(MyImages.goldIcon),),
            //                    Padding(
            //                      padding: const EdgeInsets.all(22.0),
            //                      child: Text('500',
            //                        style: MyStyles.robotoBold14.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
            //                      ),
            //                    ),
            //                    Padding(
            //                      padding: const EdgeInsets.only(left:16.0, top: 35.0),
            //                      child: Text("minutes",
            //                        style: MyStyles.robotoMedium10.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
            //                      ),
            //                    ),
            //                  ],
            //                ),
            //              ),
            //              InkWell(
            //                onTap:(){
            //                  Navigator.push(context, MaterialPageRoute(builder: (context) => RewardsScreen()));
            //                },
            //                child: Stack(
            //                  children: [
            //                    Container(
            //                      height:70,
            //                      width: 70.0,
            //                      child: Image.asset(MyImages.goldIcon),),
            //                    Padding(
            //                      padding: const EdgeInsets.all(19.0),
            //                      child: Text('1000',
            //                        style: MyStyles.robotoBold14.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
            //                      ),
            //                    ),
            //                    Padding(
            //                      padding: const EdgeInsets.only(left:16.0, top: 35.0),
            //                      child: Text('minutes',
            //                        style: MyStyles.robotoMedium10.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
            //                      ),
            //                    ),
            //                  ],
            //                ),
            //              ),
            //            ],
            //          ),
            //          InkWell(
            //            onTap:(){
            //              Navigator.push(context, MaterialPageRoute(builder: (context) => RewardsScreen()));
            //            },
            //            child: Stack(
            //              children: [
            //                Container(
            //                  height:70,
            //                    width: 70.0,
            //                    child: Image.asset(MyImages.goldShield),),
            //                Padding(
            //                  padding: const EdgeInsets.all(20.0),
            //                  child: Text(MyStrings.percent10,
            //                    style: MyStyles.robotoBold14.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
            //                  ),
            //                ),
            //                Padding(
            //                  padding: const EdgeInsets.only(left:10.0, top: 35.0),
            //                  child: Text(MyStrings.multipliers,
            //                    style: MyStyles.robotoMedium10.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
            //                  ),
            //                ),
            //              ],
            //            ),
            //          ),
            //        ],
            //      ),
            //    ),
            //  ],
            // ),
         Stack(
        children: <Widget>[
          //First thing in the stack is the background
          //For the backgroud i create a column
          Column(
            children: <Widget>[
              //first element in the column is the white background (the Image.asset in your case)
              Container(
                color: MyColors.lightBlueShade,
                width: MediaQuery.of(context).size.width,
                height: 170.0,
                child: InkWell(
                    onTap:(){
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new WatchPortrait()));
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => WatchPortrait()));
                    },
                    child: Center(child: _submitButton('WATCH MYADS'))),
              ),
              //second item in the column is a transparent space of 20
              Container(
                  height: 20.0
              )
            ],
          ),
          //for the button i create another column
          Column(
              children:<Widget>[
                //first element in column is the transparent offset
                Container(
                    height: 140.0
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap:(){
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new RewardsScreen()));
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => RewardsScreen()));
                            },
                            child: Stack(
                              children: [
                                Container(
                                  height:70,
                                  width: 70.0,
                                  child: Image.asset(MyImages.goldIcon),),
                                Padding(
                                  padding: const EdgeInsets.all(19.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('100',
                                        style: MyStyles.robotoBold14.copyWith( color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                                      ),
                                      Text('minutes',
                                        style: MyStyles.robotoMedium8.copyWith( color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          InkWell(
                            onTap:(){
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new RewardsScreen()));

                            },
                            child: Stack(
                              children: [
                                Container(
                                  height:70,
                                  width: 70.0,
                                  child: Image.asset(MyImages.goldIcon),),
                                Padding(
                                  padding: const EdgeInsets.all(22.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('500',
                                        style: MyStyles.robotoBold14.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                                      ),
                                      Text("minutes",
                                        style: MyStyles.robotoMedium8.copyWith( color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          InkWell(
                            onTap:(){
                              Navigator.of(context).push(PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => new RewardsScreen()));                            },
                            child: Stack(
                              children: [
                                Container(
                                  height:70,
                                  width: 70.0,
                                  child: Image.asset(MyImages.goldIcon),),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('1000',
                                        style: MyStyles.robotoBold14.copyWith(color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                                      ),Text('minutes',
                                        style: MyStyles.robotoMedium8.copyWith( color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap:(){
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) => new RewardsScreen()));                        },
                        child: Stack(
                          children: [
                            Container(
                              height:70,
                              width: 70.0,
                              child: Image.asset(MyImages.goldShield),),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(MyStrings.percent10,
                                    style: MyStyles.robotoBold14.copyWith(color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                                  ),
                                  Text(MyStrings.multipliers,
                                    style: MyStyles.robotoMedium8.copyWith( color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]
          )
        ],
      ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap:(){
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new SettingScreen()));
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                    },child: _submitButton1('SETTINGS')),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new ChartsDemo()));
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => ChartsDemo()));
                    },
                    child: _submitButton1('GRAPHS')),
              ],
            ),
            SizedBox(height: 20.0,),
          ],
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
Widget _submitButton(String buttonName) {
  return Container(
    width: 190.0,
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
    child: Align(
      alignment: Alignment.center,
      child: Text(
        buttonName,
        style: MyStyles.robotoMedium12.copyWith(
            letterSpacing: 4.0,
            color: MyColors.white,
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}
Widget _submitButton1(String buttonName) {
  return Container(
    width: 100.0,
    height: 40.0,
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
    child: Align(
      alignment: Alignment.center,
      child: Text(
        buttonName,
        style: MyStyles.robotoMedium12.copyWith(
            letterSpacing: 4.0,
            color: MyColors.white,
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}


class ProgressIndicator extends StatefulWidget {
  ProgressIndicator({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProgressIndicatorState createState() => _ProgressIndicatorState();
}

class _ProgressIndicatorState extends State<ProgressIndicator> {

  @override
  Widget build(BuildContext context) {

    return  Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom:4.0),
          child: CircularPercentIndicator(
            radius:70.0,
            lineWidth: 5.0,
            backgroundColor: MyColors.accentsColors,
            animation: true,
            percent: 0.25,
            center: new Text(
              "25%",
              style: MyStyles.robotoMedium22.copyWith(
                  color: MyColors.white,
                  fontWeight: FontWeight.w100),
            ),
            footer: Padding(
              padding: const EdgeInsets.only(top:26.0),
              child: new Text(
                "monthly progress",
                style:
                 MyStyles.robotoLight14.copyWith(
              color: MyColors.white,
                  fontWeight: FontWeight.w100),
              ),
            ),
            // circularStrokeCap: CircularStrokeCap.round,
            progressColor: Colors.white,
          ),
        ),

      ],
    );
  }
}