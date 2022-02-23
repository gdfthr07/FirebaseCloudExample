import 'package:cloud_firestore/cloud_firestore.dart';

class AddAccount {
  late String accountId;
  late String name ;
  late String dollar ;
  late String tl ;
  late String euro ;

  AddAccount(this.name, this.dollar, this.tl, this.euro, this.accountId);

  adding()  {
  FirebaseFirestore.instance.collection('bank1').doc(accountId).set({'money': {
    "dollars": dollar,
    "euros" : euro,
    "tl":tl
  },
    'name': name
  });
  }

}