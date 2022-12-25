import 'package:flutter/material.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  TextEditingController nameController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Name'),
      ),
      body: Column(
        children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(hintText: 'Name'),
          ),
          ElevatedButton(
              onPressed: () {
                print(nameController.text);
              },
              child: const Text('Add')),
        ],
      ),
    );
  }
}
