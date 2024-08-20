import 'package:flutter/material.dart';

class Day20 extends StatefulWidget {
  const Day20({super.key});

  @override
  State<Day20> createState() => _Day20State();
}

class _Day20State extends State<Day20> {
  var image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "wanda.s",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    width: 180,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTbqkj7uqS4RFpZZfPRu50xIJY9gss2dqAOg&s'),
                        ),
                        Text(
                          'Wandda.s ',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'photgrapher/newyork',
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                postFollow('150', 'Post'),
                                const SizedBox(
                                  width: 10,
                                ),
                                postFollow('5K', 'Followers'),
                                const SizedBox(
                                  width: 10,
                                ),
                                postFollow('100', 'Following')
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.blue)),
                                      onPressed: () {},
                                      child: const Text(
                                        'Follow',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 50,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.blue, width: 2),
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.arrow_downward,
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTbqkj7uqS4RFpZZfPRu50xIJY9gss2dqAOg&s'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const Text('Title'),
                      ],
                    );
                  }),
            ),
            // Container(
            //   height: 100,
            //   color: Colors.blueGrey,
            // ),
            Expanded(
                child: Container(
              child: GridView.builder(
                  itemCount: 30,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    if (index % 2 == 0 && index % 3 == 0) {
                      image =
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTthfhgQi-NLtgpTSJbITZtlrHLscP9ixuRMUBULQh-UNYnztIa_hAGSQ1IApduAkoMHjk&usqp=CAU';
                    } else if (index % 2 == 0) {
                      image =
                          'https://c8.alamy.com/comp/HH3XH6/a-bunch-of-random-flowers-HH3XH6.jpg';
                    } else if (index % 3 == 0) {
                      image =
                          'https://cdn.pixabay.com/photo/2016/09/08/18/45/cube-1655118_1280.jpg';
                    } else {
                      image =
                          'https://thumbs.dreamstime.com/z/random-mosaic-pattern-1032692.jpg?ct=jpeg';
                    }
                    return Container(
                      margin: const EdgeInsets.all(5),
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(image.toString()),
                            fit: BoxFit.cover),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    );
                  }),
            ))
          ],
        ),
      ),
    );
  }

  Widget postFollow(String count, String txt) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          txt,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
