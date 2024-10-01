import 'package:flutter/material.dart';
import 'package:gbk_tour/data/models/picnicspot/picnic_spot_res_model.dart';

abstract class PicnicSpotRepository{
  Future<List<PicnicSpotResModel>> getPicnicSpot({
    required BuildContext context,
    required int districtId,
    required String token,
  });
}