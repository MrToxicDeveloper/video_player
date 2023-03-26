import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerProvider extends ChangeNotifier {
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  void initVideo() {
    videoPlayerController =
        VideoPlayerController.asset("assets/video/videoBGMI.mp4")..initialize();
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: false,
        looping: false,
      materialProgressColors: ChewieProgressColors(playedColor: Colors.white)
    );
  }
}
