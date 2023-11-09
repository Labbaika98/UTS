import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:labbaika/src/features/feed/presentation/feed_screen.dart';
import 'package:labbaika/src/features/home/presentation/home_screen.dart';
import 'package:labbaika/src/features/profile/presentation/profile_screen.dart';

final currentScreenProvider =
    StateProvider<Widget>((ref) => const HomeScreen());
final currentIndexProvider = StateProvider<int>((ref) => 0);

class BotNavBarScreen extends StatefulHookConsumerWidget {
  const BotNavBarScreen({Key? key}) : super(key: key);
  static const routeName = 'botnavbar-screen';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BotNavBarScreenState();
}

class _BotNavBarScreenState extends ConsumerState<BotNavBarScreen> {
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    final currentScreen = ref.watch(currentScreenProvider);
    final currentIndex = ref.watch(currentIndexProvider);
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: PageStorage(
          bucket: bucket,
          child: currentScreen,
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 20.0.sp,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                ref.read(currentIndexProvider.state).state = index;
                switch (index) {
                  case 0:
                    ref.read(currentScreenProvider.state).state =
                        const HomeScreen();
                    break;
                  case 1:
                    ref.read(currentScreenProvider.state).state =
                        // const ScannerScreen();
                        const FeedScreen();
                    break;
                  case 2:
                    ref.read(currentScreenProvider.state).state =
                        const ProfileScreen();
                    break;
                }
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(top: 8.0.h),
                  child: const Icon(FontAwesomeIcons.house),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 8.0.h),
                    child: const Icon(FontAwesomeIcons.newspaper),
                  ),
                  label: 'News'),
              BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(top: 8.0.h),
                    child: const Icon(FontAwesomeIcons.user)),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
