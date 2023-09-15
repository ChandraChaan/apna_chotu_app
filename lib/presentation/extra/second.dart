import 'package:flutter/material.dart';

class SecondDart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show the bottom sheet when the button is pressed
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  // You can customize the content of the bottom sheet here
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.share),
                        title: Text('Share'),
                        onTap: () {
                          // Handle the share action
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.link),
                        title: Text('Copy Link'),
                        onTap: () {
                          // Handle the copy link action
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.delete),
                        title: Text('Delete'),
                        onTap: () {
                          // Handle the delete action
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text('Open Bottom Sheet'),
        ),
      ),
    );
  }
}
