import 'package:flutter/material.dart';

class Producto extends StatelessWidget {
  const Producto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Productos"),
      ),
      body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Producto $index',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            );
          }),
        ),
    );
  }
}