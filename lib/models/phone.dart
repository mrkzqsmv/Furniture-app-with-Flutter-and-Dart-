class Phone {
  final String phoneImgPath;
  final String phoneName;
  final String phonePrice;

  Phone(
      {required this.phoneImgPath,
      required this.phoneName,
      required this.phonePrice});
}

List<String> allPhoneImagePaths = [
  'assets/images/phone1.png',
  'assets/images/phone2.png',
  'assets/images/phone3.png',
  'assets/images/phone4.png',
  'assets/images/phone5.png',
];

List<Phone> allPhones = [
  Phone(
      phoneImgPath: allPhoneImagePaths[0],
      phoneName: 'Iphone 13',
      phonePrice: '\$1099'),
  Phone(
      phoneImgPath: allPhoneImagePaths[1],
      phoneName: 'Nokia',
      phonePrice: '\$69'),
  Phone(
      phoneImgPath: allPhoneImagePaths[2],
      phoneName: 'Lively',
      phonePrice: '\$109'),
  Phone(
      phoneImgPath: allPhoneImagePaths[3],
      phoneName: 'Jio',
      phonePrice: '\$101'),
  Phone(
      phoneImgPath: allPhoneImagePaths[4],
      phoneName: 'Nokia',
      phonePrice: '\$29'),
];