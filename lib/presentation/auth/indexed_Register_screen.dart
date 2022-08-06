import 'package:client_app/application/auth/register_bloc/register_bloc.dart';
import 'package:client_app/application/location/location_bloc.dart';
import 'package:client_app/injectable.dart';
import 'package:client_app/presentation/auth/phone_confirmation.dart';
import 'package:client_app/presentation/auth/register_magasin/add_magasin_info.dart';
import 'package:client_app/presentation/auth/register_magasin/add_working_time_info.dart';
import 'package:client_app/presentation/auth/register_magasin/choose_account_type.dart';
import 'package:client_app/presentation/auth/register_magasin/choose_magasin_type.dart';
import 'package:client_app/presentation/auth/register_magasin/choose_restaurant_type.dart';
import 'package:client_app/presentation/auth/register_magasin/magasin_map_localisation.dart';
import 'package:client_app/presentation/auth/register_magasin/waiting_for_approvals.dart';
import 'package:client_app/presentation/auth/register_page.dart';
import 'package:client_app/presentation/client/choose_market_screen.dart';
import 'package:client_app/presentation/constants/enums.dart';
import 'package:client_app/presentation/error/gps_required.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IndexedRegisterPage extends StatelessWidget {
  const IndexedRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
        create: (context) => getIt<RegisterBloc>()..add(RegisterEvent.started()),
        child: BlocConsumer<RegisterBloc, RegisterState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: IndexedStack(
                  index: state.index,
                  children: [
                    RegisterPage(),
                    PhoneConfirmation(),
                    ChooseAccountType(),
                    ChooseMagasinType(),
                    ChooseRestaurantType(),
                    AddMagasinInfo(),
                    AddWorkingTimeInfo(),
                    context.watch<LocationBloc>().state.maybeMap(
                          orElse: () => GpsRequired(),
                          positionlocated: (s) => MagasinMapLocalisation(),
                        ),
                    WaitingForApprovals()
                  ],
                ),
              ),
            );
          },
          listener: (context, state) {
            if (state.index == 2) {
              state.accountType.fold(() => null, (accountType) {
                if (accountType == AccountTypes.client)
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return ChoosemarketScreen();
                    },
                  ));
              });
            }
          },
        ));
  }
}

void main(List<String> args) {
  List.generate(24, (index) => DateTime(2022, 1, 1, index));
}
