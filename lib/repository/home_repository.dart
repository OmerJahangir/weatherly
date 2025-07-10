import 'package:weatherly_app/data/network/api_services.dart';
import 'package:weatherly_app/res/app_url/app_url.dart';

class HomeRepository {
  static Future<dynamic> hitApi() async {
    var response = await ApiServices().getApi(AppUrl.url);
    return response;
  }
}
