import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants/app_constants.dart';
import 'package:furniture_app/pages/home_page/row_line_chairs_in_home_page.dart';
import 'package:furniture_app/pages/home_page/row_line_phones_in_home_page.dart';
import 'package:furniture_app/pages/home_page/row_line_watch_in_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(
              'Armchairs',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.grey.shade600),
            ),
            const SizedBox(
              height: 200,
              child: RowLineChairsInHomePage(),
            ),
            Text(
              'Phones',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.grey.shade600),
            ),
            const SizedBox(
              height: 200,
              child: RowLinePhonesInHomePage(),
            ),
            Text(
              'Watches',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.grey.shade600),
            ),
            const SizedBox(
              height: 200,
              child: RowLineWatchesInHomePage(),
            ),
            Text(
              'Headphones',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.grey.shade600),
            ),
            const SizedBox(
              height: 200,
              child: RowLinePhonesInHomePage(),
            ),
          ],
        ),
      ),
    );
  }

  //build app bar
  AppBar buildAppBar() {
    return AppBar(
      leading: Padding(
        padding: Constants.homePageMenuIcon,
        child: InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            'assets/icons/menu.svg',
          ),
        ),
      ),
      actions: [
        TextButton.icon(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/scan.svg',
          ),
          label: const Text(
            'Scan',
            style: Constants.homePageScanText,
          ),
        ),
      ],
    );
  }
}
