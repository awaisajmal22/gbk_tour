import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/config/local_storage/storage.dart';
import 'package:gbk_tour/core/bloc/distric/distric_event.dart';
import 'package:gbk_tour/core/bloc/distric/distric_state.dart';
import 'package:gbk_tour/data/models/distric/distric_res_model.dart';
import 'package:gbk_tour/data/repositories/distric/distric_respository.dart';

class DistricBloc extends Bloc<DistricEvent, DistricState> {
  DistricRespository repository;
  Storage storage;
  DistricBloc({required this.repository, required this.storage})
      : super(const GetDistricState(
          isloading: true,
        )) {
    on<GetDistricEvent>(
      (event, emit) async {
        final data = await getDistric(context: event.context, id: event.id);
        if (data.isEmpty) {
          emit(const GetDistricState(isloading: false));
        } else {
          emit(GetDistricState(isloading: false, modelList: data));
        }
      },
    );
    on<DistricLoadEvent>((event, emit) {
      state.getDistrics?.clear();
      emit(const GetDistricState(
          isloading: true,
        ));
    },);
  }

  Future<List<DistricResModel>> getDistric(
      {required BuildContext context, required int id}) async {
    return await repository.getDistric(
        context: context, id: id, token: await storage.getAuthToken());
  }
}
