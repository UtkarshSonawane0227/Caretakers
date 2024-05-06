import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class vedioDemo extends StatefulWidget {
  const vedioDemo({Key? key}) : super(key: key);

  @override
  State<vedioDemo> createState() => _vedioDemoState();
}

class _vedioDemoState extends State<vedioDemo> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();

    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset('assets/vedio/salondDemo.mp4'));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: GestureDetector(
        onTap: () {
          if (flickManager
              .flickVideoManager!.videoPlayerController!.value.isPlaying) {
            flickManager.flickVideoManager!.videoPlayerController!.pause();
          } else {
            flickManager.flickVideoManager!.videoPlayerController!.play();
          }
        },
        child: Center(
          child: AspectRatio(
            aspectRatio: 16 / 8,
            child: FlickVideoPlayer(
              flickManager: flickManager,
            ),
          ),
        ),
      ),
    );
  }
}
