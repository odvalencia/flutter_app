import 'package:flutter/material.dart';

class Cliente extends StatelessWidget {
  const Cliente({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Clientes"),
      ),
      body: _listViewBody(),
    );
  }
}
Widget _listViewBody() {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
              'Cliente $index',
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
              thickness: 1,
            ),
        itemCount: 50);
  }