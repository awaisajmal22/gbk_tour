
import 'package:flutter/material.dart';
import 'package:gbk_tour/core/error/auth_error.dart';
import 'package:gbk_tour/utils/dialog/generic_dialog.dart';


Future<void> showAuthErrorDailog({
  required AuthError authError,
  required BuildContext contxt,
}) {
  return showGenericDailog<void>(
    context: contxt,
    optionBuiler: () => {
      'OK': false,
    },
    title: authError.dailogTitle,
    content: authError.dailogError,
  );
}