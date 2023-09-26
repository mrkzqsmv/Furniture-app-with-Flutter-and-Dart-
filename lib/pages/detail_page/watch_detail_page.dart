import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/constants/app_constants.dart';
import 'package:furniture_app/models/watch.dart';

class WatchDetailPage extends StatefulWidget {
  final Watch watch;
  const WatchDetailPage({super.key, required this.watch});

  @override
  State<WatchDetailPage> createState() => _WatchDetailPageState();
}

class _WatchDetailPageState extends State<WatchDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: SvgPicture.asset('assets/icons/arrow-long-left.svg')),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/bag.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              'WATCH',
              style: Constants.detailPageCategoryName,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.watch.watchName,
              style: Constants.detailPageSpecialName,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Form',
              style: Constants.detailPageFormName,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.watch.watchPrice,
              style: Constants.detailPagePrice,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Available Colors',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                colorDot(Colors.green),
                const SizedBox(
                  width: 5,
                ),
                colorDot(Colors.grey),
                const SizedBox(
                  width: 5,
                ),
                colorDot(Colors.black),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CircleAvatar(
                maxRadius: 100,
                child: Hero(
                  tag: widget.watch,
                  child: CircleAvatar(
                    maxRadius: 100,
                    child: Image.asset(
                      widget.watch.watchImgPath,
                      width: 400,
                      height: 600,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.05,
              decoration: BoxDecoration(
                color: Colors.purple.shade300,
                boxShadow: const [BoxShadow(blurRadius: 10)],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(child: Text('Add to Cart')),
            ),
          ],
        ),
      ),
    );
  }

  Widget colorDot(Color color) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
