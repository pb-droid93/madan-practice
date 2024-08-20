import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Day19 extends StatefulWidget {
  const Day19({super.key});

  @override
  State<Day19> createState() => _Day19State();
}

class _Day19State extends State<Day19> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 500,
                    //color: Colors.yellow,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            height: 450,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2016/07/07/16/46/dice-1502706_640.jpg'),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 50,
                          left: 20,
                          child: FaIcon(
                            FontAwesomeIcons.arrowLeftLong,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                          right: 20,
                          top: 50,
                          child: Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          ),
                        ),
                        const Positioned(
                          bottom: 0,
                          right: 20,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTbqkj7uqS4RFpZZfPRu50xIJY9gss2dqAOg&s'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(8),
              // color: Colors.blue,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid city tour for designer',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'This is the random topic about ',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20', Icons.favorite_rounded),
                  rowIconText('34', Icons.upload),
                  rowIconText('82', Icons.message),
                  rowIconText('295', Icons.face),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: const Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                  " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an "
                  "unknown printer took a galley of type and scrambled it to make a type specimen book. "
                  "It has survived not only five centuries, but also the leap into electronic typesetting,",
                  style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Icon(icon),
      ],
    );
  }
}
