import 'package:app_trac_nghiem/views/color.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 350),
                      child: Container(
                        width: 420,
                        height: 453,
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[200],
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 80, left: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 300,
                                    height: 70,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        backgroundColor: Colors.black54,
                                      ),
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pushNamed('/edit_info');
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Icon(
                                                Icons.person,
                                                size: 30,
                                              )),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 50),
                                            child: Text(
                                              'Tài Khoản',
                                              style: TextStyle(fontSize: 20),
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
                              padding: const EdgeInsets.only(top: 20, left: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 300,
                                    height: 70,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        backgroundColor: Colors.black54,
                                      ),
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pushNamed('/historychallenge');
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Icon(
                                                Icons.history_outlined,
                                                size: 30,
                                              )),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 40),
                                            child: Text(
                                              'Lịch Sử Đấu',
                                              style: TextStyle(fontSize: 20),
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
                              padding: const EdgeInsets.only(top: 20, left: 60),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 300,
                                    height: 70,
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
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                              width: 50,
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Icon(
                                                Icons.lock_outline,
                                                size: 30,
                                              )),
                                          const Padding(
                                            padding: EdgeInsets.only(right: 30),
                                            child: Text(
                                              'Đổi Mật Khẩu',
                                              style: TextStyle(fontSize: 20),
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
                              padding: const EdgeInsets.only(top: 20, left: 15),
                              child: SizedBox(
                                width: 250,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    backgroundColor: Colors.green,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pushNamed('/firstscreen');
                                  },
                                  child: const Text(
                                    'Đăng Xuất',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
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
                      height: 420,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Text(
                                'Cài Đặt',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 40),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 10),
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(
                                    'assets/images/yone_hoalinh.png'),
                              ),
                            ),
                            const Text('Dương Nghĩa Hiệp',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white)),
                            const Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 20),
                              child: Text('Tổng Điểm: 1000',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.yellow)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SizedBox(
                                width: 150,
                                height: 50,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    backgroundColor: Colors.amberAccent,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pushNamed('/history');
                                  },
                                  child: const Text(
                                    'Xem Lịch Sử',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
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
  // Widget continueButton = TextButton(
  //   child: const Text(
  //     "Chơi",
  //     style: TextStyle(color: Colors.green),
  //   ),
  //   onPressed: () {
  //     //Navigator.push(
  //     //context, MaterialPageRoute(builder: (context) => Page1()));
  //     Navigator.of(context, rootNavigator: true).pushNamed('/play');
  //   },
  // );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    //backgroundColor: Colors.greenAccent,

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
