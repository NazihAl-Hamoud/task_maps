import 'package:flutter/material.dart';

class ContainerRow extends StatelessWidget {
  const ContainerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Stack(children: [
        Container(
          height: 171,
          width: 295,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(),
            image: DecorationImage(
              image: Image.asset('assets/images/a.png').image,
            ),
          ),
        ),
        Positioned(
          top: 18,
          right: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'دمشق',
                style: TextStyle(fontSize: 36, color: Colors.white),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xff059FB3),
                ),
                height: 21.5,
                width: 49,
                child: Text(
                  '3 وجهات',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              // Spacer(),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 5,
            right: 5,
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      '45 دقيقة',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      'مدة الرحلة',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6)),
                  height: 23,
                  width: 23,
                  child: Icon(
                    Icons.timer_sharp,
                    size: 15,
                  ),
                ),
              ],
            )),
        Positioned(
            bottom: 5,
            left: 27,
            child: Container(
              height: 24,
              width: 24,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: Icon(
                Icons.favorite_border,
                size: 15,
              ),
            ))
      ]),
    );
  }
}
