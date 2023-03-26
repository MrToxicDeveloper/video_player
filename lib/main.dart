import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player_2/screens/videoplayer/provider/video_provider.dart';
import 'package:video_player_2/screens/videoplayer/view/video_player_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => VideoPlayerProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => VideoPlayerView(),
        },
      ),
    ),
  );
}