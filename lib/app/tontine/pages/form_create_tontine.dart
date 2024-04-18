import 'package:flutter/material.dart';
import 'package:tontine/app/tontine/models/tontine_dto.dart';
import 'package:tontine/app/tontine/services/tontine_service.dart';
import 'package:tontine/core/form/validator.dart';
import 'package:go_router/go_router.dart';

class FormCreateTontine extends StatefulWidget {
  const FormCreateTontine({super.key});

  @override
  State<FormCreateTontine> createState() => _FormCreateTontineState();
}

class _FormCreateTontineState extends State<FormCreateTontine> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _codeController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _amountController = TextEditingController();
  TontineService _tontineService = TontineService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nouvelle tontine'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Code'),
                  controller: _codeController,
                  validator: verifyIsEmpty,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Description'),
                  controller: _descriptionController,
                  validator: verifyIsEmpty,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Montant'),
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  validator: verifyIsNumber,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _tontineService.createTontine(Tontine.from(
                          _codeController.text,
                          _descriptionController.text,
                          double.parse(_amountController.text)));
                      context.pop();
                    }
                  },
                  child: Text('Créer'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
