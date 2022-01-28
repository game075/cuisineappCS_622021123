import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuisine App"),
      ),
      body: Container(
        child: Center(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: pic_cover(),
              ),
              infor(),
              profile(),
              name_chef(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: time_finish(),
              ),
              line(),
              describe(),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: raw_material(),
              ),
              infor_material(),
              porklibsfinal(),
              refer()
            ],
          ),
        ),
      ),
    );
  }

  Image porklibsfinal() => Image.asset('images/porklibs_final.jpg');

  Image pic_cover() => Image.asset('images/porklibs_cover.jpg');

  Widget infor() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'วิธีทำ "ซี่โครงหมูบาร์บีคิว" เมนูเด็กหอที่ทำได้ในหม้อหุงข้าว',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "ซี่โครงหมูบาร์บีคิว” เมนูเริ่ดๆที่ทำได้ง่ายๆเพียงมีหม้อหุงข้าว",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }

  Widget profile() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        radius: 53,
        backgroundColor: Colors.red,
        child: CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              'https://media.discordapp.net/attachments/823878199645700100/936656716236464198/20210402_204331.jpg'),
        ),
      ),
    );
  }

  Widget name_chef() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '17 ธ.ค. 2564 โดย MasterChef Peerathat',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }

  Widget time_finish() => Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 215, 0, 20),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(Icons.timer, color: Colors.blue[500]),
                const Text('เตรียมเวลา'),
                const Text('10 นาที'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.orange[500]),
                const Text('เวลาปรุง'),
                const Text('45 นาที'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.local_fire_department, color: Colors.red[500]),
                const Text('แคลอรี่'),
                const Text('300 Kcal/เสิร์ฟ'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.person, color: Colors.green[500]),
                const Text('สำหรับ'),
                const Text('2 เสิร์ฟ'),
              ],
            ),
          ],
        ),
      );

  Widget line() => Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              padding:
                  EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 10),
              child: Divider(color: Colors.grey.shade600, thickness: 1),
            )),
            Text(
              'เกริน',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(color: Colors.grey.shade600, thickness: 1),
            )),
          ],
        ),
      );

  Widget describe() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "เมื่อเพื่อน ๆ อยากจะทําอะไรกินที่พิเศษ แต่อยู่หอจะอุปกรณ์ก็ไม่อำนวยเท่าไรใช่ไหมค่ะวันนี้จะมาแนะนำเมนูที่ทําได้ง่ายเพียงแค่มีหม้อหุงข้าวก็ทําได้นั่นก็คือ“ ซี่โครงหมูบาร์บีคิวอบชีส” ที่ทําได้อยู่ที่ไหนก็ทําได้ถ้าพร้อมแล้วล้างหม้อหุงข้าวแล้วเข้าครัวพร้อมกันเลยค่ะ",
            style: TextStyle(
              fontSize: 16,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }

  Image raw_material() => Image.asset('images/porklibs_material.jpg');

  Widget infor_material() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'วิธีทำ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'STEP 1 : ทอดหมู ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "• นำน้ำมันลงหม้อหุงข้าวชาร์ปแคนดี้รุ่น KSH-Q03 รอให้น้ำมันร้อน",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
          Text(
            "• นำซี่โครงหมูลงทอดพอขึ้นสีทั้ง 4 ด้าน ",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
          Text(
            'STEP 2 :ตุ๋น',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "• นําซอสบาร์บีคิวเทลงหม้อหุงข้าวชาร์ปแคนดี้รุ่น KSH-Q03",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
          Text(
            "• ใสใบไทม์และออริกาโน่ลงไป",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
          Text(
            "• นำล็อบสเตอร์ที่เตรียมไว้ (STEP 1) นำมาใส่ซอสลงไปให้ทั่ว ๆ จากนั้นขูดชีสพาร์เมซานลงไป นำเข้าอบด้วยไฟบนล่าง อุณหภูมิ 200 องศาเซลเซียล เป็นเวลา 25 นาที",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
          Text(
            "• เติมน้ำสะอาดให้พอท่วมซี่โครงหมูตุ้นประมาณ 40 นาที (หมั่นคนเรื่อย ๆ )",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "STEP 3 :ละลายชีส",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
          Text(
            "• เรียบร้อยแล้วแค่นี้ก็พร้อมฟินกับ“ ซี่โครงหมูบาร์บีคิวอบชีส ยืด ๆ ฟิน ๆ",
            style: TextStyle(
                fontSize: 16, height: 1.4, color: Colors.grey.shade600),
          ),
        ],
      ),
    );
  }

  Widget refer() {
    return Container(
      padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'เรียบร้อยแล้วสําหรับ" โครงหมูบาร์บีคิวอบชีส” เป็นเมนูเด็กหอทําง่าย ๆ เพียงแค่มีหม้อหุงข้าวชาร์ปแคนดี้รุ่น KSH Q03 แค่นี้เพื่อน ๆ ก็สามารถสร้างสรรค์เมนูที่ทําง่ายสําหรับ 1-2 คนด้วยหม้อหุงขาวในขนาด 0.3 ล็ดรขนาดเล็กกะทัดรัดเก็บง่ายไม่เปลืองพื้นที่อีกด้วย',
            style: TextStyle(fontSize: 16),
          ),
          Text(
            'ที่มา: https://www.wongnai.com/recipes/pork-ribs-in-bbq-sauce',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
