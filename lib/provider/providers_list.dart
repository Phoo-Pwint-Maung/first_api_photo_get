import 'package:api_photo_get/model/count_model.dart';
import 'package:api_photo_get/model/music_api_model.dart';

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final List<SingleChildWidget> provider = [
  ChangeNotifierProvider(
    create: (context) => SpotifyList(),
  ),
  ChangeNotifierProvider(
    create: (context) => CountModel(),
  ),
];
