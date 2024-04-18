import 'package:flutter/material.dart';

class TontinePage extends StatefulWidget {
  const TontinePage({super.key});

  @override
  State<TontinePage> createState() => _TontinePageState();
}

class _TontinePageState extends State<TontinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tontine"),
      ),
      body:   SingleChildScrollView(
        child: Column(
          children: [
            Card(
                child: ListTile(
              leading: Icon(Icons.add,color: Theme.of(context).primaryColor,),
              title: Text("Nouvelle tontine"),
            )),
            SizedBox(height: 5,),
            Card(
                child: ListTile(
              leading: Icon(Icons.list_alt,color: Theme.of(context).primaryColor,),
              title: Text("Consulter les tontines"),
            )),
            SizedBox(height: 5,),
            Card(
                child: ListTile(
              leading: Icon(Icons.history,color: Theme.of(context).primaryColor,),
              title: Text("Historique tontine"),
            )),
          ],
        ),
      ),
    );
  }
}
