// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/application/auth/register_bloc/register_bloc.dart';
import 'package:client_app/presentation/auth/phone_confirmation.dart';
import 'package:flutter/material.dart';

import 'package:client_app/presentation/auth/login_widget.dart';
import 'package:client_app/presentation/auth/register_page.dart';
import 'package:client_app/presentation/constants/colors.dart';
import 'package:client_app/presentation/core/custom_text_field.dart';
import 'package:client_app/presentation/core/primary_widgets.dart';
import 'package:client_app/presentation/welcome_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showpassword = false;
  @override
  Widget build(BuildContext context) {
    RegisterBloc _registerBloc = context.read<RegisterBloc>();
    return Scaffold(
      backgroundColor: SwiftColors.purple,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          padding: EdgeInsets.symmetric(horizontal: 43.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Form(
              autovalidateMode: _registerBloc.state.showErrors
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(alignment: Alignment.center, child: GreySeparator()),
                  SizedBox(height: 20.h),
                  Text('INSCRIVEZ-VOUS',
                      style: TextStyle(
                        fontFamily: 'future-friends',
                        fontWeight: FontWeight.w100,
                        fontSize: 24.sp,
                        color: SwiftColors.purple,
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Créez un nouveau compte d\'utilisateur',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Text(
                    'Nom et prenom*',
                    style: TextStyle(color: Color(0xff4D0060), fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: NameTextField(),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: SecondnameTextField(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Material(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nom d\'utilisateur*',
                          style: TextStyle(color: Color(0xff4D0060), fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        UserNameTExtField(),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Numéro du Téléphone*',
                    style: TextStyle(color: Color(0xff4D0060), fontSize: 16.sp),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  PhoneNumberTextField(),
                  SizedBox(
                    height: 20.h,
                  ),
                  Material(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mot de passe*',
                          style: TextStyle(color: Color(0xff4D0060), fontSize: 16.sp),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        PasswordTextField(),
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  PrimaryButton(
                    backColor: SwiftColors.purple,
                    frontColor: Colors.white,
                    onPressed: () {
                      BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.validateinfo());
                    },
                    text: 'Inscrivez-vous',
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Vous avez déjà un compte?',
                        style: TextStyle(color: SwiftColors.hintGreyColor, fontSize: 13.sp),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Connectez-Vous',
                          style: TextStyle(color: SwiftColors.purple, fontSize: 13.sp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  CustomTextField PasswordTextField() {
    return CustomTextField(
      obscureText: showpassword,
      hintText: 'Insérez votre mot de passe',
      icon: SvgPicture.asset('assets/icons/lock.svg'),
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            showpassword = !showpassword;
          });
        },
        icon: Icon(
          showpassword ? Icons.visibility : Icons.visibility_off,
          color: SwiftColors.purple,
        ),
      ),
      onChanged: (value) {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.setPassword(value));
      },
      validator: (value) {
        return BlocProvider.of<RegisterBloc>(context).state.password.value.fold(
              (l) => l.maybeMap(
                orElse: () => null,
                empty: (value) => 'Insérez votre mot de passe',
                invlaidPassword: (value) => 'Mot de passe invalide',
              ),
              (r) => null,
            );
      },
    );
  }
}

class PhoneNumberTextField extends StatelessWidget {
  const PhoneNumberTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: 'Insérez votre téléphone',
      icon: SvgPicture.asset('assets/icons/phone.svg'),
      onChanged: (value) {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.setPhoneNumber(value));
      },
      validator: (value) {
        return BlocProvider.of<RegisterBloc>(context).state.phoneNumber.value.fold(
              (l) => 'Numéro telephone invalide',
              (r) => null,
            );
      },
    );
  }
}

class UserNameTExtField extends StatelessWidget {
  const UserNameTExtField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: 'Insérez votre nom d\'utilisateur',
      icon: SvgPicture.asset('assets/icons/person.svg'),
      onChanged: (value) {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.setUserName(value));
      },
      validator: (value) {
        return BlocProvider.of<RegisterBloc>(context).state.usename.value.fold(
              (l) => l.maybeMap(
                orElse: () => null,
                empty: (value) => 'Insérez votre nom d\'utilisateur',
                exceedingLength: (value) => 'Nom d\'utilisateur trop long',
              ),
              (r) => null,
            );
      },
    );
  }
}

class SecondnameTextField extends StatelessWidget {
  const SecondnameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: 'Prénom',
      icon: SvgPicture.asset('assets/icons/person.svg'),
      onChanged: (value) {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.setSecondName(value));
      },
      validator: (value) {
        return BlocProvider.of<RegisterBloc>(context).state.secondName.value.fold(
              (l) => l.maybeMap(
                orElse: () => null,
                empty: (value) => 'Insérez votre prénom',
                exceedingLength: (value) => 'Prénom trop long',
              ),
              (r) => null,
            );
      },
    );
  }
}

class NameTextField extends StatelessWidget {
  const NameTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: 'Nom',
      icon: SvgPicture.asset('assets/icons/person.svg'),
      onChanged: (value) {
        BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.setFirstName(value));
      },
      validator: (value) {
        return BlocProvider.of<RegisterBloc>(context).state.firstName.value.fold(
              (l) => l.maybeMap(
                orElse: () => null,
                empty: (value) => 'Insérez votre nom',
                exceedingLength: (value) => 'Nom trop long',
              ),
              (r) => null,
            );
      },
    );
  }
}
