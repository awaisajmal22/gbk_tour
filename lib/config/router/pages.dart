import 'package:flutter/material.dart';
import 'package:gbk_tour/config/router/routes.dart';
import 'package:gbk_tour/data/models/distric/distric_res_model.dart';
import 'package:gbk_tour/data/models/picnicspot/picnic_spot_res_model.dart';
import 'package:gbk_tour/data/models/province/province_res_model.dart';
import 'package:gbk_tour/screens/auth/auth_screen.dart';
import 'package:gbk_tour/screens/district/district_screen.dart';
import 'package:gbk_tour/screens/home/home_screen.dart';
import 'package:gbk_tour/screens/hotels/hotels_screen.dart';
import 'package:gbk_tour/screens/picnicspot/picnic_spot_screen.dart';
import 'package:gbk_tour/screens/splash/splash_screen.dart';

class Pages {
  static Route<dynamic> onGeneratingRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.auth:
        return MaterialPageRoute(builder: (context) => const AuthScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (context) =>  HomeScreen());
      case Routes.distric:
      return MaterialPageRoute(builder: (context){
        var model = settings.arguments as ProvinceResModel;
    
        return DistrictScreen(model: model);
      });
      case Routes.picnicspot:return  MaterialPageRoute(builder: (context){
var model = settings.arguments as DistricResModel;
return PicnicSpotScreen(model: model);
      });
     case Routes.hotels: 
     return MaterialPageRoute(builder: (context){
      var model = settings.arguments as PicnicSpotResModel;
      return HotelsScreen(model: model);
     });
      default:
        return _ErroRoute();
    }
  }

  static Route<dynamic> _ErroRoute() {
    return MaterialPageRoute(builder: (context) {
      return const Scaffold(
        body: Center(
          child: Text('Error Route'),
        ),
      );
    });
  }
}
