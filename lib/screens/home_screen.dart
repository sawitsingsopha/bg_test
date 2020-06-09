import 'package:flutter/material.dart';
import '../components/darwer_menu.dart';

class Home extends StatefulWidget {
  static const routeName = '/';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState.openDrawer();
            }),
        title: Text("Home"),
        actions: [IconButton(icon: Icon(Icons.add), onPressed: () {})],
      ),
      drawer: DarwerMenu(),
      body: ListView(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.network(
                      "https://www.dailynews.co.th/admin/upload/20200603/news_tzZyyasmHk091001_380.jpg?v=202006041012"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "ขับรถอย่าซิ่งอาจต้องสูญเสีย วันเดียว'ตายคาที่'14ศพ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Kanit'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'ตัวเลขไม่เป็นทางการ "ยอดตายรายวัน ณ จุดเกิดเหตุ" วันที่ 3 มิ.ย.63 วันเดียว "ตายคาที่" บนถนน 14 ศพ มาพร้อมกับภาพอุบัติเหตุที่แฝงไว้ด้วยอุทาหรณ์...'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "พฤหัสบดีที่ 4 มิถุนายน 2563 เวลา 09.30 น.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.network(
                      "https://www.dailynews.co.th/admin/upload/20200603/news_tzZyyasmHk091001_380.jpg?v=202006041012"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "ขับรถอย่าซิ่งอาจต้องสูญเสีย วันเดียว'ตายคาที่'14ศพ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'ตัวเลขไม่เป็นทางการ "ยอดตายรายวัน ณ จุดเกิดเหตุ" วันที่ 3 มิ.ย.63 วันเดียว "ตายคาที่" บนถนน 14 ศพ มาพร้อมกับภาพอุบัติเหตุที่แฝงไว้ด้วยอุทาหรณ์...'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "พฤหัสบดีที่ 4 มิถุนายน 2563 เวลา 09.30 น.",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
