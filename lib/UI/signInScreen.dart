import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/dimens.dart';
import 'package:myads_app/Constants/images.dart';
import 'package:myads_app/Constants/strings.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/CheckMyCoupons.dart';
import 'package:myads_app/UI/DemographicsScreen.dart';
import 'package:myads_app/UI/FoxProxy.dart';

import 'BarChart.dart';
import 'SettingScreen.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
            // _simplePopup(),
            _DividerPopMenu(),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: IconButton(icon: Icon(Icons.menu, color: MyColors.accentsColors, size: 30,),onPressed: (){
            //    print("jhkl");
            //     _simplePopup();
            //   },),
            // ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width,
                color: MyColors.colorLight,
                child: Image.asset(
                  MyImages.signInPic,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Text(
                MyStrings.EnterName,
                style: MyStyles.robotoMedium26.copyWith(
                    letterSpacing: 2.0,
                    color: MyColors.accentsColors,
                    fontWeight: FontWeight.w100),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            _entryField('Login Name'),
            _entryField('Password',isPassword: true),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new FoxProxyScreen()));
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => DemographicsScreen()));
                },
                child: _submitButton(MyStrings.signMeUp)),
                  SizedBox(height: media.size.height/10),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  Center(
                    child: RichText(
                      text: new TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        children: <TextSpan>[
                          new TextSpan(
                            text: MyStrings.termCondition,
                            style: MyStyles.robotoLight12.copyWith(letterSpacing: 1.0, color: MyColors.lightGray, fontWeight: FontWeight.w100),
                          ),
                          new TextSpan(
                            text: MyStrings.terms,
                            style: MyStyles.robotoLight12.copyWith(letterSpacing: 1.0, color: MyColors.darkGray, fontWeight: FontWeight.bold),
                          ),
                          new TextSpan(
                            text: MyStrings.read,
                            style: MyStyles.robotoLight12.copyWith(letterSpacing: 1.0, color: MyColors.lightGray, fontWeight: FontWeight.w100,),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0,left: 20.0),
                    child: Center(
                      child: RichText(
                        text: new TextSpan(
                          // Note: Styles for TextSpans must be explicitly defined.
                          // Child text spans will inherit styles from parent
                          children: <TextSpan>[
                            new TextSpan(
                              text: MyStrings.haveReadOur,
                              style: MyStyles.robotoLight12.copyWith(letterSpacing: 1.0, color: MyColors.lightGray, fontWeight: FontWeight.w100,),
                            ),
                            new TextSpan(
                              text: MyStrings.privacyPolicy,
                              style: MyStyles.robotoLight12.copyWith(letterSpacing: 1.0, color: MyColors.darkGray, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _simplePopup() => PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text("First"),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Second"),
        ),
      ],
      icon: Icon(
        Icons.menu,
        color: MyColors.accentsColors,
        size: 30,
      ),
    );
Widget _PopUpMenu() {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    height: 100,
    width: 100,
    child: PopupMenuButton(
      initialValue: 2,
      child: Center(
          child: Text('click here')),
      itemBuilder: (context) {
        return List.generate(5, (index) {
          return PopupMenuItem(
            value: index,
            child: Text('button no $index'),
          );
        });
      },
    ),
  );
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
      style: MyStyles.robotoMedium14.copyWith(
          letterSpacing: 3.0,
          color: MyColors.white,
          fontWeight: FontWeight.w500),
    ),
  );
}

Widget _entryField(String title, {bool isPassword = false}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    child:
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Text(
        title,
        style: MyStyles.robotoMedium16.copyWith(
            letterSpacing: Dimens.letterSpacing_14,
            color: MyColors.accentsColors,
            fontWeight: FontWeight.w100),
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
              borderSide: BorderSide(color: Colors.red, width: 5.0),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
    ]),
  );
}

class DropdownMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Show Dialog'),
        backgroundColor: Color(0xff8c3a3a),
        actions: <Widget>[
          PopupMenuButton<String>(
            color: Colors.blue[100],
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(
                  value: Constants.FirstItem,
                  child: Text(Constants.FirstItem),
                ),
                PopupMenuDivider(
                  height: 1,
                ),
                PopupMenuItem<String>(
                  value: Constants.SecondItem,
                  child: Text(Constants.FirstItem),
                ),
                PopupMenuDivider(
                  height: 1,
                ),
                PopupMenuItem<String>(
                  value: Constants.FirstItem,
                  child: Text(Constants.FirstItem),
                ),
              ];
            },
          )
        ],
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.FirstItem) {
      print('I First Item');
    } else if (choice == Constants.SecondItem) {
      print('I Second Item');
    } else if (choice == Constants.ThirdItem) {
      print('I Third Item');
    }
  }
}

class Constants {
  static const String FirstItem = 'Settings';
  static const String SecondItem = 'Gift Card        ';
  static const String ThirdItem = 'Third Item';

  static const List<String> choices = <String>[
    FirstItem,
    SecondItem,
    ThirdItem,
  ];
}
