import 'package:flutter/cupertino.dart';
import 'package:gbk_tour/data/models/province/province_res_model.dart';

abstract class ProvinceRepository{
  Future<List<ProvinceResModel>> getProvince({
    required BuildContext context,
    required String token,
  });
}