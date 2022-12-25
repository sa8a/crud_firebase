import 'package:flutter/material.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Name'),
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(hintText: 'Name'),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('Add')),
        ],
      ),
    );
  }
}
