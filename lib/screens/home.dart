import 'package:flutter/material.dart';
import 'package:flutter_app_example/core/data/categories.dart';
import 'package:flutter_app_example/core/data/events.dart';
import 'package:flutter_app_example/core/models/category.dart';
import 'package:flutter_app_example/core/models/event.dart';
import 'package:flutter_app_example/screens/profile.dart';
import 'package:flutter_app_example/screens/utils/constants.dart';
import 'package:flutter_app_example/screens/utils/util.dart';
import 'package:flutter_app_example/screens/widgets/category_item.dart';
import 'package:flutter_app_example/screens/widgets/event_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                color: Colors.black45,
                fontSize: 18,
              ),
            ),
            Text(
              'Tony Starck',
              style: TextStyle(
                  color: Constants.appColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
            icon: const CircleAvatar(
              backgroundColor: Constants.appColor,
              backgroundImage: NetworkImage(
                  'https://mcdn.wallpapersafari.com/medium/99/17/xZvB1C.jpg'),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.22,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Constants.appColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.freeimages.com/images/large-previews/51f/healthy-food-1328279.jpg'),
                          fit: BoxFit.cover)),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.fromLTRB(25, 45, 25, 5),
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'For you !',
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Text(
                          'Just take it and enjoy',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () => Util.showAdaptiveDialog(context,
                              title: "Coming soon 😎",
                              content: "Don't forget to give me a like",
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    "Skip",
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text("Okay !, let's go",
                                      style:
                                          TextStyle(color: Constants.appColor)),
                                )
                              ]),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Constants.appColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "Don't forget, call me",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )),
              const SizedBox(height: 10),
              SizedBox(
                height: 110,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      Category category = categories[index];
                      return InkWell(
                        onTap: () => Util.showAdaptiveDialog(context,
                            title: "Coming soon 😎",
                            content: "Don't forget to give me a like",
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  "Skip",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Okay !, let's go",
                                    style:
                                        TextStyle(color: Constants.appColor)),
                              )
                            ]),
                        borderRadius: BorderRadius.circular(10),
                        child: CategoryItem(category: category),
                      );
                    }),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Our Events',
                      style: TextStyle(color: Constants.appColor, fontSize: 15),
                    ),
                    InkWell(
                      onTap: () => Util.showAdaptiveDialog(context,
                          title: "Coming soon 😎",
                          content: "Don't forget to give me a like",
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                "Skip",
                                style: TextStyle(color: Colors.black54),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("Okay !, let's go",
                                  style: TextStyle(color: Constants.appColor)),
                            )
                          ]),
                      child: Text(
                        'See more',
                        style: TextStyle(
                            fontSize: 12,
                            color: Constants.appColor.withOpacity(0.7)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.36,
                child: ListView.builder(
                    itemCount: events.length,
                    itemBuilder: (context, index) {
                      Event event = events[index];
                      return InkWell(
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => Util.showAdaptiveDialog(context,
                            title: "Coming soon 😎",
                            content: "Don't forget to give me a like",
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text(
                                  "Skip",
                                  style: TextStyle(color: Colors.black54),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Okay !, let's go",
                                    style:
                                        TextStyle(color: Constants.appColor)),
                              )
                            ]),
                        child: EventItem(event: event),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
