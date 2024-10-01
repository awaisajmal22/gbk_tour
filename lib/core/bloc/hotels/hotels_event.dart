
import 'package:flutter/material.dart';
import 'package:gbk_tour/data/models/hotels/booking_model.dart';
import 'package:gbk_tour/data/models/hotels/hotels_res_model.dart';

@immutable 
abstract class HotelsEvent{}

@immutable
class HotelNavigationEvent implements HotelsEvent {
  final BuildContext ? context;
  final int index;
final HotelsResModel? detail;
final List<HotelsResModel> ? hotels;

 const HotelNavigationEvent({required this.index,this.detail,this.hotels,this.context});
}
@immutable
class GetHotelsEvent implements HotelsEvent{
  final BuildContext context;
  
  final int districId;
  const GetHotelsEvent({required this.context,required this.districId});
}

@immutable
class BookHotelEvent implements HotelsEvent{
  final BookingModel model;
  final BuildContext context;


  const BookHotelEvent({required this.context,required this.model,});
}