import 'package:pp_sp_s01_flutter/models/music_overview.dart';

const String pictureUrl =
    'https://img.discogs.com/6lJcw-8uxGj7qcg8xzLUWvWLOKE=/578x789/smart/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/A-15885-1586013096-1429.jpeg.jpg';

const List<MusicOverview> musicOverviewsMock = [
  MusicOverview(pictureUrl, 'Title 01', ['Marcus', 'George']),
  MusicOverview(pictureUrl, 'Title 02', ['Toto']),
  MusicOverview(pictureUrl, 'Title 03', ['Just a name']),
  MusicOverview(pictureUrl, 'Title 04', ['Mommy and Daddy', 'The one']),
  MusicOverview(pictureUrl, 'Title 05', ['Patrick', 'Maurice']),
  MusicOverview(pictureUrl, 'Title 06', ['D44N']),
  MusicOverview(
      pictureUrl, 'Title 07', ['F4F4', 'Golum', 'Jojo', 'The last one']),
  MusicOverview(pictureUrl, 'Title 08', ['The Unknown one', 'The known one']),
  MusicOverview(pictureUrl, 'Title 09',
      ['WhoAmI', 'IAmYou', 'NoYouAreNotMe', 'YesIAm', 'CommonOnMan'])
];
