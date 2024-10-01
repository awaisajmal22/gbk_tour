import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_bloc.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_state.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/data/models/hotels/hotels_res_model.dart';
import 'package:gbk_tour/data/models/picnicspot/picnic_spot_res_model.dart';
import 'package:gbk_tour/screens/hotels/component/hotel_book_form.dart';
import 'package:gbk_tour/screens/hotels/component/hotel_detail.dart';
import 'package:gbk_tour/screens/hotels/component/hotel_tile.dart';
import 'package:gbk_tour/screens/hotels/component/hotels_widget.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:gbk_tour/utils/dialog/auth_error_dialog.dart';
import 'package:gbk_tour/utils/loader/loading.dart';
import 'package:gbk_tour/utils/progress_indicator.dart';
import 'package:gbk_tour/utils/text_button.dart';

class HotelsScreen extends HookWidget {
  final PicnicSpotResModel model;
  const HotelsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelsBloc, HotelsState>(
      builder: (context, state) {
        switch (state.index) {
          case 1:
            return HotelWidget(
              model: model,
            );
          case 2:
            return const HotelDetail();
          case 3:
            return const HotelBookForm();
          default:
            return const SizedBox();
        }
      },
    );
  }
}
