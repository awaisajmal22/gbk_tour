import 'package:shared_preferences/shared_preferences.dart';

abstract class Storage{

Future setAuthToken(String token);
Future<String> getAuthToken();

Future clearSession();
Future setId(int id);
Future<int> getId();
Future setImage(String image);
Future<String> getImage();
Future setName(String name);
Future<String> getName();
  Future setPassword(String password);
  Future<String> getPassword();
  Future setPhoneAndEmail(String value);
  Future<String> getPhoneAndEmail();
}