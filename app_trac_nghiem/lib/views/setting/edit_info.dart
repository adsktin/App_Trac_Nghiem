import 'package:app_trac_nghiem/controller/auth_controller.dart';
import 'package:app_trac_nghiem/models/user_model.dart';
import 'package:app_trac_nghiem/routes/url.dart';
// import 'package:app_trac_nghiem/models/user_Model.dart';
import 'package:app_trac_nghiem/views/color.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditInfo extends StatefulWidget {
  const EditInfo({super.key});

  @override
  State<EditInfo> createState() => _EditInfoState();
}

class _EditInfoState extends State<EditInfo> {
  Future<User> getInfoUser() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    dynamic user = await AuthController.getDataUser(token.toString());
    print(user);
    return user;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 110, 255, 120),
              Color.fromARGB(255, 104, 235, 255),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
        //backgroundColor: const Color.fromARGB(255, 188, 255, 240),
        appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          backgroundColor: const Color.fromARGB(255, 188, 255, 240),
          title: const Center(
            child: Text(
              'Thông Tin Cá Nhân',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        body: FutureBuilder(
          future: getInfoUser(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                snapshot.hasData) {
              return ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(AppUrl.urlimg +
                              '/storage/accounts/${snapshot.data.id}/avatar/' +
                              '${snapshot.data.avatar}'),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.photo_camera_outlined,
                                color: const Color(0xFFffffff).withOpacity(0.3),
                                size: 60,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Text('ID:'),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Text('Họ và tên:'),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Text('Email:'),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Text('Ngày Sinh:'),
                                ),
                              ]),
                          Column(
                            children: [
                              SizedBox(
                                width: 200,
                                height: 40,
                                child: TextField(
                                  readOnly: true,
                                  decoration: InputDecoration(
                                      hintText: '${snapshot.data.id}'),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: '${snapshot.data.name}',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: '${snapshot.data.email}'),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: '${snapshot.data.dateOfBirth}'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: SizedBox(
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: btncolor,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25),
                                  ),
                                )),
                            onPressed: () {},
                            child: const Text(
                              'Sửa',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return Center(
                child: Text(
                  '${snapshot.error} occurred',
                  style: TextStyle(fontSize: 18),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: const Text(
      'Hủy',
      style: TextStyle(color: Colors.red),
    ),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );
  Widget continueButton = TextButton(
    child: const Text(
      "Chơi",
      style: TextStyle(color: Colors.green),
    ),
    onPressed: () {
      //Navigator.push(
      //context, MaterialPageRoute(builder: (context) => Page1()));
      Navigator.of(context, rootNavigator: true).pushNamed('/play');
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    //backgroundColor: Colors.greenAccent,

    title: const Text(
      "Thông Báo",
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red),
    ),
    content: const Text("Bạn có muốn vào trận đấu?"),
    actions: [
      cancelButton,
      continueButton,
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
