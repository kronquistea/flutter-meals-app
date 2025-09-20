import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({
    super.key,
    required this.title,
    required this.imageURL,
  });

  final String title;
  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(imageURL),
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
