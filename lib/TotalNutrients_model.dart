import 'ENERCKCAL_model.dart';

class TotalNutrients {
  ENERCKCAL eNERCKCAL;
  ENERCKCAL fAT;

  TotalNutrients({this.eNERCKCAL, this.fAT});

  TotalNutrients.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'] != null
        ? new ENERCKCAL.fromJson(json['ENERC_KCAL'])
        : null;
    fAT = json['FAT'] != null ? new ENERCKCAL.fromJson(json['FAT']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eNERCKCAL != null) {
      data['ENERC_KCAL'] = this.eNERCKCAL.toJson();
    }
    if (this.fAT != null) {
      data['FAT'] = this.fAT.toJson();
    }
    return data;
  }
}
