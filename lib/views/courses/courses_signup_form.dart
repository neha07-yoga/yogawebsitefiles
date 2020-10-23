import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class CoursesSignUpForm extends StatefulWidget {
  @override
  _CoursesSignUpFormState createState() => _CoursesSignUpFormState();
}

class _CoursesSignUpFormState extends State<CoursesSignUpForm> {
  //final databaseReference = Firestore.instance;
  final _formHolderFirstName = TextEditingController();
  final _formHolderLastName = TextEditingController();
  final _formHolderEmail = TextEditingController();
  final _formHolderMessage = TextEditingController();

  clearTextInput() {
    _formHolderFirstName.clear();
    _formHolderLastName.clear();
    _formHolderEmail.clear();
    _formHolderMessage.clear();
  }

  final Map<String, dynamic> _formData = {
    'firstName': '',
    'lastName': '',
    'email': '',
    'message': ''
  };

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildFirstName() {
    return TextFormField(
      controller: _formHolderFirstName,
      decoration: InputDecoration(
          labelText: 'First Name', border: OutlineInputBorder()),
      validator: (String value) {
        if (value.isEmpty || value.length < 2) {
          return 'A valid First Name is required';
        }
        return null;
      },
      onChanged: (String value) {
        _formData['firstName'] = value;
      },
    );
  }

  Widget _buildLastName() {
    return TextFormField(
      controller: _formHolderLastName,
      decoration:
          InputDecoration(labelText: 'Last Name', border: OutlineInputBorder()),
      validator: (String value) {
        if (value.isEmpty || value.length < 2) {
          return 'A valid Last Name is required';
        }
        return null;
      },
      onChanged: (String value) {
        _formData['lastName'] = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      controller: _formHolderEmail,
      decoration:
          InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
      validator: (String value) {
        if (value.isEmpty ||
            !RegExp(r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value)) {
                return 'Please enter a valid email';
        }
      },
      onChanged: (String value) {
        _formData['email'] = value;
      },
    );
  }

  Widget _buildMessage() {
    return TextFormField(
      controller: _formHolderMessage,
      decoration:
          InputDecoration(labelText: 'Message', border: OutlineInputBorder()),
      validator: (String value) {
        if (value.isEmpty || value.length < 10) {
          return 'Your Query should have atleast 10 characters';
        }
        return null;
      },
      onChanged: (String value) {
        _formData['message'] = value;
      },
    );
  }

  Widget _buildSubmitButton() {
    return RaisedButton(
        color: Color.fromARGB(255, 17, 30, 108),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
        ),
        child: Text(
          ' Submit ',
          style: TextStyle(fontSize: 16),
        ),
        onPressed: () async {
                if(!_formkey.currentState.validate()){
                  return ;
                }
                _formkey.currentState.save();
                // databaseReference.collection("mail").add({
                //   'to': 'neha.satyamyoga@gmail.com',
                //   'cc': _formData['email'],
                //   'message': {
                //     'subject': 'Query from ' +
                //         _formData['firstName'] +
                //         ' ' +
                //         _formData['lastName'],
                //     'text': _formData['message']
                //   }
                // });
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          'Message',
                          style: TextStyle(color: Colors.white),
                        ),
                        content: Text(
                          'Your Query has been submitted !',
                          style: TextStyle(color: Colors.white),
                        ),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('OK'),
                            onPressed: () => Navigator.of(context).pop(),
                          )
                        ],
                        backgroundColor: Color.fromARGB(255, 17, 30, 108),
                        elevation: 24,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                      );
                    });
                setState(() {
                  clearTextInput();
                });
              });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              _buildFirstName(),
              SizedBox(
                height: 20,
              ),
              _buildLastName(),
              SizedBox(
                height: 20,
              ),
              _buildEmail(),
              SizedBox(
                height: 20,
              ),
              _buildMessage(),
              SizedBox(
                height: 20,
              ),
              _buildSubmitButton()
            ],
          ),
        ));
  }
}
