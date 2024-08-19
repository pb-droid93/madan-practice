import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_flutter/widget/cutom_appbar.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: CustomAppbar(
          titleText: 'Stack Widget',
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                color: Colors.yellow,
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/images/srifin_plant.png'),
              ),
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.orange,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
            )
          ],
        ),
        // child: Container(
        //   color: Colors.blue,
        //   child: Center(
        //     child: Stack(
        //       children: [
        //         Positioned(
        //           bottom: 10,
        //           left: 50,
        //           child: Container(
        //             height: 300,
        //             width: 300,
        //             color: Colors.yellow,
        //           ),
        //         ),
        //         Positioned(
        //           top: 10,
        //           right: 30,
        //           child: Container(
        //             height: 200,
        //             width: 200,
        //             color: Colors.purple,
        //           ),
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.green,
        //         ),
        //         Center(
        //           child: Container(
        //             height: 50,
        //             width: 50,
        //             color: Colors.red,
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
