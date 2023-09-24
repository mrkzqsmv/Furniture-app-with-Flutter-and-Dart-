import 'package:flutter/material.dart';
import 'package:furniture_app/models/watch.dart';
import 'package:furniture_app/pages/detail_page/watch_detail_page.dart';

class RowLineWatchesInHomePage extends StatelessWidget {
  const RowLineWatchesInHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: allWatches.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WatchDetailPage(
                    watch: allWatches[index],
                  ),
                ),
              );
            },
            child: Card(
              elevation: 50,
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
                        tag: allWatches,
                        child: CircleAvatar(
                          radius: 50,
                          child: Image.asset(
                            allWatchImagePaths[index],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Text(
                          allWatches[index].watchName,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Expanded(child: Text(allWatches[index].watchPrice)),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
