import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rievalda_prefb/logic/data.dart';

Future<void> create() async {
  final valNama = ctrlNama.text;
  final valUmur = int.parse(ctrlUmur.text);
  final valId = UniqueKey().toString();
  final valCreateAt = DateTime.now();
  await FirebaseFirestore.instance.collection('userName').doc(valId).set(
    {
      'nama': valNama,
      'createAt': valCreateAt,
      'id': valId,
    },
  );
  await FirebaseFirestore.instance.collection('userDetail').doc(valId).set(
    {
      'nama': valNama,
      'umur': valUmur,
      'createAt': valCreateAt,
      'id': valId,
    },
  );
  ctrlNama.clear();
  ctrlUmur.clear();
  showClearBtnName = false;
  showClearBtnUmur = false;
}
