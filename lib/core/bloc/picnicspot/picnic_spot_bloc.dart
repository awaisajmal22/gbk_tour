import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/config/local_storage/storage.dart';
import 'package:gbk_tour/core/bloc/picnicspot/picnic_spot_event.dart';
import 'package:gbk_tour/core/bloc/picnicspot/picnic_spot_state.dart';
import 'package:gbk_tour/data/models/picnicspot/picnic_spot_res_model.dart';
import 'package:gbk_tour/data/repositories/picnicspot/picnic_spot_repository.dart';

class PicnicSpotBloc extends Bloc<PicnicSpotEvent, PicnicSpotState> {
  PicnicSpotRepository repository;
  Storage storage;
  PicnicSpotBloc({
    required this.repository,
    required this.storage,
  }) : super(const GetPicnicSpotState(isloading: true)) {
    on<GetPicnicSpotEvent>(
      (event, emit) async {
      
        final data = await getPinicSpots(
            context: event.context, districId: event.districId);
        if (data.isEmpty) {
          emit(const GetPicnicSpotState(isloading: false));
        } else {
          emit(GetPicnicSpotState(isloading: false, modelList: data));
        }
      },
    );
    on<LoadPicnicSpotEvent>((event, emit) {
      state.getPicnicSpots?.clear();
      emit(const GetPicnicSpotState(isloading: true));
    },);
  }

  Future<List<PicnicSpotResModel>> getPinicSpots(
      {required BuildContext context, required int districId}) async {
    return await repository.getPicnicSpot(
        context: context,
        districtId: districId,
        token: await storage.getAuthToken());
  }
}
