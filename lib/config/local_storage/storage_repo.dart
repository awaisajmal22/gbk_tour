
import 'package:gbk_tour/config/local_storage/storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefStorage implements Storage {
 
  static const _authToken = 'token';
 
  static const _password = 'password';
  static const _name ='name';
  static const _image ='image';
  static const _id ='id';
 
static const _phoneEmail ='phoneEmail';
  Future setAuthToken(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString(_authToken,"Bearer $token");
  }

  Future<String> getAuthToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final authToken = pref.getString(_authToken) ?? '';
    print("Auth Token $authToken");
    return authToken;
  }

  
Future setPassword(String password) async{
     SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setString(_password, password);
  }

Future<String> getPassword() async{
  SharedPreferences pref = await SharedPreferences.getInstance();
  final id =  pref.getString(_password) ??'';
  print("ID $id");
  return id;
}
 Future clearSession() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
   
    await prefs.remove(_authToken);
   await prefs.remove(_phoneEmail);
    await prefs.remove(_password);
  }
  
  @override
  Future<String> getPhoneAndEmail()async {
    SharedPreferences pref = await SharedPreferences.getInstance();
  final phoneEmail =  pref.getString(_phoneEmail) ??'';
  
  return phoneEmail;
  }
  
  @override
  Future setPhoneAndEmail(String value) async{
   SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setString(_phoneEmail, value);
  }
  
  @override
  Future<String> getImage()async {
   SharedPreferences pref = await SharedPreferences.getInstance();
  final image =  pref.getString(_image) ??'';
  
  return image;
  }
  
  @override
  Future<String> getName()async {
     SharedPreferences pref = await SharedPreferences.getInstance();
  final name =  pref.getString(_name) ??'';
  
  return name;
  }
  
  @override
  Future setImage(String image)async {
       SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setString(_image, image);
  }
  
  @override
  Future setName(String name) async{
     SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setString(_name, name);
  }
  
  @override
  Future<int> getId() async{
SharedPreferences pref = await SharedPreferences.getInstance();
  final id =  pref.getInt(_id) ??0;
  
  return id;
  }
  
  @override
  Future setId(int id)async {
  SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setInt(_id, id);
  }
}
