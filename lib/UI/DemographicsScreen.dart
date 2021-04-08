import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/dimens.dart';
import 'package:myads_app/Constants/images.dart';
import 'package:myads_app/Constants/strings.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/BarChart.dart';
import 'package:myads_app/UI/Interest.dart';
import 'package:myads_app/UI/StreamingGoal.dart';
import 'package:myads_app/UI/test.dart';

import 'CheckMyCoupons.dart';
import 'SettingScreen.dart';

class DemographicsScreen extends StatefulWidget {
  @override
  _DemographicsScreenState createState() => _DemographicsScreenState();
}

class _DemographicsScreenState extends State<DemographicsScreen> {

  bool isChecked = true;

  void toggleCheckbox(bool value) {

    if(isChecked == false)
    {
      // Put your code here which you want to execute on CheckBox Checked event.
      setState(() {
        isChecked = true;
      });

    }
    else
    {
      // Put your code here which you want to execute on CheckBox Un-Checked event.
      setState(() {
        isChecked = false;

      });
    }
  }
  Widget _checkboxDemo(String title, covariant){

    return Row(
      children: [
      Checkbox(
      value: isChecked,
      onChanged: (value){toggleCheckbox(value);},
      activeColor: MyColors.accentsColors,
      checkColor: Colors.white,
      tristate: false,
    ),
      Text(title,
        style: MyStyles.robotoMedium24.copyWith(letterSpacing: Dimens.letterSpacing_14, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
      ),
      ],
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
  @override
  Widget build(BuildContext context) {

    int _value = 42;

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
              padding: const EdgeInsets.only(left:26.0),
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
              padding: const EdgeInsets.only(top:50.0),
              child: Center(
                child: Text(MyStrings.tellUs,
                  style: MyStyles.robotoMedium26.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:25.0),
              child: Text(MyStrings.theBasic,
                style: MyStyles.robotoLight22.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
              ),
            ),
            Divider(height: 10.0,
            color: MyColors.accentsColors,
            thickness: 2.0,),
            SizedBox(height: 30.0,),
            _entryField('First Name'),
            _entryField('Last Name'),
            _entryField('Email'),
            _entryField('Phone Number'),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Center(
                child: Text(MyStrings.littleHelp,
                  style: MyStyles.robotoLight24.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: Divider(height: 10.0,
                color: MyColors.accentsColors,
                thickness: 2.0,),
            ),
            Padding(
              padding: const EdgeInsets.only(right:250, top:20.0),
              child: Text('Gender',
                  style: MyStyles.robotoMedium18.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:35, top:20.0),
              child: Row(
                children: [
                  _checkboxDemo('Male', isChecked ),
                  _checkboxDemo('Female', isChecked ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:220, top:20.0),
              child: Text('Age Group',
                style: MyStyles.robotoMedium18.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:35, top:20.0),
              child: Column(
                children: [
                  _checkboxDemo('12 - 17', isChecked ),
                  _checkboxDemo('18 - 24', isChecked ),
                  _checkboxDemo('25 - 34', isChecked ),
                  _checkboxDemo('35 - 44', isChecked ),
                  _checkboxDemo('45 - 54', isChecked ),
                  _checkboxDemo('55 - 64', isChecked ),
                  _checkboxDemo('65+', isChecked ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:50, top:20.0),
              child: Text('Income in the last 12 months',
                style: MyStyles.robotoMedium18.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:35, top:20.0),
              child: Column(
                children: [
                  _checkboxDemo('Less than  \$25,000', isChecked ),
                  _checkboxDemo('\$25,000 to \$34,000', isChecked ),
                  _checkboxDemo('\$35,000 to \$49,000', isChecked ),
                  _checkboxDemo('\$50,000 to \$74,000', isChecked ),
                  _checkboxDemo('\$75,000 to \$99,000', isChecked ),
                  _checkboxDemo('\$100,000 to \$149,000', isChecked ),
                  _checkboxDemo('\$150,000 or More', isChecked ),
                ],
              ),
            ),

            DropDowmPage(),
            _entryField('Postcode'),
            SizedBox(height: 20.0,),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new InterestScreen()));
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => StreamingGoals()));
                },
                child: _submitButton(MyStrings.thatSMe)),
            SizedBox(height: 20.0,),
          ],
        ),
      ),

    );
  }
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



