import 'package:flutter/material.dart';
import 'package:startup_namer/change_name_card.dart';
import 'package:startup_namer/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController =
      TextEditingController(); //! _ is for private

  var myText = "Change Me";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text("Chatting App"),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child:
              ChangeNameCard(myText: myText, nameController: _nameController),
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var text = _nameController.text;

          if (text.length == 0) {
            Scaffold.of(context).showSnackBar(SnackBar(
              content: Text("Enter name first"),
            ));
          } else {
            myText = text;
            setState(() {}); //!When any change occured
          }
        },
        child: Icon(Icons.add),
        // mini: true, //!For small the size
      ),
    );
  }
}
