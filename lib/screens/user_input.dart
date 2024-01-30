import 'package:flutter/material.dart';
import 'package:rievalda_prefb/logic/ctrl.dart';
import 'package:rievalda_prefb/logic/data.dart';

class UserInput extends StatefulWidget {
  const UserInput({super.key});

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Input'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextField(
            controller: ctrlNama,
            onChanged: (value) {
              if (value.isEmpty) {
                showClearBtnName = false;
              } else {
                showClearBtnName = true;
              }
              setState(() {});
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: showClearBtnName
                  ? IconButton(
                      onPressed: () {
                        ctrlNama.clear();
                        showClearBtnName = false;
                        setState(() {});
                      },
                      icon: const Icon(Icons.clear),
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: ctrlUmur,
            onChanged: (value) {
              if (value.isEmpty) {
                showClearBtnUmur = false;
              } else {
                showClearBtnUmur = true;
              }
              setState(() {});
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              suffixIcon: showClearBtnUmur
                  ? IconButton(
                      onPressed: () {
                        ctrlUmur.clear();
                        showClearBtnUmur = false;
                        setState(() {});
                      },
                      icon: const Icon(Icons.clear),
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 10),
          isLoading
              ? const CircularProgressIndicator()
              : OutlinedButton(
                  onPressed: () async {
                    isLoading = true;
                    setState(() {});
                    await create();
                    isLoading = false;
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: const Text('Submit'),
                ),
        ]),
      ),
    );
  }
}
