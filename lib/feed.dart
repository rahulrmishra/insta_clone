import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:insta_clone/post.dart';
import 'package:insta_clone/story.dart';

class Feed extends StatelessWidget {
  List<Story> _stories = [
    Story(
      "https://images.pexels.com/photos/3318626/pexels-photo-3318626.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "Jazmin",
    ),
    Story(
      "https://images.pexels.com/photos/5119214/pexels-photo-5119214.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "Sylvester",
    ),
    Story(
      "https://images.pexels.com/photos/2710131/pexels-photo-2710131.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "Lavina",
    ),
    Story(
      "https://images.pexels.com/photos/4890733/pexels-photo-4890733.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "Mckenzie",
    ),
    Story(
      "https://images.pexels.com/photos/704977/pexels-photo-704977.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "Buster",
    ),
    Story(
      "https://images.pexels.com/photos/2811087/pexels-photo-2811087.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "Carlie",
    ),
    Story(
      "https://images.pexels.com/photos/2816479/pexels-photo-2816479.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "Edison",
    ),
    Story(
      "https://images.pexels.com/photos/1719641/pexels-photo-1719641.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "Flossie",
    ),
    Story(
      "https://images.pexels.com/photos/4385304/pexels-photo-4385304.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "Lindsey",
    ),
    Story(
      "https://images.pexels.com/photos/3857868/pexels-photo-3857868.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "Freddy",
    ),
    Story(
      "https://images.pexels.com/photos/4407897/pexels-photo-4407897.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
      "Litzy",
    ),
  ];

  List<Post> posts = [
    Post(
        username: "Brianne",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/felipecsl/128.jpg",
        postImage:
            "https://images.pexels.com/photos/302769/pexels-photo-302769.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Mariano",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/ionuss/128.jpg",
        postImage:
            "https://images.pexels.com/photos/291762/pexels-photo-291762.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Johan",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/vinciarts/128.jpg",
        postImage:
            "https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "London",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/ssiskind/128.jpg",
        postImage:
            "https://images.pexels.com/photos/247298/pexels-photo-247298.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Jada",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/areus/128.jpg",
        postImage:
            "https://images.pexels.com/photos/169191/pexels-photo-169191.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
    Post(
        username: "Crawford",
        userImage:
            "https://s3.amazonaws.com/uifaces/faces/twitter/oskarlevinson/128.jpg",
        postImage:
            "https://images.pexels.com/photos/1252983/pexels-photo-1252983.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
        caption: "Consequatur nihil aliquid omnis consequatur."),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stories",
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    "Watch All",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 98,
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: _stories.map((story) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(
                            2,
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80),
                              border: Border.all(
                                width: 3,
                                color: Color(0xFF8e44ad),
                              )),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(80),
                            child: Image(
                              image: NetworkImage(story.image),
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(story.name),
                      ],
                    );
                  }).toList()),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: FadeInImage(
                                        image: NetworkImage(
                                            posts[index].userImage),
                                        placeholder: AssetImage(
                                            "assets/placeholder.png"),
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(posts[index].username),
                                  ],
                                ),
                                IconButton(
                                  icon: Icon(SimpleLineIcons.options),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          FadeInImage(
                            image: NetworkImage(posts[index].postImage),
                            placeholder: AssetImage("assets/placeholder.png"),
                            width: MediaQuery.of(context).size.width,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesome.heart_o),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesome.comment_o),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(FontAwesome.send_o),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(FontAwesome.bookmark_o),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: RichText(
                                softWrap: true,
                                overflow: TextOverflow.visible,
                                text: TextSpan(children: [
                                  TextSpan(
                                    text: "Liked By ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: "Sigmund,",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: " Yessenia,",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: " Dayana",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: " and",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: " 1263 others",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ])),
                          ),
                          // caption
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 5,
                            ),
                            child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: posts[index].username,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: " ${posts[index].caption}",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // post date
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 14,
                            ),
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Febuary 2020",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
