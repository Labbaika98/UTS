import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:labbaika/src/features/auth/presentation/sign_in_controller.dart';

class HomeScreen extends StatefulHookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = 'home-screen';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final users = ref.watch(signInControllerProvider);
    return SafeArea(
      top: false,
      bottom: true,
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: [
                Container(
                  width: 1.sw,
                  height: 0.20.sh,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(244, 150, 10, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35.r),
                      bottomRight: Radius.circular(35.r),
                    ),
                  ),
                  child: Padding(
                      padding:
                          EdgeInsets.only(right: 1.w, left: 1.w, top: 20.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Selamat Datang,',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    users.nama.toString(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(1),
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.r),
                                  child: Image.asset(
                                    'assets/icons/logo-app.png',
                                    width: 50.w,
                                    height: 50.h,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: ClipRRect(
                                  child: Image.asset(
                                    'assets/icons/notif-blank.png',
                                    width: 30.w,
                                    height: 30.h,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Area',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    users.area.toString(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 2.w,
                                height: 2.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Departemen',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    users.dept.toString(),
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.8),
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 170, 0),
                              )
                            ],
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => makeDismissible(
                                  child: DraggableScrollableSheet(
                                      initialChildSize: 0.25,
                                      builder: (_, controller) => Container(
                                            decoration: BoxDecoration(
                                              color: HexColor("#F6F6F6"),
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          30.r)),
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.w),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 15.h,
                                                      ),
                                                      Center(
                                                        child: Container(
                                                          width: 105.w,
                                                          height: 7.h,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: HexColor(
                                                                '#ECDAFF'),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      SizedBox(
                                                        width: 1.sw,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                      width:
                                                                          50.w,
                                                                      height:
                                                                          50.h,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color.fromRGBO(
                                                                            244,
                                                                            150,
                                                                            10,
                                                                            1),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.r),
                                                                      ),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/icons/absensi.png',
                                                                        fit: BoxFit
                                                                            .contain,
                                                                        width:
                                                                            100,
                                                                      )),
                                                                  const Text(
                                                                    "Absensi",
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 50.w,
                                                                    height:
                                                                        50.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child: Center(
                                                                        child: Image.asset(
                                                                      'assets/icons/absensi/lembur.png',
                                                                      fit: BoxFit
                                                                          .contain,
                                                                      width: 50,
                                                                    )),
                                                                  ),
                                                                  const Text(
                                                                    "Lembur",
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 50.w,
                                                                    height:
                                                                        50.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child: Center(
                                                                        child: Image.asset(
                                                                      'assets/icons/absensi/komplain-gaji.png',
                                                                      fit: BoxFit
                                                                          .contain,
                                                                      width: 40,
                                                                    )),
                                                                  ),
                                                                  const Text(
                                                                    "Komplain\nGaji",
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                      width:
                                                                          50.w,
                                                                      height:
                                                                          50.h,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color.fromRGBO(
                                                                            244,
                                                                            150,
                                                                            10,
                                                                            1),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.r),
                                                                      ),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/icons/absensi/cuti.png',
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      )),
                                                                  const Text(
                                                                    "Cuti",
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
                                          )),
                                ),
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.r),
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 5.h),
                                  width: 50.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(244, 150, 10, 1),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Center(
                                      child: Image.asset(
                                    'assets/icons/absensi.png',
                                    fit: BoxFit.contain,
                                    width: 100,
                                  )),
                                ),
                                Text(
                                  "Absensi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => makeDismissible(
                                  child: DraggableScrollableSheet(
                                      initialChildSize: 0.25,
                                      builder: (_, controller) => Container(
                                            decoration: BoxDecoration(
                                              color: HexColor("#F6F6F6"),
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          30.r)),
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.w),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 15.h,
                                                      ),
                                                      Center(
                                                        child: Container(
                                                          width: 105.w,
                                                          height: 7.h,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: HexColor(
                                                                '#ECDAFF'),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      SizedBox(
                                                        width: 1.sw,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 50.w,
                                                                    height:
                                                                        50.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/icons/benefit/slip-gaji.png',
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                  const Text(
                                                                    "Slip Gaji",
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 50.w,
                                                                    height:
                                                                        50.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child: Center(
                                                                        child: Image.asset(
                                                                      'assets/icons/benefit/seragam.png',
                                                                      fit: BoxFit
                                                                          .contain,
                                                                      width: 50,
                                                                    )),
                                                                  ),
                                                                  const Text(
                                                                    "Seragam",
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 50.w,
                                                                    height:
                                                                        50.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/icons/benefit/kesehatan.png',
                                                                        fit: BoxFit
                                                                            .contain,
                                                                        width:
                                                                            50,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Text(
                                                                    "Plafon Kesehatan",
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
                                          )),
                                ),
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.r),
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 5.h),
                                  width: 50.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(244, 150, 10, 1),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icons/benefit.png',
                                      fit: BoxFit.contain,
                                      width: 40,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Benefit",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => makeDismissible(
                                  child: DraggableScrollableSheet(
                                      initialChildSize: 0.25,
                                      builder: (_, controller) => Container(
                                            decoration: BoxDecoration(
                                              color: HexColor("#F6F6F6"),
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          30.r)),
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.w),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 15.h,
                                                      ),
                                                      Center(
                                                        child: Container(
                                                          width: 105.w,
                                                          height: 7.h,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: HexColor(
                                                                '#ECDAFF'),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      SizedBox(
                                                        width: 1.sw,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 60.w,
                                                                    height:
                                                                        60.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/icons/peraturan/pkb.png',
                                                                      fit: BoxFit
                                                                          .contain,
                                                                      width: 10,
                                                                    ),
                                                                  ),
                                                                  const Text(
                                                                    "PKB",
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                // OldAppointmentScreen()));
                                                              },
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 60.w,
                                                                    height:
                                                                        60.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/icons/peraturan/coc.png',
                                                                        fit: BoxFit
                                                                            .contain,
                                                                        width:
                                                                            50,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Text(
                                                                    "COC",
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 60.w,
                                                                    height:
                                                                        60.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/icons/peraturan/isms.png',
                                                                        fit: BoxFit
                                                                            .contain,
                                                                        width:
                                                                            50,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Text(
                                                                    "ISMS",
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
                                          )),
                                ),
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.r),
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 5.h),
                                  width: 50.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(244, 150, 10, 1),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: Center(
                                      child: Image.asset(
                                    'assets/icons/peraturan.png',
                                    fit: BoxFit.contain,
                                    width: 100,
                                  )),
                                ),
                                Text(
                                  "Peraturan",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) => makeDismissible(
                                  child: DraggableScrollableSheet(
                                      initialChildSize: 0.25,
                                      builder: (_, controller) => Container(
                                            decoration: BoxDecoration(
                                              color: HexColor("#F6F6F6"),
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          30.r)),
                                            ),
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.w),
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 15.h,
                                                      ),
                                                      Center(
                                                        child: Container(
                                                          width: 105.w,
                                                          height: 7.h,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: HexColor(
                                                                '#ECDAFF'),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.r),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 30.h,
                                                      ),
                                                      SizedBox(
                                                        width: 1.sw,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 60.w,
                                                                    height:
                                                                        60.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/icons/lainya/training.png',
                                                                        fit: BoxFit
                                                                            .contain,
                                                                        width:
                                                                            50,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Text(
                                                                    "Training",
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {
                                                                // OldAppointmentScreen()));
                                                              },
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 60.w,
                                                                    height:
                                                                        60.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/icons/lainya/kuesioner.png',
                                                                        width:
                                                                            50.w,
                                                                        height:
                                                                            50.h,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Text(
                                                                    "Kuesioner",
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 60.w,
                                                                    height:
                                                                        60.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/icons/lainya/request.png',
                                                                        width:
                                                                            60.w,
                                                                        height:
                                                                            60.h,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Text(
                                                                    "Request",
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            InkWell(
                                                              onTap: () {},
                                                              child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 60.w,
                                                                    height:
                                                                        60.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                              .fromRGBO(
                                                                          244,
                                                                          150,
                                                                          10,
                                                                          1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.r),
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/icons/lainya/improvement.png',
                                                                        width:
                                                                            50.w,
                                                                        height:
                                                                            50.h,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const Text(
                                                                    "Improvement",
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
                                          )),
                                ),
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(10.r),
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 5.h),
                                  width: 50.w,
                                  height: 50.h,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(244, 150, 10, 1),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: const Center(
                                      child: Icon(
                                    Icons.add_circle_outline,
                                    size: 38.0,
                                  )),
                                ),
                                Text(
                                  "Lainya",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      isLoading
                          ? const Center(
                              child: SizedBox(
                              height: 50,
                              width: 50,
                              child: LoadingIndicator(
                                indicatorType: Indicator.ballPulseSync,
                                colors: [Color.fromRGBO(244, 150, 10, 1)],
                                strokeWidth: 2,
                              ),
                            ))
                          : Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'History Absensi',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              1.1,
                                      child: ListView.builder(
                                        shrinkWrap: true,
                                        padding: EdgeInsets.zero,
                                        itemCount:
                                            7, // Ganti dengan jumlah item yang diinginkan
                                        itemBuilder: (context, index) => Column(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                vertical: 10.h,
                                                horizontal: 10.w,
                                              ),
                                              margin:
                                                  EdgeInsets.only(bottom: 10.h),
                                              height: 100.h,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: HexColor("#9D20FF")
                                                        .withOpacity(0.10),
                                                    blurRadius: 5.r,
                                                    spreadRadius: 1,
                                                    offset: const Offset(4, 8),
                                                  ),
                                                ],
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      SizedBox(
                                                        width: 12.w,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                            width: 170.w,
                                                            child: Text(
                                                              'Nama Pengguna ${index + 1}',
                                                              maxLines: 1,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style:
                                                                  const TextStyle(
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            'Masuk : 08:00 AM',
                                                            style:
                                                                const TextStyle(
                                                              color:
                                                                  Colors.green,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Keluar : 05:00 PM',
                                                            style:
                                                                const TextStyle(
                                                              color:
                                                                  Colors.orange,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: 20.w,
                                                        height: 19.h,
                                                      ),
                                                      Text('28-10-2023'),
                                                      Text(
                                                        'TD : 9h 0m',
                                                        style: const TextStyle(
                                                          color:
                                                              Colors.redAccent,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                // SizedBox(
                                //   height: 20.h,
                                // ),
                              ],
                            )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget makeDismissible({required Widget child}) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.of(context).pop(),
        child: GestureDetector(
          onTap: () {},
          child: child,
        ),
      );
}
