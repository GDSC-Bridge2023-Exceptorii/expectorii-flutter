import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'ko_google_1.dart';

class GoogleApp extends StatefulWidget {
  const GoogleApp({
    Key? key,
  }) : super(key: key);

  @override
  _GoogleAppState createState() => _GoogleAppState();
}

class _GoogleAppState extends State<GoogleApp> {
  final VideoPlayerController _controller = VideoPlayerController.asset(
    'lib/assets/google_video_edit.mp4',
  );

  @override
  void initState() {
    loadVideoPlayer();
    super.initState();
  }

  loadVideoPlayer() {
    _controller.addListener(() {
      setState(() {});
    });
    _controller.initialize().then((value) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        title: const Text(
          "구글 사용법",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffF2F5FC),
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 70), // 여백
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            VideoProgressIndicator(
              _controller,
              allowScrubbing: true,
              colors: const VideoProgressColors(
                backgroundColor: Colors.redAccent,
                playedColor: Colors.green,
                bufferedColor: Colors.purple,
              ),
            ),
            const SizedBox(height: 10), // 여백
            Container(
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        if (_controller.value.isPlaying) {
                          _controller.pause();
                        } else {
                          _controller.play();
                        }

                        setState(() {});
                      },
                      icon: Icon(_controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow)),
                  IconButton(
                    onPressed: () {
                      _controller.seekTo(const Duration(seconds: 0));

                      setState(() {});
                    },
                    icon: const Icon(Icons.stop),
                  ),
                  const SizedBox(width: 20), // 여백
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(250, 50),
                      // 버튼을 둥글게 처리
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: const Text(
                      "시작하기",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const KGoogleSearch1()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
