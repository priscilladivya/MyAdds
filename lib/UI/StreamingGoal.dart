import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/dimens.dart';
import 'package:myads_app/Constants/images.dart';
import 'package:myads_app/Constants/strings.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/Interest.dart';
import 'package:myads_app/UI/LogInScreen.dart';

import 'BarChart.dart';
import 'CheckMyCoupons.dart';
import 'SettingScreen.dart';

class StreamingGoals extends StatefulWidget {
  @override
  _StreamingGoalsState createState() => _StreamingGoalsState();
}

class _StreamingGoalsState extends State<StreamingGoals> {
  bool isChecked = true;

  void toggleCheckbox(bool value) {
    if (isChecked == false) {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked = true;
      });
    } else {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked = false;
      });
    }
  }

  Widget _checkboxDemo(String title, covariant) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            toggleCheckbox(value);
          },
          activeColor: MyColors.accentsColors,
          checkColor: Colors.white,
          tristate: false,
        ),
        Text(
          title,
          style: MyStyles.robotoMedium24.copyWith(
              letterSpacing: Dimens.letterSpacing_14,
              color: MyColors.accentsColors,
              fontWeight: FontWeight.w100),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.colorLight,
        automaticallyImplyLeading: false,
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
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: Text(
                  MyStrings.okLetsGetIntoIt,
                  style: MyStyles.robotoMedium28.copyWith(
                      letterSpacing: 1.0,
                      color: MyColors.accentsColors,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Text(
                MyStrings.selectStream,
                style: MyStyles.robotoLight20.copyWith(
                    letterSpacing: 1.0,
                    color: MyColors.accentsColors,
                    fontWeight: FontWeight.w100),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                MyStrings.thatYouLike,
                style: MyStyles.robotoLight20.copyWith(
                    letterSpacing: 1.0,
                    color: MyColors.accentsColors,
                    fontWeight: FontWeight.w100),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 20.0),
              child: Column(
                children: [
                  _checkboxDemo('Netflix.', isChecked),
                  _checkboxDemo('Amazon Prime Video.', isChecked),
                  _checkboxDemo('Foxtel.', isChecked),
                  _checkboxDemo('Apple TV+', isChecked),
                  _checkboxDemo('Hulu.', isChecked),
                  _checkboxDemo('CBS All Access.', isChecked),
                  _checkboxDemo('Disney+', isChecked),
                  _checkboxDemo('HBO Max & HBO Now.', isChecked),
                  _checkboxDemo('Quibi.', isChecked),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: [
                        Text(
                          MyStrings.basedOnSelection,
                          style: MyStyles.robotoMedium14.copyWith(
                              letterSpacing: 1.0,
                              color: MyColors.white,
                              fontWeight: FontWeight.w100),
                        ),
                        Text(
                          MyStrings.YouWillNeed,
                          style: MyStyles.robotoMedium14.copyWith(
                              letterSpacing: 1.0,
                              color: MyColors.white,
                              fontWeight: FontWeight.w100),
                        ),
                        Text(
                          MyStrings.myAdsContent,
                          style: MyStyles.robotoMedium14.copyWith(
                              letterSpacing: 1.0,
                              color: MyColors.white,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 90.0,
                  color: MyColors.lightBlueShade,
                ),

                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:130.0,top: 10.0),
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
                        padding: const EdgeInsets.only(left:20.0),
                        child: Text(MyStrings.monthlyEstimate,
                          style: MyStyles.robotoLight12.copyWith(
                              letterSpacing: 1.0,
                              color: MyColors.colorLight,
                              fontWeight: FontWeight.w100),
                        ),
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 120.0,
                  color: MyColors.accentsColors,
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
            SizedBox(height: 30.0,),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new LoginScreen()));
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => InterestScreen()));
                },
                child: _submitButton(MyStrings.goodToGO)),
            SizedBox(height: 30.0,),
            Center(
              child: Column(
                children: [
                  Text(
                    MyStrings.estimateOnly,
                      style: MyStyles.robotoLight14.copyWith(
                          letterSpacing: 1.0,
                          color: MyColors.lightGray,
                          fontWeight: FontWeight.w100),
                  ),
                  Text(
                    MyStrings.participating,
                      style: MyStyles.robotoLight14.copyWith(
                          letterSpacing: 1.0,
                          color: MyColors.lightGray,
                          fontWeight: FontWeight.w100),
                  ),
                  Text(
                      MyStrings.interaction,
                      style: MyStyles.robotoLight14.copyWith(
                          letterSpacing: 1.0,
                          color: MyColors.lightGray,
                          fontWeight: FontWeight.w100),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
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