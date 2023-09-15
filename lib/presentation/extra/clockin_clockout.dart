import 'package:flutter/material.dart';

class ClockInOutScreen extends StatefulWidget {
  @override
  _ClockInOutScreenState createState() => _ClockInOutScreenState();
}

class _ClockInOutScreenState extends State<ClockInOutScreen> {
  bool clockedIn = false;
  DateTime? clockInTime;
  DateTime? clockOutTime;

  void clockIn() {
    setState(() {
      clockedIn = true;
      clockInTime = DateTime.now();
    });
  }

  void clockOut() {
    setState(() {
      clockedIn = false;
      clockOutTime = DateTime.now();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clock In/Clock Out App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              clockedIn ? 'Clocked In' : 'Clocked Out',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            if (clockedIn)
              Text(
                'Clock In Time: ${clockInTime?.toString()}',
                style: TextStyle(fontSize: 16),
              ),
            if (!clockedIn)
              Text(
                'Clock Out Time: ${clockOutTime?.toString()}',
                style: TextStyle(fontSize: 16),
              ),
            Text(
              'Latitude: ${17.3850?.toString()}',
              style: TextStyle(fontSize: 16),
            ),
                  Text(
                      'Longitude: ${78.4867?.toString()}',
                      style: TextStyle(fontSize: 16)
              ),
            SizedBox(height: 20),
            if (!clockedIn)
              ElevatedButton(
                onPressed: clockIn,
                child: Text('Clock In'),
              ),
            if (clockedIn)
              ElevatedButton(
                onPressed: clockOut,
                child: Text('Clock Out'),
              ),
          ],
        ),
      ),
    );
  }
}
