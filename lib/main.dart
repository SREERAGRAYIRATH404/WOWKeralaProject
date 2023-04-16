import 'package:flutter/material.dart';

void main() => runApp(DripIrrigationApp());

class DripIrrigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drip Irrigation System',
      home: DripIrrigationHomePage(),
    );
  }
}

class DripIrrigationHomePage extends StatefulWidget {
  @override
  _DripIrrigationHomePageState createState() => _DripIrrigationHomePageState();
}

class _DripIrrigationHomePageState extends State<DripIrrigationHomePage> {
  String soilMoisture = '--';
  String temperature = '--';
  String humidity = '--';
  List<String> notifications = [];

  void _startIrrigation() {
    // Logic for starting irrigation
    setState(() {
      notifications.add('Irrigation started');
    });
  }

  void _stopIrrigation() {
    // Logic for stopping irrigation
    setState(() {
      notifications.add('Irrigation stopped');
    });
  }

  void _adjustFlow() {
    // Logic for adjusting flow
    setState(() {
      notifications.add('Flow adjusted');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drip Irrigation System'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          Text('Sensor Data'),
          Text('Soil Moisture: $soilMoisture'),
          Text('Temperature: $temperature'),
          Text('Humidity: $humidity'),
          SizedBox(height: 20.0),
          Text('Control Panel'),
          ElevatedButton(
            onPressed: _startIrrigation,
            child: Text('Start'),
          ),
          ElevatedButton(
            onPressed: _stopIrrigation,
            child: Text('Stop'),
          ),
          ElevatedButton(
            onPressed: _adjustFlow,
            child: Text('Adjust Flow'),
          ),
          SizedBox(height: 20.0),
          Text('Notifications'),
          Expanded(
            child: ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(notifications[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
