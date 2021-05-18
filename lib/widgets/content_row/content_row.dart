import 'package:flutter/material.dart';
import 'package:pp_sp_s01_flutter/models/music_overview.dart';

class ContentRowWidget extends StatelessWidget {
  final String title;
  final List<MusicOverview> overviewsMusic;

  ContentRowWidget({required this.title, required this.overviewsMusic})
      : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        SizedBox(
          height: 200.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: overviewsMusic.length,
            itemBuilder: (context, index) => _buildElement(index),
          ),
        ),
      ],
    );
  }

  Widget _buildElement(int index) {
    final description = overviewsMusic[index].artists.join(', ');
    final Widget title = overviewsMusic[index].title != null
        ? Text(overviewsMusic[index].title!)
        : Container();

    return Column(
      children: [
        Image.network(
          overviewsMusic[index].pictureUrl,
          height: 50.0,
          width: 50.0,
        ),
        title,
        Text(description),
      ],
    );
  }
}
