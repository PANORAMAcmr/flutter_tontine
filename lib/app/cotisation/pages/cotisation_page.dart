import 'package:flutter/material.dart';

class CotisationPage extends StatefulWidget {
  const CotisationPage({super.key});

  @override
  State<CotisationPage> createState() => _CotisationPageState();
}

class _CotisationPageState extends State<CotisationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cotisation"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
                child: ListTile(
              leading: Icon(
                Icons.add,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("Nouvelle tontine"),
            )),
            SizedBox(
              height: 5,
            ),
            Card(
                child: ListTile(
              leading: Icon(
                Icons.list_alt,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("Consulter les cotisations"),
            )),
          ],
        ),
      ),
    );
  }
}
