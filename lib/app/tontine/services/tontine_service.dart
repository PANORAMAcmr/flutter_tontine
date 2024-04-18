import 'package:tontine/app/tontine/models/tontine_dto.dart';
import 'package:tontine/core/api_helper.dart';

class TontineService {
  static const String path = "/tontine";
  ApiHelper apiHelper = ApiHelper();

  Future<dynamic> createTontine(Tontine dto) async {
    final response = await apiHelper.post(path, data: dto.toJson());
    return Tontine.fromJson(response);
  }
}
