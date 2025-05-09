// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var storySize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Facebook",
            style: TextStyle(
              color: Color(0xFF1877F2),
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/add.png"),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 34,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/massanger.png"),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Color(0xff1877F2),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Color(0xff1877F2),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(icon: ImageIcon(AssetImage("assets/icons/home.png"))),
              Tab(icon: ImageIcon(AssetImage("assets/icons/Video.png"))),
              Tab(icon: ImageIcon(AssetImage("assets/icons/Store.png"))),
              Tab(icon: ImageIcon(AssetImage("assets/icons/Profile.png"))),
              Tab(icon: ImageIcon(AssetImage("assets/icons/Notification.png"))),
              Tab(
                icon: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/photo.png"),
                  radius: 15,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/photo.png"),
                      radius: 25,
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What’s on your mind?",
                          hintStyle: TextStyle(
                            color: Color(0xff898F9C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: ImageIcon(
                        AssetImage("assets/icons/Photos.png"),
                        size: 30,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Divider(color: Color(0xff898F9C), thickness: 2),
              SizedBox(
                height: storySize.height * 0.22,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(width: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return SizedBox(
                        width: storySize.height * 0.17,
                        child: Column(
                          children: [
                            Expanded(
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      "assets/images/photo.png",
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 8,
                                    child: CircleAvatar(
                                      backgroundColor: Colors.blue,
                                      radius: 16,
                                      child: Icon(Icons.add, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Create a Story",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    }

                    return SizedBox(
                      width: storySize.height * 0.17,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage("assets/images/messi.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/photo.png"),
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/photo.png"),
                                radius: 17,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            child: Text(
                              "Khaled",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Divider(color: Color(0xff898F9C), thickness: 2),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/images/Route.png"),
                          radius: 25,
                        ),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Route",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "8h •",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                                Icon(
                                  Icons.public,
                                  size: 12,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      "This is a post description or caption.",
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/images/post_image.png",
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.thumb_up, color: Colors.blue, size: 18),
                            SizedBox(width: 4),
                            Text("1.2k"),
                          ],
                        ),
                        Row(
                          children: [
                            Text("300 Comments • 50 Shares",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    Divider(thickness: 1),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.thumb_up_outlined, size: 18),
                            label: Text("Like"),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.comment_outlined, size: 18),
                            label: Text("Comment"),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.share_outlined, size: 18),
                            label: Text("Share"),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
