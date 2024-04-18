class Tontine {
  final String code;
  final String description;
  final double montant;

  Tontine(
      {required this.code, required this.description, required this.montant});

  static Tontine from(String code, String description, double montant) {
    return Tontine(code: code, description: description, montant: montant);
  }

  factory Tontine.fromJson(Map<String, dynamic> json) {
    return Tontine(
      code: json['code'] as String,
      description: json['description'] as String,
      montant: json['montant'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'description': description,
      'montant': montant,
    };
  }
}
