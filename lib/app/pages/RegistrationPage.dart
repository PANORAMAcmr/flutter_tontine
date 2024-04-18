import 'package:flutter/material.dart';
import 'HomePage.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  get image => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Inscription"),
          foregroundColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: ListView(
          padding: const EdgeInsets.all(30.0),
          children: [
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('images/12.png'),
                      ))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        icon: const Icon(Icons.person),
                        hintText: 'Enter your name',
                        labelText: 'Name',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.phone),
                        border: OutlineInputBorder(),
                        hintText: 'Enter a phone number',
                        labelText: 'Phone',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter valid phone number';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: const Icon(Icons.calendar_today),
                        border: OutlineInputBorder(),
                        hintText: 'Enter your date of birth',
                        labelText: 'Dob',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter valid date';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: const Text(
                              'Submit',
                              style: TextStyle(),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
