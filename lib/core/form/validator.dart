String? verifyIsEmpty(String? value){
  if (value == null || value.isEmpty) {
    return 'Veuillez entrer un code';
  }
  return null;
}String? verifyIsNumber(String? value){
  if (value == null || value.isEmpty) {
    return 'Veuillez entrer un montant';
  }
  if (double.tryParse(value) == null) {
    return 'Veuillez entrer un nombre valide';
  }
  return null;
}