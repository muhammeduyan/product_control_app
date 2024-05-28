import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  final String image;
  final String boxName;

  const MyBox({required this.image, required this.boxName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('$boxName clicked');
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          height: 170,
          width: 170,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage(image),
                height: 100,
                width: 100,
              ),
            ),
            Text(
              boxName,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
