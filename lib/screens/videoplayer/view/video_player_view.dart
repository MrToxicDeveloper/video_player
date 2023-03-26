import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:video_player_2/screens/videoplayer/provider/video_provider.dart';

class VideoPlayerView extends StatefulWidget {
  const VideoPlayerView({Key? key}) : super(key: key);

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {

  VideoPlayerProvider? proTrue;
  VideoPlayerProvider? proFalse;

  @override
  void initState() {
    super.initState();
    Provider.of<VideoPlayerProvider>(context,listen: false).initVideo();
  }

  @override
  Widget build(BuildContext context) {
    proFalse = Provider.of<VideoPlayerProvider>(context,listen: false);
    proTrue = Provider.of<VideoPlayerProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Chewie(controller: proFalse!.chewieController!),
      ),
    );
  }
}
