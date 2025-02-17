import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 30,
              margin: EdgeInsets.only(left: 320, top: 24),
              child: Icon(
                Icons.chevron_right,
                color: Color(0xff292D32),
              ),
            ),
            Container(
              width: 175,
              height: 60,
              margin: EdgeInsets.only(left: 143, top: 40, right: 118),
              child: Text(
                "الملف الشخصي",
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Somar',
                  fontWeight: FontWeight.w600,
                  color: Color(0xff059FB3),
                ),
              ),
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/a.png'),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Nazih Al-Hamoud ',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Somar',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 55,
            ),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  padding: EdgeInsets.only(left: 68),
                  child: Icon(
                    Icons.chevron_left,
                    color: Color(0xff292D32),
                  ),
                ),
                Container(
                  width: 180,
                  height: 29,
                  margin: EdgeInsets.only(left: 100),
                  padding: EdgeInsets.only(left: 120),
                  child: Text(
                    'تعديل',
                    style: TextStyle(
                      color: Color(0xff263238),
                      fontFamily: 'Somar',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(start: 0),
                  width: 20,
                  height: 20,
                  child: Icon(
                    Icons.edit_calendar,
                    color: Color(0xff292D32),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 42,
            ),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  padding: EdgeInsets.only(left: 68),
                  child: Icon(
                    Icons.chevron_left,
                    color: Color(0xff292D32),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(),
                  child: Container(
                    width: 180,
                    height: 29,
                    margin: EdgeInsets.only(left: 100),
                    padding: EdgeInsets.only(left: 130),
                    child: Text(
                      ' اللغة',
                      style: TextStyle(
                        color: Color(0xff263238),
                        fontFamily: 'Somar',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  child: Icon(
                    Icons.language_outlined,
                    color: Color(0xff292D32),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 42,
            ),
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  padding: EdgeInsets.only(left: 68),
                  child: Icon(
                    Icons.chevron_left,
                    color: Color(0xff292D32),
                  ),
                ),
                Container(
                  width: 180,
                  height: 29,
                  margin: EdgeInsets.only(left: 100),
                  padding: EdgeInsets.only(left: 100),
                  child: Text(
                    'الاعدادات',
                    style: TextStyle(
                      color: Color(0xff263238),
                      fontFamily: 'Somar',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  child: Icon(
                    Icons.settings,
                    color: Color(0xff292D32),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 69,
            ),
            Container(
              width: 346,
              height: 57,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    padding: EdgeInsets.only(left: 50),
                    child: Icon(
                      Icons.chevron_left,
                      color: Color(0xffE33629),
                    ),
                  ),
                  Container(
                    width: 162,
                    height: 29,
                    margin: EdgeInsets.only(left: 100),
                    padding: EdgeInsets.only(left: 110),
                    child: Text(
                      'الخروج',
                      style: TextStyle(
                        color: Color(0xffE33629),
                        fontFamily: 'Somar',
                        fontSize: 18,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    child: Icon(
                      Icons.logout,
                      color: Color(0xffE33629),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'حسابي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'المواعيد',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'الاشعارات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
        ],
      ),
    );
  }
}
