import 'package:flutter/cupertino.dart';
import 'package:gbk_tour/data/models/distric/distric_res_model.dart';

abstract class DistricRespository{
  Future<List<DistricResModel>> getDistric({
    required BuildContext context,
    required int id,
    required String token,
  });
}