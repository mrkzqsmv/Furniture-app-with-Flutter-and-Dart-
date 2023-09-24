class Chair {
  final String chairImgPath;
  final String chairName;
  final String chairPrice;

  Chair(
      {required this.chairImgPath,
      required this.chairName,
      required this.chairPrice});
}

List<Chair> allChairs = [
  Chair(
      chairImgPath: allChairImagePaths[0],
      chairName: 'Armchair',
      chairPrice: '\$200'),
  Chair(
      chairImgPath: allChairImagePaths[1],
      chairName: 'Sofa',
      chairPrice: '\$500'),
  Chair(
      chairImgPath: allChairImagePaths[2],
      chairName: 'Recliner',
      chairPrice: '\$300'),
  Chair(
      chairImgPath: allChairImagePaths[3],
      chairName: 'Ottoman',
      chairPrice: '\$50'),
  Chair(
      chairImgPath: allChairImagePaths[4],
      chairName: 'Loveseat',
      chairPrice: '\$300'),
  Chair(
      chairImgPath: allChairImagePaths[5],
      chairName: 'Bench',
      chairPrice: '\$100'),
  Chair(
      chairImgPath: allChairImagePaths[6],
      chairName: 'Chaise lounge',
      chairPrice: '\$200'),
  Chair(
      chairImgPath: allChairImagePaths[7],
      chairName: 'Bar stool',
      chairPrice: '\$780'),
  Chair(
      chairImgPath: allChairImagePaths[8],
      chairName: 'Papasan chair',
      chairPrice: '\$520'),
  Chair(
      chairImgPath: allChairImagePaths[9],
      chairName: 'Slipper chair',
      chairPrice: '\$100'),
];

List<String> allChairImagePaths = [
  'assets/images/1.png',
  'assets/images/2.png',
  'assets/images/3.png',
  'assets/images/4.png',
  'assets/images/5.png',
  'assets/images/6.png',
  'assets/images/7.png',
  'assets/images/8.png',
  'assets/images/9.png',
  'assets/images/10.png'
];