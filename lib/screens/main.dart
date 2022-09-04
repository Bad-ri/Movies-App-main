import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:movies_app/controllers/bottom_navigator_controller.dart';

class Main extends StatelessWidget {
  Main({Key? key}) : super(key: key);
  final BottomNavigatorController controller =
      Get.put(BottomNavigatorController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.index.value,
              children: Get.find<BottomNavigatorController>().screens,
            ),
          ),
          bottomNavigationBar: Container(
            height: 78,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color.fromRGBO(106, 18, 114, 1),
                  width: 1,
                ),
              ),
            ),
            child: BottomNavigationBar(
              currentIndex: controller.index.value,
              onTap: (index) =>
                  Get.find<BottomNavigatorController>().setIndex(index),
              backgroundColor: Color.fromARGB(255, 5, 5, 5),
              selectedItemColor: Color.fromRGBO(106, 18, 114, 1),
              unselectedItemColor: const Color(0xFF67686D),
              selectedFontSize: 12,
              unselectedFontSize: 12,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 6),
                    child: SvgPicture.asset(
                      'assets/Home.svg',
                      height: 21,
                      width: 21,
                      color: controller.index.value == 0
                          ? Color.fromRGBO(106, 18, 114, 1)
                          : const Color(0xFF67686D),
                    ),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 6),
                    child: SvgPicture.asset(
                      'assets/Search.svg',
                      height: 21,
                      width: 21,
                      color: controller.index.value == 1
                          ? Color.fromRGBO(106, 18, 114, 1)
                          : const Color(0xFF67686D),
                    ),
                  ),
                  label: 'Search',
                  tooltip: 'Search Movies',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 6),
                    child: SvgPicture.asset(
                      'assets/Save.svg',
                      height: 21,
                      width: 21,
                      color: controller.index.value == 2
                          ? Color.fromRGBO(106, 18, 114, 1)
                          : const Color(0xFF67686D),
                    ),
                  ),
                  label: 'Watch list',
                  tooltip: 'Your WatchList',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
