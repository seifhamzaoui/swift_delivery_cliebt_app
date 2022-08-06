// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/auth/register_magasin/choose_account_type.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:client_app/application/auth/register_bloc/register_bloc.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';

class AddWorkingTimeInfo extends StatefulWidget {
  const AddWorkingTimeInfo({Key? key}) : super(key: key);

  @override
  State<AddWorkingTimeInfo> createState() => _AddWorkingTimeInfoState();
}

class _AddWorkingTimeInfoState extends State<AddWorkingTimeInfo> {
  List<DateTime> hoursofTheDy = [];
  List<DateTime> daysofTheWeek = List.generate(7, (index) => DateTime(2022, 5, index + 1));
  late DateTime beginhour;
  late DateTime endhour;
  late DateTime beginDay;
  late DateTime endDay;
  bool Alldays = false;
  @override
  void initState() {
    for (int i = 0; i < 24; i++) {
      hoursofTheDy.add(DateTime(2022, 1, 1, i));
      hoursofTheDy.add(DateTime(2022, 1, 1, i, 30));
    }
    beginhour = hoursofTheDy[0];
    endhour = hoursofTheDy[0];
    beginDay = daysofTheWeek[0];
    endDay = daysofTheWeek[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.returnTo());
        return false;
      }),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 56),
          child: Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 72),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'COMPLETEZ VOTRE PROFILE DU MAGASIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: SwiftColors.purple, fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 72),
                    Text(
                      'Horaires de travail*',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('De:'),
                        DropdownButton<DateTime>(
                          value: beginhour,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: hoursofTheDy
                              .map((hour) => DropdownMenuItem(
                                    child: Text(formatDate(hour, [
                                      HH,
                                      ':',
                                      nn,
                                    ])),
                                    value: hour,
                                  ))
                              .toList(),
                          onChanged: (DateTime? newValue) {
                            setState(() {
                              beginhour = newValue ?? beginhour;
                            });
                          },
                        ),
                        Text('à :'),
                        DropdownButton<DateTime>(
                          value: endhour,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: hoursofTheDy
                              .map((hour) => DropdownMenuItem(
                                    child: Text(formatDate(hour, [
                                      HH,
                                      ':',
                                      nn,
                                    ])),
                                    value: hour,
                                  ))
                              .toList(),
                          onChanged: (DateTime? newValue) {
                            setState(() {
                              endhour = newValue ?? endhour;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 46),
                    Text(
                      'Jours de travail*',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('De:'),
                        DropdownButton<DateTime>(
                          value: beginDay,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: daysofTheWeek
                              .map((day) => DropdownMenuItem(
                                    child: Text(formatDate(day, [DD], locale: FrenchDateLocale())),
                                    value: day,
                                  ))
                              .toList(),
                          onChanged: Alldays
                              ? null
                              : (DateTime? newValue) {
                                  setState(() {
                                    beginDay = newValue ?? beginDay;
                                  });
                                },
                        ),
                        Text('à :'),
                        DropdownButton<DateTime>(
                          value: endDay,
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: daysofTheWeek
                              .map((day) => DropdownMenuItem(
                                    child: Text(formatDate(day, [DD], locale: FrenchDateLocale())),
                                    value: day,
                                  ))
                              .toList(),
                          onChanged: Alldays
                              ? null
                              : (DateTime? newValue) {
                                  setState(() {
                                    endDay = newValue ?? endDay;
                                  });
                                },
                        ),
                      ],
                    ),
                    const SizedBox(height: 17),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: Alldays,
                            activeColor: SwiftColors.purple,
                            onChanged: (val) {
                              setState(() {
                                Alldays = val ?? Alldays;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                              side: const BorderSide(
                                color: SwiftColors.hintGreyColor,
                                width: 0,
                              ),
                            )),
                        Text(
                          'Tout les jours de semaine',
                        ),
                      ],
                    ),
                    const SizedBox(height: 72),
                    Align(
                      alignment: Alignment.center,
                      child: PrimaryButton(
                          backColor: SwiftColors.purple,
                          frontColor: Colors.white,
                          onPressed: () {
                            BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.setWorkingTime(
                              beginDay: beginDay,
                              endDay: endDay,
                              beginHour: beginhour,
                              endHour: endhour,
                              workAlldays: Alldays,
                            ));
                          },
                          text: 'Continuer'),
                    )
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
