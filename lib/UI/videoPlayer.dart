// import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/watchPortraitScreen.dart';
import 'package:myads_app/landscape_player/landscape_player.dart';
import 'package:myads_app/landscape_player/portrait_controll.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:video_player/video_player.dart';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/UI/SettingScreen.dart';
import 'package:myads_app/landscape_player/landscape_player.dart';
import 'package:myads_app/landscape_player/play_toggle.dart';
import 'package:myads_app/utils/mock_data.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';


class DashboardDefaultPlayer extends StatefulWidget {
  DashboardDefaultPlayer({Key key}) : super(key: key);

  @override
  _DashboardDefaultPlayerState createState() => _DashboardDefaultPlayerState();
}

class _DashboardDefaultPlayerState extends State<DashboardDefaultPlayer> {
  FlickManager flickManager;
  VideoPlayerController _controller;
  FlickManager _activeManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController:
      VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ObjectKey(flickManager),
      onVisibilityChanged: (visibility) {
        if (visibility.visibleFraction == 0 && this.mounted) {
          flickManager.flickControlManager.autoPause();
        } else if (visibility.visibleFraction == 1) {
          flickManager.flickControlManager.autoResume();
        }
      },
      child: Container(
        child: FlickVideoPlayer(
          flickManager: flickManager,
          flickVideoWithControls: FlickVideoWithControls(
            controls:    FlickShowControlsAction(
              child: FlickSeekVideoAction(
                child: Center(
                  child: FlickVideoBuffer(
                    child: FlickAutoHideChild(
                      showIfVideoNotInitialized: false,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: PortraitPlayToggle(),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class mbleBeeRemoteVideo extends StatefulWidget {
  @override
  _mbleBeeRemoteVideoState createState() => _mbleBeeRemoteVideoState();
}

class _mbleBeeRemoteVideoState extends State<mbleBeeRemoteVideo> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4',
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );

    _controller.addListener(() {
      setState(() {});
    });
    _controller.setLooping(true);
    _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Center(
          child: _controller.value.initialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : Container(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          ),
        ),
        Positioned(
          top:100,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => WatchPortrait()));
            },
            child: Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 50.0,
              ),
            ),
          ),
        ),
        // VideoProgressIndicator(_controller, allowScrubbing: true),
      ],
    );
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key key, @required this.controller})
      : super(key: key);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 10),
      // reverseDuration: Duration(milliseconds: 200),
      child: controller.value.isPlaying
          ? SizedBox()
          : GestureDetector(
        onTap: (){
        },
        child: Center(
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 50.0,
            ),
        ),
          ),
    );
  }
}

/*videoplayer*/
// class mbleBeeRemoteVideoControl extends StatefulWidget {
//
//   @override
//   _mbleBeeRemoteVideoControlState createState() => _mbleBeeRemoteVideoControlState();
// }
//
// class _mbleBeeRemoteVideoControlState extends State<mbleBeeRemoteVideoControl> {
//
//   VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(
//       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
//       videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true,),
//     );
//
//     _controller.addListener(() {
//       setState(() {});
//     });
//     _controller.setLooping(true);
//     _controller.initialize();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final MediaQueryData media = MediaQuery.of(context);
//     final double statusBarHeight = MediaQuery.of(context).padding.top;
//     return AspectRatio(
//       aspectRatio: _controller.value.aspectRatio,
//       child: Stack(
//         // alignment: Alignment.bottomCenter,
//         children: <Widget>[
//           VideoPlayer(_controller),
//           // ClosedCaption(text: _controller.value.caption.text),
//           _ControlsOverlays(controller: _controller),
//           Positioned(
//           top: 220,
//             right: 20,
//             child: Align(
//               alignment: Alignment.bottomRight,
//               child: IconButton(
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => LandscapePlayer()));
//
//                 },
//                 icon: Icon(
//                   Icons.fullscreen,
//                   color: Colors.white,
//                   size: 20.0,
//                 ),
//               ),
//             ),
//           ),
//
//           // VideoProgressIndicator(_controller, allowScrubbing: true),
//         ],
//       ),
//     );
//   }
// }
//
// class _ControlsOverlays extends StatelessWidget {
//   const _ControlsOverlays({Key key, @required this.controller})
//       : super(key: key);
//
//   final VideoPlayerController controller;
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         AnimatedSwitcher(
//           duration: Duration(milliseconds: 50),
//           reverseDuration: Duration(milliseconds: 200),
//           child: controller.value.isPlaying
//               ? SizedBox.shrink()
//               : Container(
//             color: Colors.black26,
//             child: Center(
//               child: Icon(
//                 Icons.play_arrow,
//                 color: Colors.white,
//                 size: 50.0,
//               ),
//             ),
//           ),
//         ),
//         GestureDetector(
//           onTap: () {
//             controller.value.isPlaying ? controller.pause() : controller.play();
//           },
//         ),
//       ],
//     );
//   }
// }


