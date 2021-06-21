import 'package:flutter/material.dart';
import 'package:flutter_project_contact/contact_model.dart';

class ContactList extends StatefulWidget {
  @override
  ContactListState createState() => ContactListState();
}

class ContactListState extends State<ContactList> {

  List<Contact> contacts = [
    Contact(name: 'Benoit Poelvoorde', img: 'assets/benoit.jpg'),
    Contact(name: 'Alain Delon', img: 'assets/alain.jpeg'),
    Contact(name: 'Vincent Cassel', img: 'assets/vincent.jpg'),
    Contact(name: 'Catherine deveuve', img: 'assets/catherine.jpg'),
    Contact(name: 'Jean Dujardin', img: 'assets/jean.jpg'),
    Contact(name: 'Joey Starr', img: 'assets/joey.jpg'),
    Contact(name: 'Marion Cotillard', img: 'assets/marion.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'), 
        actions: <Widget>[
          Icon(Icons.search),
          Icon(Icons.more_vert)
        ],
        ),
        body: ListView.builder(
          itemCount: contacts.length,
            itemBuilder: (context, index){
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 40.0),
              child: Card(
                child: ListTile(
                  onTap: (){

                  },
                  title: Text(contacts[index].name),
                  leading: CircleAvatar(backgroundImage: AssetImage('${contacts[index].img}'),),
                ),
              ),
            );
          },
          ),
    );
  }
}