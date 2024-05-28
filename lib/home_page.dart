import 'package:flutter/material.dart';
import 'package:product_control_app/utils/box.dart';

class HomePage extends StatelessWidget {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      color: Colors.deepPurple,
      height: height,
      width: width,
      child: Column(
        children: [
          Container(
            height: height * 0.25,
            width: width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 40),
                      child: InkWell(
                        onTap: () {
                          print('Menu button clicked');
                        },
                        child: const Icon(Icons.menu, size: 30, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30, top: 40),
                      child: InkWell(
                        onTap: () {
                          print('Profile button clicked');
                        },
                        child:
                            const Icon(Icons.person, size: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Product Control',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Last updated: 10:30 AM",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            height: height * 0.75,
            width: width,
            child: const Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                MyBox(image: 'assets/images/check.png', boxName: 'Check State'),
                MyBox(image: 'assets/images/money.png', boxName: 'Price',),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                MyBox(image: 'assets/images/delivery-box.png', boxName: 'Delivery',),
                MyBox(image: 'assets/images/products.png', boxName: 'Stock',),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                MyBox(image: 'assets/images/qr-code.png', boxName: 'QR Code',),
                MyBox(image: 'assets/images/discount.png', boxName: 'Discount',),
              ],)
            ],),
          ),
        ],
      ),
    ));
  }
}
