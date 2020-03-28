import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterilk/ui/head.dart';

main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(primaryColor: Colors.black,accentColor: Colors.red.shade900),
  home: Scaffold(
    //appBar: AppBar(title: Text("Hesap Makinasi"),),

    backgroundColor: Colors.indigo.shade100,
    body: HesapMakinasi(),
  ),

));