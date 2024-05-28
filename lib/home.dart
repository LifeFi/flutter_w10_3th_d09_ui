import 'package:flutter/material.dart';
import 'package:flutter_w10_3th_d09_ui/card.dart';
import 'package:flutter_w10_3th_d09_ui/util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const SizedBox(
                            height: 25,
                            width: 25,
                            child: CircularProgressIndicator(
                              strokeWidth: 3,
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            clipBehavior: Clip.hardEdge,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              getImage(),
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                      const FaIcon(
                        FontAwesomeIcons.plus,
                        color: Colors.white,
                        size: 25,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("MONDAY 16"),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const Text(
                            "TODAY",
                            style: TextStyle(fontSize: 36),
                          ),
                          Container(
                            width: 20,
                            alignment: Alignment.center,
                            child: Container(
                              width: 7,
                              height: 7,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          ...[17, 18, 19, 20, 21, 22].map(
                            (item) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                item.toString(),
                                style: const TextStyle(
                                  fontSize: 42,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const ItemCard(
                  title: "Design Meeting",
                  people: ["Alex", "Helena", "Nana"],
                  hasMe: false,
                  startHour: "11",
                  startMinute: "30",
                  endHour: "12",
                  endMinute: "20",
                  bgColor: Color(0xFFFEF754),
                ),
                const ItemCard(
                  title: "Daily Project",
                  people: ["Richard", "Ciry", "abc", "def", "ghi"],
                  hasMe: true,
                  startHour: "12",
                  startMinute: "35",
                  endHour: "14",
                  endMinute: "10",
                  bgColor: Color(0xFF9C6BCE),
                ),
                const ItemCard(
                  title: "Weekly Planning",
                  people: ["den", "nana", "mark"],
                  hasMe: false,
                  startHour: "16",
                  startMinute: "00",
                  endHour: "16",
                  endMinute: "30",
                  bgColor: Color(0xFFBBEE4B),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
