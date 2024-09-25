import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gbk_tour/core/blocs/auth/auth_bloc.dart';
import 'package:gbk_tour/core/blocs/auth/auth_event.dart';

extension AuthNavigationExtension on BuildContext {
  void navigateAuth(int index) {
    BlocProvider.of<AuthBloc>(this).add(AuthNavigationEvent(index: index));
  }
}
