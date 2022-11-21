import 'package:flutter/material.dart';

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff151515),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          margin: const EdgeInsets.only(top: 52),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 1, top: 4),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 24),
                  child: const Text(
                    'Complete your Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 48),
              child: const Divider(
                thickness: 2,
                color: Color(0xff2E2E2E),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: const Text(
                'Tags',
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: const Text(
                'Choose up to 3 tags that describe you the best ',
                style: TextStyle(
                  color: Color(0xff4C4B4F),
                ),
              ),
            ),
            Expanded(
                child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 9,
                  mainAxisSpacing: 8,
                  mainAxisExtent: 106),
              itemBuilder: (context, index) => Column(
                children: [
                  Container(
                    height: 106,
                    width: 151,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/fitness.png'),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 82, left: 16),
                      child: const Text(
                        'Health & Fitness',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ]),
        ),
      ),
    );
  }
}
