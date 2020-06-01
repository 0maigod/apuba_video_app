import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

/// Creates list of video players
class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final List<YoutubePlayerController> _controllers = [
    'zCP7-6sgSvk',
//    '-IhqMNYTSCM',
//    'VjN-eFhDORc',
//    'DA4D3vf8lTM',
//    'RypY-lNvB3o',
//    'Bl_sLwp0uWo',
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos de Interes. Apuba.'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            title: Container(
              height: 150.0,
              width: 200.0,
              child: YoutubePlayer(
                key: ObjectKey(_controllers[index]),
                controller: _controllers[index],
                actionsPadding: EdgeInsets.only(left: 16.0),
//                bottomActions: [
//                  CurrentPosition(),
//                  SizedBox(width: 10.0),
//                  ProgressBar(isExpanded: true),
//                  SizedBox(width: 10.0),
//                  RemainingDuration(),
//                  FullScreenButton(),
//                ],
              ),
            ),
            subtitle: Text('A strong animalia'),
          );
        },
        itemCount: _controllers.length,
        separatorBuilder: (context, _) => SizedBox(height: 10.0),
      ),
    );
  }
}
