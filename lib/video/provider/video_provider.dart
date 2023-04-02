import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplayer/video/modal/video_model.dart';

class videoprovider extends ChangeNotifier {
  VideoPlayerController? videoPlayerController;

  ChewieController? chewieControlller;
  homemodel? h1;

  void loadVideo() {
    videoPlayerController = VideoPlayerController.asset(
      "${h1!.video}",
    )..initialize();


    chewieControlller = ChewieController(
      materialProgressColors: ChewieProgressColors(
        backgroundColor: Colors.white30,
        playedColor: Colors.white,
      ),


      videoPlayerController: videoPlayerController!,
      autoPlay: true,
      playbackSpeeds: [10],
      showOptions: true,
      fullScreenByDefault: false,
    );
  }

  List<homemodel> videolist = [
    homemodel(
      image: "assets/image/vposter1.webp",
      name: "Farzi",
      video: "assets/video/video1.mp4",
    ),
    homemodel(
      image: "assets/image/vposter2.webp",
      name: "Cricket",
      video: "assets/video/video2.mp4",
    ),
    homemodel(
      image: "assets/image/vposter3.webp",
      name: "Taaza Khabar",
      video: "assets/video/video3.mp4",
    ),
    homemodel(
      image: "assets/image/vposter4.webp",
      name: "Song",
      video: "assets/video/video4.mp4",
    ),
    homemodel(
      image: "assets/image/vposter5.png",
      name: "Football",
      video: "assets/video/video5.mp4",
    ),
  ];
}
