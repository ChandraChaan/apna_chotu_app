// // ... (existing imports and code)
//
// class _CurrentLocationState extends State<CurrentLocation> {
//   // ... (existing variables and methods)
//
//   Widget buildEditButton(int index) {
//     return IconButton(
//       icon: Icon(Icons.edit, color: Colors.deepOrange),
//       onPressed: () {
//         // Handle edit action for the address at the given index
//         // You can navigate to an edit screen or perform other actions here
//         // Example: navigate to the edit screen with the selected address
//         Get.toNamed(Routes.editAddressScreen, arguments: addressList[index]);
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // ... (existing scaffold and widget hierarchy)
//
//     for (int a = 0; a < addressList.length; a++)
//     ListTile(
//       minLeadingWidth: 0,
//       leading: Icon(Icons.location_on, color: Colors.deepOrange),
//       title: Text(addressList[a]['locality']),
//       subtitle: Text(addressList[a]['address_name']),
//       trailing: buildEditButton(a), // Add Edit button here
//     ),
//     // ... (rest of the code)
//     );
//   }
// }
