import 'package:flutter/material.dart';

@immutable 
abstract class PicnicSpotEvent{
  
}

@immutable
class GetPicnicSpotEvent implements PicnicSpotEvent{
  final BuildContext context;
  final int districId;
  const GetPicnicSpotEvent({required this.context,required this.districId});
}

@immutable
class LoadPicnicSpotEvent implements PicnicSpotEvent {
  
}