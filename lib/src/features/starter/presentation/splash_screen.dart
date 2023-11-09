import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:labbaika/src/common_config/app_secure_storage.dart';
import 'package:labbaika/src/core/client/dio_client.dart';
import 'package:labbaika/src/features/auth/presentation/sign_in_controller.dart';
import 'package:labbaika/src/features/auth/presentation/sign_in_screen.dart';
import 'package:labbaika/src/features/home/domain/users/users.dart';
import 'package:labbaika/src/features/home/presentation/botnavbar_screen.dart';

class SplashScreen extends StatefulHookConsumerWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const routeName = 'splash-screen';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    initPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      left: false,
      right: false,
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SizedBox(
                height: 30.h,
              ),
              const CircularProgressIndicator.adaptive(
                backgroundColor: Colors.black,
                strokeWidth: 6.0,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromRGBO(244, 150, 10, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future initPage() async {
    try {
      final response = await DioClient().apiCall(
        url: '?format=json',
        requestType: RequestType.get,
      );

      if (response.statusCode == 200) {
        // Lanjut ke SignInScreen jika response status code adalah 200.
        context.goNamed(SignInScreen.routeName);
      } else {
        context.goNamed(SignInScreen.routeName);

        // Penanganan kesalahan jika response status code bukan 200.
        // Misalnya, tampilkan pesan kesalahan atau alur penanganan lainnya.
      }
    } catch (error) {
      context.goNamed(SignInScreen.routeName);

      // Penanganan kesalahan jika terjadi kesalahan selama pemanggilan API.
      // Misalnya, tampilkan pesan kesalahan atau alur penanganan lainnya.
    }
  }
}
