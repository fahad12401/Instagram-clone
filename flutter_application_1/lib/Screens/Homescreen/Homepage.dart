import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/images.dart';
import 'package:flutter_application_1/Widgets/text.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.photo_camera_outlined,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.live_tv_outlined,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.message_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  imagewidget(
                    imgname: 'assets/pic1.jpg',
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  imagewidget(
                    imgname: 'assets/pic2.jpg',
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  imagewidget(
                    imgname: 'assets/pic3.jpg',
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  imagewidget(
                    imgname: 'assets/pic4.jpg',
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  imagewidget(
                    imgname: 'assets/pic5.jpg',
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  imagewidget(
                    imgname: 'assets/pic6.jpg',
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  imagewidget(
                    imgname: 'assets/pic7.jpg',
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  imagewidget(
                    imgname: 'assets/pic8.jpg',
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  imagewidget(
                    imgname: 'assets/pic9.jpg',
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  imagewidget(
                    imgname: 'assets/pic10.jpg',
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            Column(
              children: [
                Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              imagewidget(
                                imgname: 'assets/pic10.jpg',
                                radus: 17.0,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                children: [
                                  textwidget(
                                    personame: 'Taha Ansari',
                                    username: 'taha_123',
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_vert_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Image.asset('assets/pic10.jpg'),
                        Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.mode_comment_outlined,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.send_sharp,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Icon(
                                  Icons.more_horiz_outlined,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 140,
                                ),
                                Icon(
                                  Icons.bookmark_border_outlined,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    imagewidget(
                                      imgname: 'assets/pic3.jpg',
                                      radus: 12.0,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'liked by craig_love and 44,686 others',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Joshua_1 The Game in Japan was amazing and i want to share some photos",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                              ),
                            ),
                            Divider(
                              thickness: 1,
                              color: Colors.black,
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              imagewidget(
                                                imgname: 'assets/pic2.jpg',
                                                radus: 20.0,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                children: [
                                                  textwidget(
                                                    personame: 'Taha Ansari',
                                                    username: 'taha_123',
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Icon(
                                            Icons.more_vert_outlined,
                                            color: Colors.black,
                                          )
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Divider(
                                          thickness: 1,
                                          color: Colors.black,
                                        ),
                                        Image.asset('assets/pic5.jpg'),
                                        Divider(
                                          thickness: 1,
                                          color: Colors.black,
                                        ),
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .favorite_border_outlined,
                                                  color: Colors.black,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                  Icons.mode_comment_outlined,
                                                  color: Colors.black,
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Icon(
                                                  Icons.send_sharp,
                                                  color: Colors.black,
                                                ),
                                                SizedBox(
                                                  width: 100,
                                                ),
                                                Icon(
                                                  Icons.more_horiz_outlined,
                                                  color: Colors.black,
                                                ),
                                                SizedBox(
                                                  width: 140,
                                                ),
                                                Icon(
                                                  Icons
                                                      .bookmark_border_outlined,
                                                  color: Colors.black,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    imagewidget(
                                                      imgname:
                                                          'assets/pic3.jpg',
                                                      radus: 12.0,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      'liked by craig_love and 44,686 others',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Joshua_1 The Game in Japan was amazing and i want to share some photos",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: Colors.black,
                                            ),
                                            Column(
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              imagewidget(
                                                                imgname:
                                                                    'assets/pic4.jpg',
                                                                radus: 20.0,
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  textwidget(
                                                                    personame:
                                                                        'Azam Khan',
                                                                    username:
                                                                        'khan_123',
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .more_vert_outlined,
                                                            color: Colors.black,
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Column(
                                                      children: [
                                                        Divider(
                                                          thickness: 1,
                                                          color: Colors.black,
                                                        ),
                                                        Image.asset(
                                                            'assets/pic6.jpg'),
                                                        Divider(
                                                          thickness: 1,
                                                          color: Colors.black,
                                                        ),
                                                        Column(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .favorite_border_outlined,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .mode_comment_outlined,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                                SizedBox(
                                                                  width: 10,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .send_sharp,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                                SizedBox(
                                                                  width: 100,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .more_horiz_outlined,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                                SizedBox(
                                                                  width: 140,
                                                                ),
                                                                Icon(
                                                                  Icons
                                                                      .bookmark_border_outlined,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            Column(
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    imagewidget(
                                                                      imgname:
                                                                          'assets/pic7.jpg',
                                                                      radus:
                                                                          12.0,
                                                                    ),
                                                                    SizedBox(
                                                                      width: 10,
                                                                    ),
                                                                    Text(
                                                                      'liked by craig_love and 44,686 others',
                                                                      style:
                                                                          TextStyle(
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "Joshua_1 The Game in Japan was amazing and i want to share some photos",
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                            Divider(
                                                              thickness: 1,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
