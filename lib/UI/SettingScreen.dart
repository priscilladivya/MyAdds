import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/dimens.dart';
import 'package:myads_app/Constants/images.dart';
import 'package:myads_app/Constants/strings.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/CheckMyCoupons.dart';
import 'package:myads_app/UI/Interest.dart';
import 'package:myads_app/UI/StreamingGoal.dart';
import 'BarChart.dart';
import 'DashBoard.dart';

class SettingScreen extends StatefulWidget {

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:  EdgeInsets.only(top: media.padding.top + 10,),
              child: Center(
                child: Text(
                  MyStrings.yourSettings,
                  style: MyStyles.robotoMedium28.copyWith(
                      letterSpacing: 1.0,
                      color: MyColors.accentsColors,
                      fontWeight: FontWeight.w100),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ListTileTheme(
              dense: true,
              contentPadding: EdgeInsets.all(0),
              child: ExpansionTile(
                // childrenPadding: EdgeInsets.only(left: 28.0),
                backgroundColor: MyColors.blueShade,
                trailing: SizedBox(),
                tilePadding: EdgeInsets.only(left: 40.0),
                // title: _expansionTileButton(MyStrings.updatePassword),
                title:  InkWell(
                  onTap: ()
                  {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new InterestScreen()));
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => InterestScreen()));
                  },
                  child: Container(
                    width: 330.0,
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
                        MyStrings.updateInterest,
                        style: MyStyles.robotoMedium10.copyWith(
                            letterSpacing: 3.0,
                            color: MyColors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ListTileTheme(
              dense: true,
              contentPadding: EdgeInsets.all(0),
              child: ExpansionTile(
                // childrenPadding: EdgeInsets.only(left: 28.0),
                backgroundColor: MyColors.blueShade,
                trailing: SizedBox(),
                tilePadding: EdgeInsets.only(left: 40.0),
                // title: _expansionTileButton(MyStrings.updatePassword),
                title:  InkWell(
                  onTap: ()
                  {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new StreamingGoals()));
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => StreamingGoals()));

                  },
                  child: Container(
                    width: 330.0,
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
                        MyStrings.updateStreaming,
                        style: MyStyles.robotoMedium10.copyWith(
                            letterSpacing: 3.0,
                            color: MyColors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5.0,
            ),
            // _submitButton(MyStrings.updatePassword),

            ListTileTheme(
              dense: true,
              contentPadding: EdgeInsets.all(0),
              child: ExpansionTile(
                // childrenPadding: EdgeInsets.only(left: 28.0),
                backgroundColor: MyColors.blueShade,
                trailing: SizedBox(),
                tilePadding: EdgeInsets.only(left: 40.0),
                // title: _expansionTileButton(MyStrings.updatePassword),
                title: _expansionTileButton(MyStrings.updatePassword),
                children: <Widget>[
                  new Container(
                    child: _entryField('Enter Old Password',isPassword: true),
                  ),
                  new Container(
                    child: _entryField('Enter New Password',isPassword: true),
                  ),
                  new Container(
                    child: _submitButton1('SAVE NEW PASSWORD'),
                  ),
                  new SizedBox(height: 10.0,),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            ListTileTheme(
              dense: true,
              contentPadding: EdgeInsets.all(0),
              child: ExpansionTile(
                // childrenPadding: EdgeInsets.only(left: 28.0),
                backgroundColor: MyColors.blueShade,
                trailing: SizedBox(),
                tilePadding: EdgeInsets.only(left: 40.0),
                // title: _expansionTileButton(MyStrings.updatePassword),
                title:  InkWell(
                  onTap: ()
                  {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new MyCouponScreen()));
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => MyCouponScreen()));

                  },
                  child: Container(
                    width: 330.0,
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
                        MyStrings.checkMy,
                        style: MyStyles.robotoMedium10.copyWith(
                            letterSpacing: 3.0,
                            color: MyColors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),

            ListTileTheme(
              dense: true,
              contentPadding: EdgeInsets.all(0),
              child: ExpansionTile(
                // childrenPadding: EdgeInsets.only(left: 28.0),
                backgroundColor: MyColors.blueShade,
                trailing: SizedBox(),
                tilePadding: EdgeInsets.only(left: 40.0),
                // title: _expansionTileButton(MyStrings.updatePassword),
                title: _expansionTileButton(MyStrings.playBack),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        value: 1,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = 'ONE';
                            id = 1;
                          });
                        },
                      ),
                      Text(
                        'SD Playback',
                        style: new TextStyle(fontSize: 17.0),
                      ),

                      Radio(
                        value: 2,
                        groupValue: id,
                        onChanged: (val) {
                          setState(() {
                            radioButtonItem = 'TWO';
                            id = 2;
                          });
                        },
                      ),
                      Text(
                        'HD Playback',
                        style: new TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                  new SizedBox(height: 10.0,),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            // _submitButton(MyStrings.updateProfiles),
            ListTileTheme(
              dense: true,
              contentPadding: EdgeInsets.all(0),
              child: ExpansionTile(
                // childrenPadding: EdgeInsets.only(left: 28.0),
                backgroundColor: MyColors.blueShade,
                trailing: SizedBox(),
                tilePadding: EdgeInsets.only(left: 40.0),
                // title: _expansionTileButton(MyStrings.updatePassword),
                title: _expansionTileButton(MyStrings.updateProfiles),
                children: <Widget>[
                  new Container(
                    child: _entryField('Update Email'),
                  ),
                  new Container(
                    child: _entryField('Update Phone Number'),
                  ),
                  new Container(
                    child: _submitButton1('SAVE PROFILE'),
                  ),
                  new SizedBox(height: 10.0,),
                ],
              ),
            ),

            SizedBox(
              height: 200.0,
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new DashBoardScreen()));
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DashBoardScreen()),
                  // );
                },
                child: _submitButton1(MyStrings.returnTo),
            ),
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
    width: 300.0,
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
        style: MyStyles.robotoMedium10.copyWith(
            letterSpacing: 3.0,
            color: MyColors.white,
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}
Widget _expansionTileButton(String buttonName) {
  return  Container(
    // width: 280.0,
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
        style: MyStyles.robotoMedium10.copyWith(
            letterSpacing: 3.0,
            color: MyColors.white,
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}
Widget _submitButton1(String buttonName) {
  return Container(
    width: 250.0,
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
    child: Text(
      buttonName,
      style: MyStyles.robotoMedium12.copyWith(
          letterSpacing: 3.0,
          color: MyColors.white,
          fontWeight: FontWeight.w500),
    ),
  );
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