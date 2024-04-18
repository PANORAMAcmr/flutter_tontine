import 'package:flutter/material.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({super.key});

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inscription"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
                child: ListTile(
              leading: Icon(
                Icons.group,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("Etats des inscriptions"),
            )),
            SizedBox(
              height: 5,
            ),
            Card(
                child: ListTile(
              leading: Icon(
                Icons.warning_amber,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("Etats des sanctions"),
            )),
            SizedBox(
              height: 5,
            ),
            Card(
                child: ListTile(
              leading: Icon(
                Icons.wallet,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("Etats de la caisse"),
            )),
            SizedBox(
              height: 5,
            ),
            Card(
                child: ListTile(
              leading: Icon(
                Icons.bar_chart,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("Statistique de l'association"),
            )),
          ],
        ),
      ),
    );
  }
}
