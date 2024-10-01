import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gbk_tour/data/models/hotels/booking_model.dart';
import 'package:gbk_tour/data/models/hotels/hotels_res_model.dart';
import 'package:gbk_tour/data/models/picnicspot/picnic_spot_res_model.dart';

abstract class HotelsRepository{
  Future<List<HotelsResModel>> getHotels({
    required BuildContext context,
    required int districtId,
    required String token,
  });

  Future<bool> bookingHotel({required BuildContext context, required String token, required BookingModel model});
}