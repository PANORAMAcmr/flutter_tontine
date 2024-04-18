import 'package:flutter/material.dart';
import 'package:tontine/app/tontine/models/tontine_dto.dart';
import 'package:tontine/app/tontine/services/tontine_service.dart';
import 'package:tontine/core/form/validator.dart';
import 'package:go_router/go_router.dart';

class FormCreateCotisation extends StatefulWidget {
  const FormCreateCotisation({super.key});

  static String route = '/create-cotisation';

  @override
  State<FormCreateCotisation> createState() => _FormCreateCotisationState();
}

class _FormCreateCotisationState extends State<FormCreateCotisation> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _tontineNameController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouvelle Cotisation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nom'),
                controller: _firstNameController,
                validator: verifyIsEmpty,
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Prenom'),
                controller: _lastNameController,
                validator: verifyIsEmpty,
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Montant'),
                controller: _amountController,
                keyboardType: TextInputType.number,
                validator: verifyIsNumber,
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration:
                InputDecoration(labelText: 'Nom de la cotisation'),
                controller: _tontineNameController,
                validator: verifyIsEmpty,
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Date'),
                controller: _tontineNameController,
                validator: verifyIsEmpty,
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    context.pop();
                  }
                },
                child: Text('Créer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
