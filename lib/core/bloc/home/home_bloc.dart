import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/config/local_storage/storage.dart';
import 'package:gbk_tour/core/bloc/home/home_event.dart';
import 'package:gbk_tour/core/bloc/home/home_state.dart';
import 'package:gbk_tour/data/models/province/province_res_model.dart';
import 'package:gbk_tour/data/repositories/province/province_repository.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  ProvinceRepository repository;
  Storage storage;
   HomeBloc({required this.repository,required this.storage}) : super(const GetHomeDataState(isloading: true)){
    on<GetHomeDataEvent>((event, emit) async {
      final data = await getHomeData(context: event.context);
      if(data.isNotEmpty){
        emit(GetHomeDataState(isloading: false,provinces: data));
      }
    },);
   }

  Future<List<ProvinceResModel>> getHomeData({required BuildContext context,})async {
    
return await repository.getProvince(context: context, token: await storage.getAuthToken());

   }
}