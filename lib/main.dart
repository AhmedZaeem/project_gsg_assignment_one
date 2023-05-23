import 'package:flutter/material.dart';
import 'package:project_gsg_assignment_one/player.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music GSG',
      home: Scaffold(
          body: SingleChildScrollView(
        child: Center(
          child: Container(
              color: Colors.grey[200],
              child: SafeArea(
                child: Column(children: [
                  SizedBox(height: MediaQuery.of(context).size.height * .08),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16),
                        height: MediaQuery.of(context).size.height * .15,
                        width: MediaQuery.of(context).size.width * .2,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(8, 8),
                                  blurRadius: 16),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-4, -4),
                                  blurRadius: 8),
                            ]),
                        child: Icon(Icons.save,
                            size: MediaQuery.of(context).size.width * 0.09,
                            color: Colors.grey),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => player(),
                              ));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          height: MediaQuery.of(context).size.height * .3,
                          width: MediaQuery.of(context).size.width * .5,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                              image: DecorationImage(
                                image: AssetImage('assets/images/sada.jpg'),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(8, 8),
                                    blurRadius: 16),
                                BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(-4, -4),
                                    blurRadius: 8),
                              ]),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        height: MediaQuery.of(context).size.height * .15,
                        width: MediaQuery.of(context).size.width * .2,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(8, 8),
                                  blurRadius: 16),
                              BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-4, -4),
                                  blurRadius: 8),
                            ]),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.grey,
                          size: MediaQuery.of(context).size.width * 0.09,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .09),
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[50],
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        padding: EdgeInsets.all(24),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Sada',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .08,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                ),
                                Text(
                                  'Mojanad',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .05,
                                      color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue[300],
                              ),
                              height: MediaQuery.of(context).size.height * .08,
                              width: MediaQuery.of(context).size.height * .08,
                              child: Icon(
                                Icons.square,
                                color: Colors.grey[200],
                                size: MediaQuery.of(context).size.width * .06,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        padding: EdgeInsets.all(24),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Superlife',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .08,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                ),
                                Text(
                                  '2Scratch',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .05,
                                      color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(8, 8),
                                        blurRadius: 16),
                                    BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(-4, -4),
                                        blurRadius: 8),
                                  ]),
                              height: MediaQuery.of(context).size.height * .08,
                              width: MediaQuery.of(context).size.height * .08,
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.grey[400],
                                size: MediaQuery.of(context).size.width * .12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        padding: EdgeInsets.all(24),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Close to heaven',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .08,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                ),
                                Text(
                                  'Breaking Benjamin',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .05,
                                      color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(8, 8),
                                        blurRadius: 16),
                                    BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(-4, -4),
                                        blurRadius: 8),
                                  ]),
                              height: MediaQuery.of(context).size.height * .08,
                              width: MediaQuery.of(context).size.height * .08,
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.grey[400],
                                size: MediaQuery.of(context).size.width * .12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        padding: EdgeInsets.all(24),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Bring me back  \n to life',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .08,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  'Evanescence',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .05,
                                      color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(8, 8),
                                        blurRadius: 16),
                                    BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(-4, -4),
                                        blurRadius: 8),
                                  ]),
                              height: MediaQuery.of(context).size.height * .08,
                              width: MediaQuery.of(context).size.height * .08,
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.grey[400],
                                size: MediaQuery.of(context).size.width * .12,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        padding: EdgeInsets.all(24),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Bthoon',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .08,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                ),
                                Text(
                                  'BigSam',
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              .05,
                                      color: Colors.grey[700]),
                                ),
                              ],
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(8, 8),
                                        blurRadius: 16),
                                    BoxShadow(
                                        color: Colors.white,
                                        offset: Offset(-4, -4),
                                        blurRadius: 8),
                                  ]),
                              height: MediaQuery.of(context).size.height * .08,
                              width: MediaQuery.of(context).size.height * .08,
                              child: Icon(
                                Icons.play_arrow,
                                color: Colors.grey[400],
                                size: MediaQuery.of(context).size.width * .12,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ]),
              )),
        ),
      )),
    );
  }
}
