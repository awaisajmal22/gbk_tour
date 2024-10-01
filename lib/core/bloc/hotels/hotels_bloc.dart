import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/config/local_storage/storage.dart';
import 'package:gbk_tour/core/bloc/home/home_state.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_event.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_state.dart';
import 'package:gbk_tour/data/models/hotels/booking_model.dart';
import 'package:gbk_tour/data/models/hotels/hotels_res_model.dart';
import 'package:gbk_tour/data/repositories/hotels/hotels_repository.dart';
import 'package:gbk_tour/utils/toast.dart';

class HotelsBloc extends Bloc<HotelsEvent, HotelsState> {
  HotelsRepository repository;
  Storage storage;
  HotelsBloc({required this.repository, required this.storage})
      : super(const GetHotelsState(isloading: true, index: 1)) {
    on<HotelNavigationEvent>(
      (event, emit) async {
        if (event.index == 1) {
          emit(GetHotelsState(
            isloading: false,
            index: event.index,
            hotelList: event.hotels,
            detail: event.detail,
          ));
        } else {
          emit(GetDetailsState(
            isloading: false,
            index: event.index,
            hotelList: event.hotels,
            detail: event.detail,
          ));
        }
      },
    );
    on<GetHotelsEvent>(
      (event, emit) async {
        emit(const GetHotelsState(isloading: true, index: 1));
        final data =
            await getHotels(context: event.context, districId: event.districId);
        if (data.isEmpty) {
          emit(const GetHotelsState(isloading: false, index: 1));
        } else {
          emit(GetHotelsState(isloading: false, index: 1, hotelList: data));
        }
      },
    );
    on<BookHotelEvent>(
      (event, emit) async {
        emit(GetDetailsState(
          isloading: true,
          index: state.index,
      detail: state.getDetail,
            hotelList: state.getHotels,
        ));
        final success =
            await bookHotel(context: event.context, model: event.model);
        if (success) {
          emit(GetDetailsState(
            isloading: false,
            index: 2,
            detail: state.getDetail,
            hotelList: state.getHotels,
          ));
          
          toast(msg: 'Booking Info Send Successfully/', context: event.context);
        } else {
          emit(GetDetailsState(
            isloading: false,
            index: state.index,
            detail: state.getDetail,
            hotelList: state.getHotels,
          ));
        }
      },
    );
  }
  Future<List<HotelsResModel>> getHotels(
      {required BuildContext context, required int districId}) async {
    return await repository.getHotels(
        context: context,
        districtId: districId,
        token: await storage.getAuthToken());
  }

  Future<bool> bookHotel(
      {required BuildContext context, required BookingModel model}) async {
    return await repository.bookingHotel(
        context: context, token: await storage.getAuthToken(), model: model);
  }
}
