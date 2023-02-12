import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

main()
// call the main function to run the app using WooriApp
{
  runApp(WooriApp());
}



class WooriApp extends StatefulWidget {
  const WooriApp({
    Key? key,
  }) : super(key: key);

  @override
  _WooriAppState createState() => _WooriAppState();
}

class _WooriAppState extends State<WooriApp> {
  final VideoPlayerController _controller = VideoPlayerController.asset(
    'lib/assets/woori_edit_2.mp4',
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
          "은행 어플 사용 방법",
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
            const SizedBox(height: 30), // 여백
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
                    onPressed: () {},
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
