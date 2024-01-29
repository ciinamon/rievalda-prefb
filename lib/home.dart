import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
              onPressed: () {
                html.window.open('https://github.com/ciinamon/rievalda-prefb', 'new tab');
              },
              child: const Text(
                "GitHub",
              ),
            ),
          ],
          title: const Text('Home'),
        ),
        body: Center(
          child: Column(
            children: [
              OutlinedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance.collection('coba').doc('aaa').set({'nama': 'cici'});
                },
                child: const Text('CREATE'),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () async {
                  final result = await FirebaseFirestore.instance.collection('coba').get();
                  debugPrint(result.toString());
                  debugPrint(result.docs[0].id);
                  debugPrint(result.docs[0].data()['nama'].toString());
                  debugPrint(result.docs[0].data()['umur'].toString());
                },
                child: const Text('READ'),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance.collection('coba').doc('aaa').update({'nama': 'caca'});
                },
                child: const Text('UPDATE'),
              ),
              const SizedBox(height: 10),
              OutlinedButton(
                onPressed: () async {
                  await FirebaseFirestore.instance.collection('coba').doc('aaa').delete();
                },
                child: const Text('DELETE'),
              ),
            ],
          ),
        ));
  }
}
