import 'package:flutter/material.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/dimens.dart';
import 'package:myads_app/Constants/images.dart';
import 'package:myads_app/Constants/strings.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/BarChart.dart';
import 'package:myads_app/UI/CheckMyCoupons.dart';
import 'package:myads_app/UI/SettingScreen.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class GiftCardPage extends StatefulWidget {
  @override
  _GiftCardPageState createState() => _GiftCardPageState();
}

class _GiftCardPageState extends State<GiftCardPage> {
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
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Center(
                  child: Text(MyStrings.giftCard,
                    style: MyStyles.robotoMedium22.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Center(
                child: Text(MyStrings.requestTransaction,
                  style: MyStyles.robotoMedium22.copyWith(letterSpacing: 1.0, color: MyColors.accentsColors, fontWeight: FontWeight.w100),
                ),
              ),
              SizedBox(height:40.0,),
              Divider(
                height: 10.0,
                color: MyColors.accentsColors,
                thickness: 2.0,
              ),
              MyHomePage()
            ],
          ),
        ),
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

}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int height = 450;
  double value = 5.0;
  String _lowerValue,_upperValue;
  int valueHolder = 20;
  var _controller = PageController();
  double _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _controller.addListener(() {
      setState(() {
        _currentIndex = _controller.page;
      });
    });
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Text("Mar' 2021",
                  style: MyStyles.robotoLight14.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 15),
              leading:   FittedBox(
                fit: BoxFit.fill,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom:4.0),
                          child: Text(
                            height.toString(),
                            style: MyStyles.robotoLight10.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: StepProgressIndicator(
                            totalSteps: 500,
                            currentStep: 450,
                            size: 6,
                            padding: 0,
                            selectedColor: MyColors.accentsColors,
                            unselectedColor: MyColors.Gray,
                            roundedEdges: Radius.circular(10),

                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:4.0),
                          child: Text(
                            "500",
                            style: MyStyles.robotoLight10.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("15 %",
                          style: MyStyles.robotoLight16.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),

                        ),
                        Icon(Icons.star,color: MyColors.accentsColors
                          ,size: 20 ,)
                      ],

                    ),
                    SizedBox(width: 15,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("625",
                          style: MyStyles.robotoLight16.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.thumb_up,color: MyColors.accentsColors,size: 20,)
                      ],

                    ),
                    SizedBox(width: 15),
                    Container(
                        height: 45,
                        width: 50,
                        decoration: new BoxDecoration(
                          color: MyColors.accentsColors,
                        ),
                        child: Center(child: new  FaIcon(FontAwesomeIcons.eye,size: 15,color: MyColors.white,)),

                    ),
                    SizedBox(width: 10,),
                    Container(
                        height: 45,
                        width: 50,
                        decoration: new BoxDecoration(
                          color: MyColors.boxGreen,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:9.0),
                              child: Column(
                                children: [
                                  Center(
                                    child: new  FaIcon(FontAwesomeIcons.gift,size: 15,color: MyColors.white,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top:3.0),
                                    child: Text("Generated",style: MyStyles.robotoMedium8.copyWith(color: MyColors.white, fontWeight: FontWeight.w200),),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                                right: 3.0,
                                top: 2.0,
                                child: FaIcon(FontAwesomeIcons.checkDouble,size: 10,color: MyColors.white,)),
                          ],
                        )
                    ),
                  ],
                ),
              ),

              ),
            ],
          ),
          Divider(thickness: 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Text("Feb' 2021",
                  style: MyStyles.robotoLight14.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                leading:   FittedBox(
                  fit: BoxFit.fill,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom:4.0),
                            child: Text(
                              height.toString(),
                              style: MyStyles.robotoLight10.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: StepProgressIndicator(
                              totalSteps: 500,
                              currentStep: 450,
                              size: 6,
                              padding: 0,
                              selectedColor: MyColors.accentsColors,
                              unselectedColor: MyColors.Gray,
                              roundedEdges: Radius.circular(10),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:4.0),
                            child: Text(
                              "500",
                              style: MyStyles.robotoLight10.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("15 %",
                            style: MyStyles.robotoLight16.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),

                          ),
                          Icon(Icons.star,color: MyColors.accentsColors
                            ,size: 20 ,)
                        ],

                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("625",
                            style: MyStyles.robotoLight16.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.thumb_up,color: MyColors.accentsColors,size: 20,)
                        ],

                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 45,
                        width: 50,
                        decoration: new BoxDecoration(
                          color: MyColors.accentsColors,
                        ),
                        child: Center(child:

                        GestureDetector(
                          onTap: (){
                            _showAlertPopup5Transparent();
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top:9.0),
                            child: Column(
                              children: [
                                new  FaIcon(FontAwesomeIcons.eye,size: 15,color: MyColors.white,),
                                Padding(
                                  padding: const EdgeInsets.only(top:3.0),
                                  child: Text("In-Progress",style: MyStyles.robotoMedium8.copyWith(color: MyColors.white, fontWeight: FontWeight.w400),),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ),

                      ),
                      SizedBox(width: 10,),
                      Container(
                          height: 45,
                          width: 50,
                          decoration: new BoxDecoration(
                            color: MyColors.yellow,
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:9.0),
                                child: Column(
                                  children: [
                                    Center(
                                      child: new  FaIcon(FontAwesomeIcons.gift,size: 15,color: MyColors.white,),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:3.0),
                                      child: Text("Applied",style: MyStyles.robotoMedium8.copyWith(color: MyColors.white, fontWeight: FontWeight.w200),),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                  right: 3.0,
                                  top: 2.0,
                                  child: FaIcon(FontAwesomeIcons.check,size: 10,color: MyColors.white,)),
                            ],
                          )
                      ),
                    ],
                  ),
                ),

              ),
            ],
          ),
          Divider(thickness: 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Text("Jan' 2021",
                  style: MyStyles.robotoLight14.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                leading:   FittedBox(
                  fit: BoxFit.fill,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom:4.0),
                            child: Text(
                              height.toString(),
                              style: MyStyles.robotoLight10.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: StepProgressIndicator(
                              totalSteps: 500,
                              currentStep: 450,
                              size: 6,
                              padding: 0,
                              selectedColor: MyColors.accentsColors,
                              unselectedColor: MyColors.Gray,
                              roundedEdges: Radius.circular(10),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:4.0),
                            child: Text(
                              "500",
                              style: MyStyles.robotoLight10.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("15 %",
                            style: MyStyles.robotoLight16.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),

                          ),
                          Icon(Icons.star,color: MyColors.accentsColors
                            ,size: 20 ,)
                        ],

                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("625",
                            style: MyStyles.robotoLight16.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.thumb_up,color: MyColors.accentsColors,size: 20,)
                        ],

                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 45,
                        width: 50,
                        decoration: new BoxDecoration(
                          color: MyColors.accentsColors,
                        ),
                        child: Center(child:

                        Padding(
                          padding: const EdgeInsets.only(top:9.0),
                          child: Column(
                            children: [
                              new  FaIcon(FontAwesomeIcons.eye,size: 15,color: MyColors.white,),
                              Padding(
                                padding: const EdgeInsets.only(top:3.0),
                                child: Text("ELigible",style: MyStyles.robotoMedium8.copyWith(color: MyColors.white, fontWeight: FontWeight.w400),),
                              ),
                            ],
                          ),
                        ),
                        ),

                      ),
                      SizedBox(width: 10,),
                      Container(
                          height: 45,
                          width: 50,
                          decoration: new BoxDecoration(
                            color: MyColors.boxOrange,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top:9.0),
                            child: Column(
                              children: [
                                Center(
                                  child: new  FaIcon(FontAwesomeIcons.gift,size: 15,color: MyColors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:3.0),
                                  child: Text("Apply",style: MyStyles.robotoMedium8.copyWith(color: MyColors.white, fontWeight: FontWeight.w200),),
                                )
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                ),

              ),
            ],
          ),
          Divider(thickness: 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Text("Dec' 2021",
                  style: MyStyles.robotoLight14.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                leading:   FittedBox(
                  fit: BoxFit.fill,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom:4.0),
                            child: Text(
                              height.toString(),
                              style: MyStyles.robotoLight10.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: StepProgressIndicator(
                              totalSteps: 500,
                              currentStep: 450,
                              size: 6,
                              padding: 0,
                              selectedColor: MyColors.accentsColors,
                              unselectedColor: MyColors.Gray,
                              roundedEdges: Radius.circular(10),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:4.0),
                            child: Text(
                              "500",
                              style: MyStyles.robotoLight10.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("15 %",
                            style: MyStyles.robotoLight16.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),

                          ),
                          Icon(Icons.star,color: MyColors.accentsColors
                            ,size: 20 ,)
                        ],

                      ),
                      SizedBox(width: 15,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("625",
                            style: MyStyles.robotoLight16.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.thumb_up,color: MyColors.accentsColors,size: 20,)
                        ],

                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 45,
                        width: 50,
                        decoration: new BoxDecoration(
                          color: MyColors.accentsColors,
                        ),
                        child: Center(child:

                        Padding(
                          padding: const EdgeInsets.only(top:9.0),
                          child: Column(
                            children: [
                              new  FaIcon(FontAwesomeIcons.eye,size: 15,color: MyColors.white,),
                              Padding(
                                padding: const EdgeInsets.only(top:3.0),
                                child: Text("N/A",style: MyStyles.robotoMedium8.copyWith(color: MyColors.white, fontWeight: FontWeight.w400),),
                              ),
                            ],
                          ),
                        ),
                        ),

                      ),
                      SizedBox(width: 10,),
                      Container(
                          height: 45,
                          width: 50,
                          decoration: new BoxDecoration(
                            color: MyColors.Gray,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top:9.0),
                            child: Column(
                              children: [
                                Center(
                                  child: new  FaIcon(FontAwesomeIcons.gift,size: 15,color: MyColors.white,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:3.0),
                                  child: Text("N/A",style: MyStyles.robotoMedium8.copyWith(color: MyColors.white, fontWeight: FontWeight.w200),),
                                )
                              ],
                            ),
                          )
                      ),
                    ],
                  ),
                ),

              ),
            ],
          ),
          Divider(thickness: 2),
          SizedBox(height: 50.0,),
          Center(
            child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                },
                child: _submitButton('RETURN TO SETTINGS')),
          ),
        ],
      ),
    );
  }
  void _showAlert() {
    AlertDialog dialog = new AlertDialog(
      content: new Container(
        width: 450.0,
        height: 500.0,

        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: const Color(0xFFFFFF),
          borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text("Hi",
              style: MyStyles.robotoLight20.copyWith(letterSpacing: Dimens.letterSpacing_14, color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),

            ),
            // dialog centre
            SizedBox(height: 20,),
            new Expanded(
              child: new Container(
                  child: new Text("Thanks for watching, you are just more 20 mins away to be eligible for Requesting your Gift Card for Exciting Gifts.",
                    style: MyStyles.robotoLight18.copyWith( color: MyColors.textColor1b1c20, fontWeight: FontWeight.bold),
                  )),
              flex: 2,
            ),

            // dialog bottom
            new Expanded(
              child:         Center(
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new SettingScreen()));
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                    },
                    child: _submitButton('OK')),
              ),
            ),
          ],
        ),
      ),
    );

    showDialog(context: context, child: dialog);
  }
  //
  void _showAlertPopup1Transparent() {
    AlertDialog dialog = new AlertDialog(
      content: Container(
        width: 450.0,
        height: 280.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 20,),
            // Image(image: AssetImage(MyImages.check),
            // color: MyColors.white,
            // height: 110,),
            SizedBox(height: 30,),
            Text("Hi Jerald,",
              style: MyStyles.robotoMedium26.copyWith( color: MyColors.white, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 30,),
            Text("Thanks for watching the AD, you just need towatch 20 mins more to get a Gift Card.",
              style: MyStyles.robotoLight16.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50,),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new SettingScreen()));
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                  },
                  child: _submitButton('OK')),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("* You will be notified on mail, once you ‘are eligible for Gift",
                style: MyStyles.robotoLight10.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      insetPadding: EdgeInsets.only(left:25.0,right: 25.0
      ),
      backgroundColor: MyColors.accentsColors.withOpacity(0.8),
    );

    showDialog(context: context, child: dialog);
  }
  void _showAlertPopup2Transparent() {
    AlertDialog dialog = new AlertDialog(
      content: Container(
        width: 450.0,
        height: 300.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            // Image(image: AssetImage(MyImages.check),
            // color: MyColors.white,
            // height: 110,),
            // SizedBox(height: 40,),
            Text("Hi Jerald,",
              style: MyStyles.robotoMedium26.copyWith( color: MyColors.white, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 20,),
            Text("Congratulations!",
              style: MyStyles.robotoMedium26.copyWith( color: MyColors.white, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 20,),
            Text("Thanks for watching the AD, you are now Eligible to receive the Gift Card. Please click the button below to Get it Now.",
              style: MyStyles.robotoLight16.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50,),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();

                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                  },
                  child: _submitButton('Get Gift Card')),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("* You will be notified on mail, once your Gift Card get approved",
                style: MyStyles.robotoLight10.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      insetPadding: EdgeInsets.only(left:25.0,right: 25.0
      ),
      backgroundColor: MyColors.accentsColors.withOpacity(0.8),
    );

    showDialog(context: context, child: dialog);
  }
  void _showAlertPopup3Transparent() {
    AlertDialog dialog = new AlertDialog(
      content: Container(
        width: 450.0,
        height: 320.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            // Image(image: AssetImage(MyImages.check),
            // color: MyColors.white,
            // height: 110,),
            // SizedBox(height: 40,),
            Text("Hi Jerald,",
              style: MyStyles.robotoMedium26.copyWith( color: MyColors.white, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 20,),
            Text("Congratulations!",
              style: MyStyles.robotoMedium26.copyWith( color: MyColors.white, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 20,),
            Text("Your Gift Card request has been raised successfully.\nRequest ID: XXXXXXXXXX\nGenerated on : DD-MMM-2021",
              style: MyStyles.robotoLight16.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40,),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();

                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                  },
                  child: _submitButton('OK')),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("* You will be notified on Email, once your request gets approved.",
                style: MyStyles.robotoLight10.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      insetPadding: EdgeInsets.only(left:25.0,right: 25.0
      ),
      backgroundColor: MyColors.accentsColors.withOpacity(0.8),
    );

    showDialog(context: context, child: dialog);
  }
  void _showAlertPopup4Transparent() {
    AlertDialog dialog = new AlertDialog(
      content: Container(
        width: 450.0,
        height: 400.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            // Image(image: AssetImage(MyImages.check),
            // color: MyColors.white,
            // height: 110,),
            // SizedBox(height: 40,),
            Text("Hi Jerald,",
              style: MyStyles.robotoMedium26.copyWith( color: MyColors.white, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 20,),
            Text("Congratulations!",
              style: MyStyles.robotoMedium26.copyWith( color: MyColors.white, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 20,),
            Text("Your Gift Card has been dispatched to your registered Email ID. Please check now and use the activation code: XXXX to use your Gift Card.",
              style: MyStyles.robotoLight16.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Text("Gift Card ID is XXXXXXXXXXXXXX.",
              style: MyStyles.robotoLight16.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40,),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();

                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                  },
                  child: _submitButton('OK')),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("*Your need to watch 208 mins, to avail more Exciting Gifts.",
                style: MyStyles.robotoLight10.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      insetPadding: EdgeInsets.only(left:25.0,right: 25.0
      ),
      backgroundColor: MyColors.accentsColors.withOpacity(0.8),
    );

    showDialog(context: context, child: dialog);
  }
  void _showAlertPopup5Transparent() {
    AlertDialog dialog = new AlertDialog(
      content: Container(
        width: 450.0,
        height: 320.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            // Image(image: AssetImage(MyImages.check),
            // color: MyColors.white,
            // height: 110,),
            // SizedBox(height: 40,),
            Text("Hi Jerald,",
              style: MyStyles.robotoMedium26.copyWith( color: MyColors.white, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 20,),
            Text("Congratulations!",
              style: MyStyles.robotoMedium26.copyWith( color: MyColors.white, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 20,),
            Text("You have just activated your Gift Card successfully. Please click following link <URL link> to find easy steps to avail the benefit from your Gift Card. ",
              style: MyStyles.robotoLight16.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40,),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();

                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                  },
                  child: _submitButton('Easy Benefit Process')),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("*Don’t miss any exciting chances to win more Benefit with My Ads",
                style: MyStyles.robotoLight10.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      insetPadding: EdgeInsets.only(left:25.0,right: 25.0
      ),
      backgroundColor: MyColors.accentsColors.withOpacity(0.8),
    );

    showDialog(context: context, child: dialog);
  }
}





//Linear//
// new LinearPercentIndicator(
//   trailing: Text("kjdhjkf"),
//   leading: Text("kjdhjkf"),
//
//   width: 100.0,
//   lineHeight: 8.0,
//   percent: 0.2,
//   progressColor: Colors.red,
// ),


Widget _submitButton(String buttonName) {
  return Container(
    width: 280.0,
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

