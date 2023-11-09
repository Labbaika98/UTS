// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:labbaika/src/features/auth/presentation/sign_in_controller.dart';
import 'package:labbaika/src/features/home/presentation/botnavbar_screen.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class SignInScreen extends StatefulHookConsumerWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static const routeName = 'signin-screen';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool isLoading = false;
  final String errorMsg = "";
  bool _passwordVisible = false;
  String dropdownRole = "karyawan";
  String dropdownLocation = "tf";

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: 100.h),
        children: [
          Column(
            children: <Widget>[
              Text(
                'ALIF',
                style: TextStyle(
                  fontSize: 50.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Labbaika Aliful Aufa',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                    controller: _username,
                    validator: (value) {
                      return value == null || value.isEmpty
                          ? 'username belum diisi'
                          : null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: HexColor('#9D9D9D'),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              _passwordVisible = !_passwordVisible;
                            },
                          );
                        },
                      ),
                    ),
                    obscureText: !_passwordVisible,
                    controller: _password,
                    validator: (value) {
                      return value == null || value.isEmpty
                          ? 'kata sandi belum diisi!'
                          : null;
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  isLoading
                      ? Center(
                          child: SizedBox(
                          height: 50,
                          width: 50,
                          child: LoadingIndicator(
                            indicatorType: Indicator.ballPulseSync,
                            colors: const [
                              Color.fromRGBO(244, 150, 10, 1),
                            ],
                            strokeWidth: 2,
                          ),
                        ))
                      : SizedBox(
                          width: 320.w,
                          height: 42.h,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(244, 150, 10, 1),
                              ),
                            ),
                            onPressed: () async {
                              context.goNamed(BotNavBarScreen.routeName);
                            },
                            child: const Text(
                              'Masuk',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: 12.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
