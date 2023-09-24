class Watch {
  final String watchImgPath;
  final String watchName;
  final String watchPrice;

  Watch(
      {required this.watchImgPath,
      required this.watchName,
      required this.watchPrice});
} 

List<String> allWatchImagePaths = [
  'assets/images/watch1.png',
  'assets/images/watch2.png',
  'assets/images/watch3.png',
  'assets/images/watch4.png',
  'assets/images/watch5.png',
];

List<Watch> allWatches = [
  Watch(watchImgPath: allWatchImagePaths[0], watchName: 'Swiss Millitary', watchPrice: '\$1099'),
  Watch(watchImgPath: allWatchImagePaths[1], watchName: 'Casio', watchPrice: '\$1099'),
  Watch(watchImgPath: allWatchImagePaths[2], watchName: 'Digital watch', watchPrice: '\$1099'),
  Watch(watchImgPath: allWatchImagePaths[3], watchName: 'Sport Watch', watchPrice: '\$1099'),
  Watch(watchImgPath: allWatchImagePaths[4], watchName: 'Oris', watchPrice: '\$1099'),
];
