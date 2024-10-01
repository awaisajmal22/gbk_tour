
import 'package:flutter/material.dart';

@immutable
abstract class HomeEvent{

}
@immutable
class GetHomeDataEvent implements HomeEvent{
final BuildContext context;
const GetHomeDataEvent({required this.context});
}