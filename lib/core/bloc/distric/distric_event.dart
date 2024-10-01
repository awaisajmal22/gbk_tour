import 'package:flutter/material.dart';

@immutable 
abstract class DistricEvent{
  
}

@immutable
class GetDistricEvent implements DistricEvent{
  final BuildContext context;
  final int id;
  const GetDistricEvent({required this.context,required this.id});
}
@immutable 
class DistricLoadEvent implements DistricEvent{
  
}