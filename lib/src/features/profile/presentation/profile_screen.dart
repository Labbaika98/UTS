import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:page_transition/page_transition.dart';
import 'package:labbaika/src/features/auth/presentation/sign_in_controller.dart';
import 'package:labbaika/src/features/auth/presentation/sign_in_screen.dart';

// final currentScreenProvider =
//     StateProvider<Widget>((ref) => const ProfileScreen());
// final currentIndexProvider = StateProvider<int>((ref) => 0);

class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static const routeName = 'profile-screen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final users = ref.watch(signInControllerProvider);
    // final currentIndex = ref.watch(currentIndexProvider);
    return WillPopScope(
      onWillPop: () async => false,

      // top: false,
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: 1.sw,
              height: 165.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Image.asset(
                          'assets/icons/logo-app.png',
                          width: 55.w,
                          height: 55.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 12.0.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 250.0.w,
                            child: Text(
                              'ALIF',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 250.w,
                            child: Text(
                              'Labbaika Aliful Aufa',
                              style: TextStyle(
                                // color: AppTheme.textBlueColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text(
                    "IKUZO!!!",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      Text(
                        // "${watchlistState?.length} ",
                        "",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        users.nama.toString(),
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              // color: AppTheme.thirdColor,
              thickness: 0.1.h,

              height: 0.h,
              color: Colors.black,
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Akun Anda",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          color: Color.fromRGBO(244, 150, 10, 1),
                          'assets/icons/user-profile.png',
                          width: 25.w,
                          height: 25.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 282.w,
                          height: 33.h,
                          padding: EdgeInsets.only(bottom: 5.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Profile",
                                style: TextStyle(
                                  // color: AppTheme.textColorProfile,
                                  fontSize: 16.sp,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                // color: AppTheme.textColorProfile,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    "Help",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, AppRoutes.Page4);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          color: Color.fromRGBO(244, 150, 10, 1),
                          'assets/icons/contact-icon.png',
                          width: 25.w,
                          height: 25.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 282.w,
                          height: 33.h,
                          padding: EdgeInsets.only(bottom: 5.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Contact',
                                style: TextStyle(
                                  // color: AppTheme.textColorProfile,
                                  fontSize: 16.sp,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                // color: AppTheme.textColorProfile,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    "Other",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamed(context, AppRoutes.Page4);
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Icon(
                        //   FontAwesomeIcons.circleInfo,
                        //   color: Color.fromRGBO(244, 150, 10, 1),
                        // ),

                        Image.asset(
                          color: Color.fromRGBO(244, 150, 10, 1),
                          'assets/icons/report-icon.png',
                          width: 25.w,
                          height: 25.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 282.w,
                          height: 33.h,
                          padding: EdgeInsets.only(bottom: 5.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "About App",
                                style: TextStyle(
                                  // color: AppTheme.textColorProfile,
                                  fontSize: 16.sp,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                // color: AppTheme.textColorProfile,
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  InkWell(
                    onTap: () async {
                      showDialog<String>(
                        context: context,
                        // barrierDismissible: false,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Logout'),
                          // content: const Text('AlertDialog description'),
                          content: const Text(
                            "Anda yakin ingin Keluar?",
                            style: TextStyle(height: 2, letterSpacing: 1.0),
                          ),

                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Batal'),
                              child: const Text('Batal'),
                            ),
                            TextButton(
                              onPressed: () async {
                                context.goNamed(SignInScreen.routeName);
                                final box = await ref
                                    .read(signInControllerProvider.notifier)
                                    .openBox();
                                await ref
                                    .read(signInControllerProvider.notifier)
                                    .logout(box: box);
                              },
                              child: const Text('Keluar'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 1.h,
                        ),
                        Image.asset(
                          color: Color.fromRGBO(244, 150, 10, 1),
                          'assets/icons/logout-icon.png',
                          width: 25.w,
                          height: 25.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          width: 282.w,
                          height: 33.h,
                          padding: EdgeInsets.only(bottom: 5.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Logout",
                                style: TextStyle(
                                  color: Color.fromRGBO(244, 150, 10, 1),
                                  fontSize: 16.sp,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color.fromRGBO(244, 150, 10, 1),
                                size: 20.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
