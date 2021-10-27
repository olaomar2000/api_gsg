
import 'package:shared_preferences/shared_preferences.dart';

class SPHelper {
  SPHelper._();
  static SPHelper spHelper = SPHelper._();

  SharedPreferences sharedPreferences;

  Future<SharedPreferences> initSharedPrefrences() async {
    if (sharedPreferences == null) {
      sharedPreferences = await SharedPreferences.getInstance();
      return sharedPreferences;
    } else {
      return sharedPreferences;
    }
  }

  setToken(String value) async {
    sharedPreferences = await initSharedPrefrences();
    sharedPreferences.setString('token', value);

  }

  Future<String> getToken() async {
    sharedPreferences = await initSharedPrefrences();
    String accessToken = sharedPreferences.getString('token');
    return accessToken;
  }
}
