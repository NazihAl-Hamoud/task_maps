import 'package:flutter/material.dart';
import 'package:nazehalhamoud/widgets/container_row.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List data = [
    'ادلب',
    'حلب',
    'حماة',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 75,
                left: 70,
                right: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border),
                  Text(
                    "الرئيسية",
                    style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Somar',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.menu),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 31.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(),
                    image: DecorationImage(
                      image: Image.asset('assets/images/plan.png').image,
                    )),
                height: 141,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 15, left: 210, top: 27, bottom: 16),
              child: Text(
                'قم باختيار المدينة',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Somar',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: Container(
                          alignment: Alignment.center,
                          height: 45,
                          width: 116,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.lightBlueAccent),
                          child: Text(
                            data[index],
                            style: TextStyle(color: Colors.white, fontSize: 35),
                          ))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 246),
              child: Text(
                'رحلات مقترحة',
                style: TextStyle(
                  fontSize: 32,
                  fontFamily: 'Somar',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 40),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ContainerRow(),
                    ContainerRow(),
                    ContainerRow(),
                    ContainerRow(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff059FB3),
                      borderRadius: BorderRadius.circular(14)),
                  height: 57,
                  child: Center(
                    child: Text(
                      'اضغط هنا لمعرفة تفاصيل الرحلة المختارة',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Somar',
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 3,
        onTap: (index) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'حسابي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'المواعيد',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
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
