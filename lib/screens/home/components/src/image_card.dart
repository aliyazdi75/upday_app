import 'package:flutter/material.dart';
import 'package:upday_app/data/models/image/index.dart' as post;

class ImageCard extends StatelessWidget {
  const ImageCard({Key? key, required this.image}) : super(key: key);

  final post.Image image;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 300.0,
            child: Image.network(
              image.assets.preview.url,
              frameBuilder: (
                BuildContext context,
                Widget child,
                int? frame,
                bool wasSynchronouslyLoaded,
              ) {
                if (wasSynchronouslyLoaded) {
                  return child;
                }
                return AnimatedOpacity(
                  child: child,
                  opacity: frame == null ? 0 : 1,
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeOut,
                );
              },
            ),
          ),
          Text(image.description),
        ],
      ),
    );
  }
}
