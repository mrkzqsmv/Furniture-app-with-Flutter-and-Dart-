import 'package:flutter/material.dart';
import 'package:furniture_app/models/phone.dart';
import 'package:furniture_app/pages/detail_page/phone_detail_page.dart';
class RowLinePhonesInHomePage extends StatelessWidget {
  const RowLinePhonesInHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: allPhones.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhoneDetailPage(
                    phone: allPhones[index],
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
                        tag: allPhones[index],
                        child: CircleAvatar(
                          radius: 50,
                          child: Image.asset(
                            allPhoneImagePaths[index],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Text(
                          allPhones[index].phoneName,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                      Expanded(child: Text(allPhones[index].phonePrice)),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
