import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {

  late QueryDocumentSnapshot e ;



  MyCard(this.e, {Key? key}) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(widget.e['name']) ,
        subtitle: Text('Euros= ${widget.e['money']['euros']}\n'
            'Dollars= ${widget.e['money']['dollars']}\n'
            'Tl= ${widget.e['money']['tl']}'
      ,style: const TextStyle(
            fontSize: 15
          ),),
       leading: const Icon(Icons.delete),
        onTap: (){widget.e.reference.delete();},

    )
    );
  }
}
