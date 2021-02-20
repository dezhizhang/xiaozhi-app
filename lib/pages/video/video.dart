

import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import '../../utils/utils.dart';

class Video extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("视频"),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget{
  _Content createState() => _Content();
}

class _Content extends State<Content>{
  @override
  ChewieController chewieController;
  VideoPlayerController videoPlayerController;
  @override
  void initState() { 
    super.initState();
    this.videoPlaye();
  }
  videoPlaye() {
    videoPlayerController = VideoPlayerController.network(
      'http://vfx.mtime.cn/Video/2019/02/04/mp4/190204084208765161.mp4'
    );
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController, 
      aspectRatio: 3 / 2, 
      autoPlay: true,
      looping: true, 
    );
  }
  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
    chewieController.dispose();
  }
  
  Widget build(BuildContext context) {
    ScreenAdapter.init(context);
    // TODO: implement build
    return Container(
      child: Chewie(
        controller: chewieController,
      ),
    );
  }
}