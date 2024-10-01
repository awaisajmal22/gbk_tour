import 'package:flutter/foundation.dart';
import 'package:gbk_tour/core/error/auth_error.dart';

import '../../../data/models/hotels/hotels_res_model.dart';

@immutable
abstract class HotelsState {
  final int index;
  final bool isloading;
  final AuthError? error;
  const HotelsState({required this.isloading, required this.index, this.error});
}

@immutable
class GetHotelsState extends HotelsState {
  final List<HotelsResModel>? hotelList;
  final HotelsResModel ? detail;
  const GetHotelsState(
      {required super.isloading, required super.index, this.hotelList,this.detail});
}


@immutable
class GetDetailsState extends HotelsState {
  final List<HotelsResModel>? hotelList;
  final HotelsResModel ? detail;
  const GetDetailsState(
      {required super.isloading, required super.index, this.hotelList,this.detail});
}


extension HotelsData on HotelsState {
  List<HotelsResModel>? get getHotels {
    final cls = this;
    if (cls is GetHotelsState) {
      return cls.hotelList;
    } else {
      return null;
    }
  }
}

extension GetHotelDetail on HotelsState {
  HotelsResModel? get getDetail {
    final cls = this;
    if (cls is GetDetailsState) {
      return cls.detail;
    } else {
      return null;
    }
  }
}

extension GetHotelList on HotelsState {
  List<HotelsResModel>? get hotelList {
    final cls = this;
    if (cls is GetDetailsState) {
      return cls.hotelList;
    } else {
      return null;
    }
  }
}
