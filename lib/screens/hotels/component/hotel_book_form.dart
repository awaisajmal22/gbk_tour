import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gbk_tour/config/extensions/height_width_box_extension.dart';
import 'package:gbk_tour/config/extensions/size_extension.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_bloc.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_event.dart';
import 'package:gbk_tour/core/bloc/hotels/hotels_state.dart';
import 'package:gbk_tour/core/colors/color_palette.dart';
import 'package:gbk_tour/data/models/hotels/booking_model.dart';
import 'package:gbk_tour/data/models/hotels/hotels_res_model.dart';
import 'package:gbk_tour/gen/assets.gen.dart';
import 'package:gbk_tour/utils/app_text.dart';
import 'package:gbk_tour/utils/background.dart';
import 'package:gbk_tour/utils/cnic_formatter.dart';
import 'package:gbk_tour/utils/text_button.dart';
import 'package:gbk_tour/utils/text_field.dart';
import 'package:gbk_tour/utils/toast.dart';
import 'package:intl/intl.dart';

class HotelBookForm extends HookWidget {
  const HotelBookForm({super.key});

  @override
  Widget build(BuildContext context) {
    final _fullName = useTextEditingController();
    final _email = useTextEditingController();
    final _phone = useTextEditingController();
    final _cnic = useTextEditingController();
    final _address = useTextEditingController();
    final _checkIn = useTextEditingController();
    final _checkOut = useTextEditingController();
    HotelsResModel data = context.read<HotelsBloc>().state.getDetail!;

    return Scaffold(
      body: background(
          context: context,
          child: SafeArea(child: BlocBuilder<HotelsBloc, HotelsState>(
            builder: (context, state) {
              return PopScope(
                canPop: false,
                onPopInvoked: (val) {
                  if (val == false) {
                    context.read<HotelsBloc>().add(HotelNavigationEvent(
                        context: context,
                        index: 2,
                        detail: state.getDetail,
                        hotels: state.getHotels));
                  }
                },
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        children: [
                          Assets.images.logo
                              .image(height: context.getSize.height * 0.2),
                          appText(
                            context: context,
                            text: "Booking Form",
                            fontSize: 36,
                            fontWeight: FontWeight.w800,
                          ),
                          context.heightBox(h: 0.008),
                          textField(
                            controller: _fullName,
                            hintText: 'Enter your full name',
                            context: context,
                          ),
                          context.heightBox(h: 0.01),
                          textField(
                            controller: _email,
                            hintText: 'Enter your email address',
                            context: context,
                          ),
                          context.heightBox(h: 0.01),
                          textField(
                            controller: _phone,
                            textInputType: TextInputType.phone,
                            hintText: 'Enter your phone number',
                            context: context,
                          ),
                          context.heightBox(h: 0.01),
                          textField(
                            inputFormatter: [CnicFormatter()],
                            onChange: (value) {
                              _cnic.text = value;
                            },
                            textInputType: TextInputType.number,
                            hintText: 'Enter your cnic',
                            context: context,
                          ),
                          context.heightBox(h: 0.01),
                          textField(
                            onChange: (value) {
                              _address.text = value;
                            },
                            hintText: 'Enter your address',
                            context: context,
                          ),
                          context.heightBox(h: 0.01),
                          Row(
                            children: [
                              Expanded(
                                child: textField(
                                  readOnly: true,
                                  controller: _checkIn,
                                  onTap: () {
                                    _showDatePicker(context, onChange: (val) {
                                      _checkIn.text =
                                          '${val.year}-${val.month}-${val.day}';
                                    });
                                  },
                                  hintText: 'Check-In',
                                  context: context,
                                ),
                              ),
                              context.widthBox(w: 0.02),
                              Expanded(
                                child: textField(
                                  readOnly: true,
                                  controller: _checkOut,
                                  onTap: () {
                                    _showDatePicker(context, onChange: (val) {
                                      _checkOut.text =
                                          '${val.year}-${val.month}-${val.day}';
                                    });
                                  },
                                  hintText: 'Check-Out',
                                  context: context,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: FittedBox(
                        child: state.isloading
                            ? const CircularProgressIndicator(
                                color: ColorPalette.white,
                              )
                            : textButton(
                                bgColor: Colors.black,
                                context: context,
                                title: 'BOOK NOW',
                                onTap: () {
                                  if (_checkIn.text.isEmpty) {
                                    toast(
                                        msg: 'Pick Check-In Date First.',
                                        context: context);
                                  } else {
                                    context.read<HotelsBloc>().add(
                                        BookHotelEvent(
                                            model: BookingModel(
                                                hotel_id: state.getDetail!.id!,
                                                name: _fullName.text,
                                                cnic: _cnic.text,
                                                address: _address.text,
                                                checkin: _checkIn.text,
                                                checkout: _checkOut.text,
                                                phone: _phone.text),
                                            context: context));
                                  }
                                }),
                      ),
                    ),
                  ],
                ),
              );
            },
          ))),
    );
  }

  void _showDatePicker(BuildContext context,
      {required Function(DateTime) onChange}) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Material(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            border: Border(
                top: BorderSide(
              color: ColorPalette.white,
            )),
            image: DecorationImage(
                image: Assets.images.background.provider(), fit: BoxFit.cover),
          ),
          height: context.getSize.height * 0.3,
          child: Column(
            children: [
              SizedBox(
                height: context.getSize.height * 0.22,
                child: CupertinoTheme(
                  data: const CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle: TextStyle(
                        color:
                            Colors.white, // Change this to any color you want
                        fontSize: 18,
                      ),
                    ),
                  ),
                  child: CupertinoDatePicker(
                      initialDateTime: DateTime.now(),
                      mode: CupertinoDatePickerMode.date,
                      onDateTimeChanged: (val) {
                        onChange(val);
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: textButton(
                    context: context,
                    title: 'Done',
                    onTap: () {
                      Navigator.of(context).pop();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
