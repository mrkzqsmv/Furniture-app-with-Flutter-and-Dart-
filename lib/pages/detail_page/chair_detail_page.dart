import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/models/chair.dart';

class ChairDetailPage extends StatefulWidget {
  final Chair chair;
  const ChairDetailPage({super.key, required this.chair});

  @override
  State<ChairDetailPage> createState() => _ChairDetailPageState();
}

class _ChairDetailPageState extends State<ChairDetailPage> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'CHAIR',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(widget.chair.chairName),
          const Text('Form'),
          Text(widget.chair.chairPrice),
          const Text('Available Colors'),
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
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
              color: Colors.purple.shade300,
              boxShadow: const [BoxShadow(blurRadius: 10)],
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(child: Text('Add to Cart')),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CircleAvatar(
              child: CircleAvatar(
                child: Image.asset(widget.chair.chairImgPath),
              ),
            ),
          ),
        ],
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
