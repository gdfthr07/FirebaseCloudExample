import 'package:flutter/material.dart';
import 'package:therich/add_account.dart';

class AddNew extends StatefulWidget {
  const AddNew({Key? key}) : super(key: key);

  @override
  _AddNewState createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    var nameController = TextEditingController();
    var idController = TextEditingController();
    var dollarController = TextEditingController();
    var euroController = TextEditingController();
    var tlController = TextEditingController();



    return SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                  key: formKey,
                  child: Column(

                children:  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(decoration: const InputDecoration(hintText: 'Name of Person'),
                    controller: nameController,),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(decoration: const InputDecoration(hintText: 'Account Id'),
                    controller: idController,),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(decoration: const InputDecoration(hintText: 'Amount of Dollars'),
                    controller: dollarController,),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(decoration: const InputDecoration(hintText: 'Amount of Euros'),
                    controller: euroController,),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(decoration: const InputDecoration(hintText: 'Amount of TL'),
                    controller: tlController,),
                  ),
                ],
              )
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: (){
              var object = AddAccount(nameController.text, dollarController.text, tlController.text,
                  euroController.text, idController.text);
              object.adding();
              Navigator.pop(context);
            },
          ),
        )
    );
  }
}
