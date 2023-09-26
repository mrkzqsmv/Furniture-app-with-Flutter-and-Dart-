import 'package:flutter/material.dart';
import 'package:furniture_app/models/chair.dart';
import 'package:furniture_app/pages/detail_page/chair_detail_page.dart';

class RowLineChairsInHomePage extends StatelessWidget {
  const RowLineChairsInHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: allChairs.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ChairDetailPage(chair: allChairs[index]),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.only(right: 10),
              elevation: 30,
              shadowColor: Colors.black,
              color: Colors.grey.shade100,
              child: SizedBox(
                width: 200,
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Hero(
                        tag: allChairs[index],
                        child: CircleAvatar(
                          radius: 50,
                          child: Image.asset(
                            allChairImagePaths[index],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Text(
                          allChairs[index].chairName,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Expanded(child: Text(allChairs[index].chairPrice)),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
