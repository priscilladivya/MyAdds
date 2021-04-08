import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/dimens.dart';
import 'package:myads_app/Constants/images.dart';
import 'package:myads_app/Constants/strings.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/DashBoard.dart';
import 'package:myads_app/UI/StreamingGoal.dart';
import 'package:myads_app/UI/watchPortraitScreen.dart';

import 'BarChart.dart';
import 'CheckMyCoupons.dart';
import 'SettingScreen.dart';

class InterestScreen extends StatefulWidget {
  @override
  _InterestScreenState createState() => _InterestScreenState();
}
class Interest{
  Interest({
    this.title,
    this.pictureName,

  });

  final String pictureName;
  final String title;

}

class _InterestScreenState extends State<InterestScreen> {
  List<Interest> interestList = <Interest>[
    Interest(
      pictureName: MyImages.menSFashion,
      title: MyStrings.menSClothing,
    ),
    Interest(
      pictureName: MyImages.womenSFashion,
      title: MyStrings.womenSClothing,
    ),
    Interest(
      pictureName: MyImages.appliances,
      title: MyStrings.appliances,
    ),
    Interest(
      pictureName: MyImages.music,
      title: MyStrings.music,
    ),
    Interest(
      pictureName: MyImages.electronics,
      title: MyStrings.cameras,
    ),
    Interest(
      pictureName: MyImages.jewellery,
      title: MyStrings.jewellry,
    ),
    Interest(
      pictureName: MyImages.health,
      title: MyStrings.health,
    ),
    Interest(
      pictureName: MyImages.homeFurnishing,
      title: MyStrings.furniture,
    ),
    Interest(
      pictureName: MyImages.cars,
      title: MyStrings.autoMotive,
    ),
    Interest(
      pictureName: MyImages.computers,
      title: MyStrings.computers,
    ),
  ];

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
          style: MyStyles.robotoMedium22.copyWith(letterSpacing: Dimens.letterSpacing_14, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
        ),
      ],
    );
  }
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
              padding: const EdgeInsets.only(top:30.0),
              child: Center(
                child: Text(MyStrings.okWeAre,
                  style: MyStyles.robotoMedium28.copyWith(letterSpacing: 1.0, color: MyColors.primaryColor, fontWeight: FontWeight.w100),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Center(
                child: Text(MyStrings.whatSort,
                  style: MyStyles.robotoMedium28.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                ),
              ),
            ),
            Center(
              child: Text(MyStrings.youLike,
                style: MyStyles.robotoMedium28.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
              ),
            ),
            SizedBox(height: 20.0,),

            Container(
              height: 1000,
              child: GridView.builder(
                  itemCount: interestList.length,
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(1.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return   InkWell(
                      onTap: ()
                      {

                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left:24.0, top:10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(interestList[index].pictureName),
                                  SizedBox(height: 10.0,),
                                  _checkboxDemo(interestList[index].title, isChecked ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                  ),
            ),
            SizedBox(height:10.0,),
            InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (_, __, ___) => new StreamingGoals()));
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoardScreen()));
                },
                child: _submitButton(MyStrings.thatSMe)),
            SizedBox(height: 10.0,),
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