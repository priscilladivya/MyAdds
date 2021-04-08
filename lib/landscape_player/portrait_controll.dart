import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/watchPortraitScreen.dart';
import 'package:provider/provider.dart';

class PortraitPlayToggle extends StatefulWidget {
  const PortraitPlayToggle({Key key}) : super(key: key);

  @override
  _PortraitPlayToggleState createState() => _PortraitPlayToggleState();
}

class _PortraitPlayToggleState extends State<PortraitPlayToggle> {
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
          if(videoManager.isVideoEnded && videoManager.isPlaying){
            Navigator.push(context, MaterialPageRoute(builder: (context) => WatchPortrait()));
          }else{
            Navigator.push(context, MaterialPageRoute(builder: (context) => WatchPortrait()));
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

}