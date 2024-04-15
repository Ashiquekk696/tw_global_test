import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreenView extends StatelessWidget {
  final String imageUrl;

  const FullScreenView({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.back(); // Go back when tapped
        },
        child: Container(
          color: Colors.black, // Background color for fullscreen
          child: Center(
            child: Image.network(
              imageUrl,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
