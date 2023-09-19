// body: Column(
// children: [
// ListTile(
// minLeadingWidth: 0,
// minVerticalPadding: 0,
// horizontalTitleGap: -12,
// contentPadding: EdgeInsets.all(0),
// leading: IconButton(
// icon: Icon(
// Icons.arrow_back_ios,
// size: 25,
// color: Colors.black,
// ),
// onPressed: () {},
// ),
// title: CommonText(
// 'Checkout',
// style: UInormalStyle,
// ),
// subtitle: CommonText('2 items, Total: ₹ 225'),
// ),
// Container(
// height: 60,
// width: double.infinity,
// decoration: BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.topLeft,
// end: Alignment.bottomRight,
// colors: [Color(0XFFFA6423), Color(0xFF9A2D08)],
// ),
// ),
// child: Column(
// children: [
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Row(
// children: [
// Icon(
// Icons.brightness_1_outlined,
// size: 14,
// color: Colors.white,
// ),
// SizedBox(width: 5),
// CommonText(
// 'Palamuru Grill | ',
// style: TextStyle(
// fontSize: 11,
// fontWeight: FontWeight.bold,
// color: Colors.white),
// ),
// CommonText(
// 'Delivery in: 33 mins',
// style: TextStyle(fontSize: 11, color: Colors.white),
// ),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(left: 8, top: 5),
// child: Row(
// children: [
// Icon(
// Icons.brightness_1_outlined,
// size: 14,
// color: Colors.white,
// ),
// SizedBox(width: 5),
// CommonText(
// 'Office | Q2, 6th Floor, Cyber Tower, Hitech City',
// style: TextStyle(
// fontSize: 11,
// fontWeight: FontWeight.bold,
// color: Colors.white),
// )
// ],
// ),
// ),
// ],
// ),
// ),
// Padding(
// padding: const EdgeInsets.only(top: 15, right: 8),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// CommonText(
// 'UPI',
// style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// InkWell(
// child: CommonText(
// '+Add New UPI ID',
// style: TextStyle(
// fontSize: 11,
// fontWeight: FontWeight.bold,
// color: Colors.deepOrange),
// ),
// onTap: () {
// Navigator.push(
// context,
// MaterialPageRoute(
// builder: (context) => AddNewCard()));
// },
// ),
// CommonText(
// 'You need to have a registered UPI ID',
// style: TextStyle(fontSize: 8),
// )
// ],
// ),
// ],
// ),
// ),
// ],
// ),
