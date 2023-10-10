import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:appcrudfirestore/screens/lojas.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBq_xcU_z4CCjSNEuEBriThylcphPbxPoY",
        authDomain: "bdfirestore-300f0.firebaseapp.com",
        projectId: "bdfirestore-300f0",
        storageBucket: "bdfirestore-300f0.appspot.com",
        messagingSenderId: "445876719275",
        appId: "1:445876719275:web:beb7ae658a9317afa4b1ee"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Menu Drawer - Tomas',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountEmail: Text("testes@hotmail.com"),
                accountName: Text("Tomas Clothes's"),
                currentAccountPicture: CircleAvatar(
                  child: Text("Tomas's"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Minha Área"),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Login(),
                  //   ),
                  // );
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text("Lojas"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Lojas()));

                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Contato"),
                onTap: () {
                  Navigator.pop(context);

                  //Navegar para outra página
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Perfil"),
                onTap: () {
                  Navigator.pop(context);

                  //Navegar para outra página
                },
              ),
            ],
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('images/fundo.png'))),
        ));
  }
}
