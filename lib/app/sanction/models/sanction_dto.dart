class Sanction{
  final String firstName;
  final String lastName;
  final String sexe;
  final DateTime startDate;
  final String phoneNumber;
  final String motif;
  final double amande;
  final CategorieSanction categorieSanction;
final String statut;

  Sanction({required this.firstName, required this.lastName, required this.sexe, required this.startDate, required this.phoneNumber, required this.motif, required this.amande, required this.categorieSanction, required this.statut});
 }

class CategorieSanction{

}