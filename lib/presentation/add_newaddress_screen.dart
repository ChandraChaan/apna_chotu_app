import 'package:flutter/material.dart';

class AddNewAddressScreen extends StatefulWidget {
  @override
  AddNewAddressScreenState createState() => AddNewAddressScreenState();
}

class AddNewAddressScreenState extends State<AddNewAddressScreen> {
  String _selectedValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Menu Button Example'),
      ),
      body: Center(
        child: Text('Selected: $_selectedValue'),
      ),
      floatingActionButton: PopupMenuButton<String>(
        onSelected: (value) {
          setState(() {
            _selectedValue = value;
          });
        },
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'Option 1',
              child: RadioListTile<String>(
                title: Text('Option 1'),
                value: 'Option 1',
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                  Navigator.pop(context);
                },
              ),
            ),
            PopupMenuItem<String>(
              value: 'Option 2',
              child: RadioListTile<String>(
                title: Text('Option 2'),
                value: 'Option 2',
                groupValue: _selectedValue,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value!;
                  });
                  Navigator.pop(context);
                },
              ),
            ),
          ];
        },
      ),
    );
  }
}
