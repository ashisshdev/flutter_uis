// ignore_for_file: prefer_const_constructors
import 'dart:math' as math;
import 'dart:math';

import 'package:flutter/material.dart';

class InstagramHome extends StatelessWidget {
  const InstagramHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.camera_alt,
          color: Colors.black,
          size: 30,
        ),
        backgroundColor: Colors.white,
        elevation: 0.3,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 10),
            child: Transform.rotate(
                angle: 320 * math.pi / 180,
                child: Icon(
                  Icons.send_sharp,
                  color: Colors.black,
                  size: 30,
                )),
          ),
        ],
        title: Image.asset("assets/images/uis/instagram/logo.PNG"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              height: 99,
              width: MediaQuery.of(context).size.width * 0.99,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Colors.black.withOpacity(0.1))),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
//                          borderRadius: BorderRadius.all(Radius.circular(45)),
                              gradient: LinearGradient(colors: colors),
                            ),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(stories[stories.length - index - 1]),
                              radius: 28,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            usernames[index],
                            textScaleFactor: 0.8,
                            style: TextStyle(overflow: TextOverflow.ellipsis, color: Colors.black87),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Flexible(
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: dummyPosts.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.99,
                        decoration: BoxDecoration(
                            //    border: Border.all(color: Colors.black.withOpacity(0.2))
                            ),
                        padding: EdgeInsets.all(2),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 3,
                                ),
                                Container(
                                  padding: EdgeInsets.all(3),
                                  margin: EdgeInsets.only(right: 5),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
//                          borderRadius: BorderRadius.all(Radius.circular(45)),
                                    gradient: LinearGradient(colors: colors),
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(stories[stories.length - index - 1]),
                                    radius: 10,
                                  ),
                                ),
                                Text(" " + dummyPosts[index].username),
                                Spacer(),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.black.withOpacity(0.6),
                                )
                              ],
                            ),
                            Container(
                              height: 100,
                            )
                          ],
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}

List usernames = [
  "ashiish.dev",
  "theflutterway",
  "hello_world",
  "heaven",
  "random_tiktoker",
  "tech_reviews",
  "s_ghanghas",
  "blade_runner"
];

double falseProbability = .3;

List stories = List<String>.generate(8, (index) => "assets/images/uis/whatsapp_ui/persons/${index + 1}.jfif");

List<PostModel> dummyPosts = List<PostModel>.generate(8, (i) {
  return PostModel(usernames[i].toString().toLowerCase(), "assets/images/uis/instagram/posts/${i + 1}.png",
      Random().nextDouble() > falseProbability, int.parse(Random().nextInt(500).toString()) + 500);
});

class PostModel {
  final String username;
  final String image;
  final bool isLiked;
  final int likes;

  PostModel(this.username, this.image, this.isLiked, this.likes);
}

List<Color> colors = [
  Color(0xFFF58529),
  Color(0xFFFEDA77),
  Color(0xFFDD2A7B),
  Color(0xFF8134AF),
  Color(0xFF515BD4),
];
