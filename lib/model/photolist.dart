import 'package:flutter/material.dart';
import 'package:flutter_http/model/photo_model.dart';

class PhotosList extends StatelessWidget {
  const PhotosList({super.key, required this.photos});

  final List<Photo> photos;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        var allPhotos = photos[index].thumbnailUrl;
        return Image.network("$allPhotos.jpg");
      },
    );
  }
}
