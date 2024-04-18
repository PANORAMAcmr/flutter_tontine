import 'package:flutter/material.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({super.key});

  @override
  State<InscriptionPage> createState() => _InscriptionPageState();
}

class _InscriptionPageState extends State<InscriptionPage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(title: const Text("Inscription"),),

      body: const Text("Inscription"),
    );
  }
}
