import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gbk_tour/data/models/hotels/booking_model.dart';
import 'package:gbk_tour/data/models/hotels/hotels_res_model.dart';
import 'package:gbk_tour/data/network/api_services.dart';
import 'package:gbk_tour/data/network/api_url.dart';
import 'package:gbk_tour/data/repositories/hotels/hotels_repository.dart';

class DioHotelsRepository implements HotelsRepository {
  @override
  Future<List<HotelsResModel>> getHotels({
    required BuildContext context,
    required int districtId,
    required String token,
  }) async {
    List<HotelsResModel> modelList = <HotelsResModel>[];
    try {
      final response = await API().getRequestHeader(
          context, ApiUrl.hotels + districtId.toString(), token);
      if (response.statusCode == 200) {
        final data = response.data;
        print("Data is $data");
        data['data'].forEach((d) => modelList.add(HotelsResModel.fromJson(d)));
        print("Data Length ${modelList.length}");
      } else {}
    } catch (e) {}
    return modelList;
  }

  @override
  Future<bool> bookingHotel(
      {required BuildContext context,
      required String token,
      required BookingModel model}) async {
    bool isSuccess = false;
    try {
      final data = {
        "name": model.name,
        "cnic": model.cnic!.replaceAll('-', ''),
        "address": model.address,
        "phone": model.phone,
        "checkin": model.checkin, // (format: YYYY-MM-DD)
        "checkout": model.checkout, // (format: YYYY-MM-DD)
        "hotel_id": model.hotel_id
      };
      print("Auth Token $token");

      final response = await API().postRequestHeader(
          context, ApiUrl.booking, jsonEncode(data), token,
          isJsonType: true);
      if (response.statusCode == 200) {
        isSuccess = true;
      } else {
        isSuccess = false;
      }
    } catch (e) {}
    return isSuccess;
  }
}
