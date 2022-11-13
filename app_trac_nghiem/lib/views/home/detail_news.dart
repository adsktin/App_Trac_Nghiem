import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        backgroundColor: const Color.fromARGB(255, 110, 255, 120),
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(70, 20, 0, 20),
              child: Text(
                'Ngày ' +
                    now.day.toString() +
                    " Tháng " +
                    now.month.toString() +
                    " Năm " +
                    now.year.toString(),
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              width: 350,
              height: 300,
              color: Colors.blue,
              child: Image.asset('assets/images/camera_iphone14.jpg',
                  fit: BoxFit.fill),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(
                "Iphone 14",
                //textAlign: TextAlign.left,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 255, 140),
                  borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  maxLines: 20,
                  "Nguồn tin từ nhà phân tích Ming-Chi Kuo cho biết bộ đôi iPhone 14 Pro và 14 Pro Max sẽ được trang bị hệ thống camera hoàn toàn mới với độ phân giải 48 MP. Điều này sẽ khiến cho kích thước tổng thể của cụm camera to hơn phiên bản tiền nhiệm. Theo đó, kích thước camera trên iPhone 14 Pro được cho là sẽ tăng thêm khoảng 5% ở mỗi chiều so với iPhone 13 Pro. Cụ thể, chiều rộng sẽ tăng từ 35,01 mm lên 36,73 mm, chiều cao từ 36,24 mm lên 38,21 mm và độ dày từ 3,60 mm lên 4,17 mm. Cụm camera mới này được cho là sẽ chỉ xuất hiện trên những phiên bản iPhone Pro. Hệ thống này hứa hẹn sẽ cung cấp cho máy nhiều tính năng mới như quay video ở độ phân giải 8K, hỗ trợ thiết bị AR/VR",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
