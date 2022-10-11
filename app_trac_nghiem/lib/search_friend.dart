import 'package:flutter/material.dart';

class SearchFriend extends StatefulWidget {
  const SearchFriend({super.key});

  @override
  State<SearchFriend> createState() => _SearchFriendState();
}

class _SearchFriendState extends State<SearchFriend> {
  get controller => null;

  get onSearchTextChanged => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 188, 255, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 188, 255, 240),
        title: const Center(
          child: Text('Tìm Bạn',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
        ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.play_arrow_outlined),
        //     tooltip: 'Tìm kiếm',
        //     color: Colors.black,
        //     iconSize: 40,
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  leading: const Icon(Icons.search),
                  title: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    onChanged: onSearchTextChanged,
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.cancel),
                    onPressed: () {
                      controller.clear();
                      onSearchTextChanged('');
                    },
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Card(
                          color: const Color.fromARGB(255, 253, 248, 229),
                          child: ListTile(
                            leading: const CircleAvatar(
                                radius: 40,
                                backgroundImage:
                                    AssetImage('assets/images/hinhgaidep.jpg')),
                            title: const Text('Top 1',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.redAccent)),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Dương Nghĩa Hiệp',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text('Thắng 10')
                                ],
                              ),
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add_circle_outline_outlined,
                                  size: 40,
                                )),
                            isThreeLine: true,
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
