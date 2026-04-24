import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsPage extends StatelessWidget {
  final String name;
  final String imagePath;
  final String price;
  final Color color;

  const DetailsPage({
    super.key,
    required this.name,
    required this.imagePath,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: TextButton.icon(
          onPressed: () =>  context.go('/home'),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          label: const Text('', style: TextStyle(color: Colors.white)),
        ),
        backgroundColor: Colors.lightGreen,
        title: Text(
          'Details about $name',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),


      body: Column(
        children: [
          Image.asset(imagePath),
          Text(name),
          Text('\$$price'),
        ],
      ),
    );
  }
}
