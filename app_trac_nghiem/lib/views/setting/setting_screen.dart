import 'package:app_trac_nghiem/controller/auth_controller.dart';
import 'package:app_trac_nghiem/models/user_model.dart';
import 'package:app_trac_nghiem/views/auth/login_screen.dart';
import 'package:app_trac_nghiem/views/choose_screen.dart';
import 'package:app_trac_nghiem/views/color.dart';
import 'package:app_trac_nghiem/views/setting/edit_info.dart';
import 'package:app_trac_nghiem/views/setting/history.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_trac_nghiem/routes/url.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final AuthController controller = Get.put(AuthController());
  final bool isScreen = true;

  Future<bool> goto() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    if (token != null) {
      print(['NOT NULL', token]);
      return true;
    } else {
      print(['NULL', token]);
      return false;
    }
  }

  Future<User> getInfoUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    dynamic user = await AuthController.getDataUser(token.toString());
    print(user);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: goto(),
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: Text('Đang tải...'),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data == true) {
              return ListView(
                children: [
                  Column(
                    children: [
                      Center(
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 280),
                              child: Container(
                                width: 400,
                                height: 420,
                                decoration: BoxDecoration(
                                    color: Colors.greenAccent[200],
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, left: 60),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 300,
                                            height: 60,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                backgroundColor: Colors.black54,
                                              ),
                                              onPressed: () {
                                                // Navigator.of(context,
                                                //         rootNavigator: true)
                                                //     .pushNamed('/edit_info');
                                                Get.to(() => const EditInfo());
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                      width: 40,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15)),
                                                      child: const Icon(
                                                        Icons.person,
                                                        size: 20,
                                                      )),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 50),
                                                    child: AutoSizeText(
                                                      'Tài Khoản',
                                                      maxFontSize: 30,
                                                      minFontSize: 15,
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  const Icon(Icons
                                                      .keyboard_arrow_right_outlined)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 60),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 300,
                                            height: 60,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                backgroundColor: Colors.black54,
                                              ),
                                              onPressed: () {
                                                // Navigator.of(context,
                                                //         rootNavigator: true)
                                                //     .pushNamed('/historychallenge');
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                      width: 40,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15)),
                                                      child: const Icon(
                                                        Icons.history_outlined,
                                                        size: 20,
                                                      )),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 40),
                                                    child: AutoSizeText(
                                                      'Lịch Sử Đấu',
                                                      maxFontSize: 30,
                                                      minFontSize: 15,
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  const Icon(Icons
                                                      .keyboard_arrow_right_outlined)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 60),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 300,
                                            height: 60,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                                backgroundColor: Colors.black54,
                                              ),
                                              onPressed: () {
                                                showChangePassword(context);
                                              },
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                      width: 40,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15)),
                                                      child: const Icon(
                                                        Icons.lock_outline,
                                                        size: 20,
                                                      )),
                                                  const Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 30),
                                                    child: AutoSizeText(
                                                      'Đổi Mật Khẩu',
                                                      maxFontSize: 30,
                                                      minFontSize: 15,
                                                      style: TextStyle(
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  const Icon(Icons
                                                      .keyboard_arrow_right_outlined)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 15),
                                      child: SizedBox(
                                        width: 250,
                                        height: 50,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40),
                                            ),
                                            backgroundColor: Colors.green,
                                          ),
                                          onPressed: () async {
                                            bool auth =
                                                await controller.logOut();
                                            //print(auth);
                                            if (auth) {
                                              Get.defaultDialog(
                                                  title: "Thông báo!",
                                                  middleText:
                                                      'Có lỗi xảy ra, vui lòng thử lại sau!');
                                            } else {
                                              Get.defaultDialog(
                                                  title: "Thông báo",
                                                  middleText:
                                                      'Bạn có muốn đăng xuất?',
                                                  textConfirm: "Thoát",
                                                  textCancel: "Hủy",
                                                  cancelTextColor: Colors.black,
                                                  confirmTextColor:
                                                      Colors.black,
                                                  barrierDismissible: false,
                                                  onConfirm: () {
                                                    Get.to(() =>
                                                        const ChooseScreen(
                                                          isScreen: true,
                                                        ));
                                                  });
                                            }
                                          },
                                          child: const AutoSizeText(
                                            'Đăng Xuất',
                                            maxFontSize: 30,
                                            minFontSize: 15,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 350,
                              height: 300,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                              child: FutureBuilder(
                                future: getInfoUser(),
                                builder: (context, AsyncSnapshot snapshot) {
                                  if (snapshot.connectionState ==
                                          ConnectionState.done &&
                                      snapshot.hasData) {
                                    return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(top: 20),
                                            child: AutoSizeText(
                                              'Cài Đặt',
                                              maxFontSize: 40,
                                              minFontSize: 15,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, bottom: 10),
                                            child: CircleAvatar(
                                              radius: 60,
                                              backgroundImage: NetworkImage(AppUrl
                                                      .urlimg +
                                                  '/storage/accounts/${snapshot.data.id}/avatar/' +
                                                  '${snapshot.data.avatar}'),
                                            ),
                                          ),
                                          AutoSizeText("${snapshot.data.name}",
                                              maxFontSize: 30,
                                              minFontSize: 15,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                  color: Colors.white)),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20, bottom: 20),
                                            child: AutoSizeText(
                                                'Tổng Điểm: ${snapshot.data.totalscore}',
                                                maxFontSize: 25,
                                                minFontSize: 15,
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color: Colors.yellow)),
                                          ),
                                          // Padding(
                                          //   padding: const EdgeInsets.only(
                                          //       top: 10),
                                          //   child: SizedBox(
                                          //     width: 150,
                                          //     height: 50,
                                          //     child: ElevatedButton(
                                          //       style:
                                          //           ElevatedButton.styleFrom(
                                          //         shape:
                                          //             RoundedRectangleBorder(
                                          //           borderRadius:
                                          //               BorderRadius.circular(
                                          //                   40),
                                          //         ),
                                          //         backgroundColor:
                                          //             Colors.amberAccent,
                                          //       ),
                                          //       onPressed: () {
                                          //         Navigator.of(context,
                                          //                 rootNavigator: true)
                                          //             .pushNamed('/history');
                                          //       },
                                          //       child: const Text(
                                          //         'Xem Lịch Sử',
                                          //         style: TextStyle(
                                          //             fontSize: 15,
                                          //             color: Colors.black),
                                          //       ),
                                          //     ),
                                          //   ),
                                          // ),
                                        ]);
                                  }
                                  return const CircularProgressIndicator();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return const ChooseScreen(isScreen: true);
            }
          }
          return const ChooseScreen(isScreen: false);
        });
  } // setting
}

showChangePassword(BuildContext context) {
  // set up the buttons
  Widget acceptButton = TextButton(
    child: Container(
      width: 100,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text(
          'Xác Nhận',
          style: TextStyle(color: Colors.black),
        ),
      ),
    ),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: const Text(
      "Đổi Mật Khẩu",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red),
    ),
    content: SizedBox(
      width: 300,
      height: 300,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Nhập mật khẫu cũ',
                filled: true,
                fillColor: textfield,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Nhập mật khẫu mới',
                filled: true,
                fillColor: textfield,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Xác nhận mật khẫu mới',
              filled: true,
              fillColor: textfield,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    ),
    actions: [
      Center(child: acceptButton),
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
