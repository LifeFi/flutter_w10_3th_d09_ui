import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final List<String> people;
  final bool hasMe;
  final String startHour;
  final String startMinute;
  final String endHour;
  final String endMinute;
  final Color bgColor;

  const ItemCard({
    super.key,
    required this.title,
    required this.people,
    required this.hasMe,
    required this.startHour,
    required this.startMinute,
    required this.endHour,
    required this.endMinute,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    final peopleList = [
      if (hasMe) 'me',
      ...people,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 25,
        ),
        height: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          color: bgColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 20, top: 3, bottom: 3),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          startHour,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          startMinute,
                          style: const TextStyle(
                            color: Colors.black,
                            height: 0.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Expanded(
                          child: VerticalDivider(
                            indent: 10,
                            color: Colors.black.withOpacity(0.4),
                          ),
                        ),
                        Text(
                          endHour,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          endMinute,
                          style: const TextStyle(
                            color: Colors.black,
                            height: 0.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      title.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 65,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -5,
                        height: 0.9,
                      ),
                      maxLines: 2,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Row(
                children: [
                  for (var i = 0; i < 4 && i < peopleList.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        i == 3 && peopleList.length > 4
                            ? '+${peopleList.length - 3}'
                            : peopleList[i].toUpperCase(),
                        style: TextStyle(
                          color: hasMe && i == 0
                              ? Colors.black
                              : Colors.black.withOpacity(0.5),
                          fontWeight: hasMe && i == 0
                              ? FontWeight.w600
                              : FontWeight.w300,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
