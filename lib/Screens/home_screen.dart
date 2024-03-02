import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:kmunity_se/component/infomodel.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFF7500), Colors.white],
        )),
        child: Stack(
          children: [
            Positioned(
              top: 60,
              left: 20,
              child: Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'HELLO !',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.titleLarge,
                              fontSize: 33,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 20,
              child: Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Welcome To Kmunity',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.titleLarge,
                              fontSize: 33,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 180,
              left: 20,
              child: Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'INFORMATION',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.titleLarge,
                              fontSize: 23,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 230,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider(
                  items: infoData.infoNewsData.map((info) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            Image.network(
                              info.urlImage!,
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Positioned(
                              bottom: 10,
                              left: 10,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  info.text!,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(height: 200),
                ),
              ),
            ),
            Positioned(
              top: 450,
              left: 20,
              child: Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'MOVIE',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.titleLarge,
                              fontSize: 23,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 500,
              left: 20,
              child: Container(
                width: MediaQuery.of(context).size.width - 40,
                height: 400, // กำหนดความสูงของ ListView
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      color: Colors.grey,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        'Item 1',
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      color: Colors.grey,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: const Text(
                        'Item 2',
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 200,
                      color: Colors.grey,
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left:
                                    8.0), // กำหนดระยะห่างระหว่างรูปภาพกับข้อความ
                            child: Image.asset(
                              'assets/images/Dno.jpg', // เพิ่มรูปภาพตามที่คุณต้องการ
                              width: 50, // กำหนดความกว้างของรูปภาพ
                              height: 50, // กำหนดความสูงของรูปภาพ
                              fit: BoxFit.cover, // กำหนดการแสดงผลของรูปภาพ
                            ),
                          ),
                          const SizedBox(
                              width:
                                  8), // เพิ่ม SizedBox เพื่อสร้างระยะห่างระหว่างรูปภาพกับข้อความ
                          const Text(
                            'Item 2',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}