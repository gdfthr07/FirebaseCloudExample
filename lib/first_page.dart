import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:therich/add_account.dart';
import 'package:therich/add_action.dart';

import 'my_card.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Bank'),
          ),
          body: StreamBuilder(
            stream: FirebaseFirestore.instance.collection('bank1').snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              return GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              childAspectRatio: 16/10),
                children: snapshot.data!.docs.map((e) =>  MyCard(e)).toList(),
              );


          },),
          floatingActionButton:   FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (){
              print('calsiti');
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AddNew()));
            },
          ),
        ),
      ),
    );
  }
}
