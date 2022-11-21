import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xff131418),
          ),
          backgroundColor: const Color(0xffE5E5E5),
          shadowColor: Colors.transparent,
          title: const Text(
            "Kategoriyalar",
            style: TextStyle(color: Color(0xff131418)),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          margin: const EdgeInsets.only(top: 33),
          child: Column(children: [
            Expanded(
                child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 19,
                mainAxisSpacing: 19,
              ),
              itemBuilder: (context, index) => Container(
                height: 162,
                width: 162,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 75,
                    width: 75,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff131418),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                          top: 18, left: 19, right: 18, bottom: 18),
                      child: Image(
                        image: AssetImage('assets/icon.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: const Center(
                        child: Text(
                      'Avto',
                      style: TextStyle(
                        color: Color(0xff131418),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                  )
                ]),
              ),
            )),
          ]),
        ),
      ),
    );
  }
}
