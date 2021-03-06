import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/images.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:provider/provider.dart';

class LandscapePlayToggle extends StatefulWidget {
  const LandscapePlayToggle({Key key}) : super(key: key);

  @override
  _LandscapePlayToggleState createState() => _LandscapePlayToggleState();
}

class _LandscapePlayToggleState extends State<LandscapePlayToggle> {
  @override
  Widget build(BuildContext context) {

    FlickControlManager controlManager =
    Provider.of<FlickControlManager>(context);
    FlickVideoManager videoManager = Provider.of<FlickVideoManager>(context);

    double size = 50;
    Color color = Colors.white;

    Widget playWidget = Icon(
      Icons.play_arrow,
      size: size,
      color: color,
    );
    Widget pauseWidget = Icon(
      Icons.pause,
      size: size,
      color: color,
    );
    Widget replayWidget = Icon(
      Icons.replay,
      size: size,
      color: color,
    );

    Widget child = videoManager.isVideoEnded
        ? replayWidget
        : videoManager.isPlaying ? pauseWidget : playWidget;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        splashColor: Color.fromRGBO(108, 165, 242, 0.5),
        onTap: () {
          if(videoManager.isVideoEnded){
            controlManager.replay();
          }else if(videoManager.isPlaying){
            controlManager.togglePlay();
            print("my duration: ${videoManager.videoPlayerValue.position}");
           // return _showAlertPopup6Transparent();
          }else{
            controlManager.togglePlay();

          }
          // videoManager.isVideoEnded
          //     ? controlManager.replay()
          //     : controlManager.togglePlay() ;


        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(10),
          child: child,
        ),
      ),
    );
  }

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
            Text("Thanks for watching the AD, you just need to watch 20 mins more to get a Gift Card.",
              style: MyStyles.robotoLight16.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50,),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    _showAlertPopup2Transparent();
                  },

                  child: _submitButton('OK')),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("* You will be notified on mail, once you ???are eligible for Gift",
                style: MyStyles.robotoLight10.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      insetPadding: EdgeInsets.only(left:25.0,right: 25.0),
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
                    _showAlertPopup3Transparent();
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingScreen()));
                  },
                  child: _submitButton('Get Gift Card')),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("* You will be notified on mail, once your Gift Card gets approved",
                style: MyStyles.robotoLight10.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      insetPadding: EdgeInsets.only(left:25.0,right: 25.0),
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
            Text("Your Gift Card request has been raised\nsuccessfully.\nRequest ID: XXXXXXXXXX\nGenerated on : DD-MMM-2021",
              style: MyStyles.robotoLight16.copyWith( color: MyColors.white, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40,),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    _showAlertPopup4Transparent();
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
            Text("Your Gift Card has been dispatched to your registered Email ID. Please go the following URL <url link> and use the activation code: XXXX to use your Gift Card.",
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
                    _showAlertPopup5Transparent();
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
              child: Text("*Don???t miss any exciting chances to win more Benefit with My Ads",
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
  void _showAlertPopup6Transparent() {
    AlertDialog dialog = new AlertDialog(
      content: Container(
        width: 450.0,
        height: 400.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 20,),
            Image(image: AssetImage(MyImages.appLogo),height: 120,),
            // color: MyColors.white,
            // height: 110,),
            SizedBox(height: 10,),
            Text("Hi Jerald,",
              style: MyStyles.robotoRegular24.copyWith( color: MyColors.black, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 10,),
            Text("Congratulations!",
              style: MyStyles.robotoMedium26.copyWith( color: MyColors.black, fontWeight: FontWeight.w100),
            ),
            SizedBox(height: 20,),
            Text("Thanks for watching the AD, you are now eligible to receive the Gift Card. Please Click the button below to get it now.",
              style: MyStyles.robotoLight16.copyWith( color: MyColors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Center(
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },

                  child: _submitButton('Get Gift Card')),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text("* You will be notified on mail, once your Gift Card get approved*",
                style: MyStyles.robotoMedium14.copyWith( color: MyColors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      insetPadding: EdgeInsets.only(left:25.0,right: 25.0),
      // backgroundColor: MyColors.accentsColors.withOpacity(0.8),
    );
    showDialog(context: context, child: dialog);
  }
}
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