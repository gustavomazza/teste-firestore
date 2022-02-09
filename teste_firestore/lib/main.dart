import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());

  await Firebase.initializeApp();

  var arquitetos = FirebaseFirestore.instance.collection('arquitetos');

  var result = await arquitetos.get();

  List<String> listaChaves = [];

  for(var doc in result.docs){
    if(doc.id == 'A1A1-A1A1-A1A2'){
      return;
    }
    listaChaves.add(doc.id);
    print(listaChaves);
  }

  // if(listaChaves.contains('A1A1-A1A1-A1A1')){
  //   print('ok');
  // }else{
  //   print('não encontrado');
  // }
  // print(listaChaves);

  // result = await arquitetos.where()

  // print('result ' + result.toString());

  

  // FirebaseFirestore.instance.collection('arquitetos').doc().set({
  //   'cpf':'31400777788',
  //   'nome':'Gustavo'
  // });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}

