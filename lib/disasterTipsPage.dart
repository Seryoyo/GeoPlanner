import 'package:flutter/material.dart';
import 'disasterData.dart';

class disasterTipsPage extends StatelessWidget {
  final String location;

  disasterTipsPage({required this.location});

  @override
  Widget build(BuildContext context) {
    final locationData = disasterData[location];

    return Scaffold(
      appBar: AppBar(
        title: Text('Disaster Tips for $location'),
      ),
      body: locationData != null
          ? SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Box for location and disasters
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade50,
                ),
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Disasters in $location:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                      ),
                    ),
                    SizedBox(height: 10),
                    ...locationData['disasters']
                        .map<Widget>(
                          (disaster) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          '- $disaster',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    )
                        .toList(),
                  ],
                ),
              ),

              // Box for preparation tips
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green.shade50,
                ),
                padding: const EdgeInsets.all(16.0),
                margin: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Preparation Tips:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade900,
                      ),
                    ),
                    SizedBox(height: 10),
                    ...locationData['tips']
                        .map<Widget>(
                          (tip) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          '- $tip',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    )
                        .toList(),
                  ],
                ),
              ),

              // Box for suggested equipment
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange, width: 2),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange.shade50,
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Suggested Equipment:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange.shade900,
                      ),
                    ),
                    SizedBox(height: 10),
                    ...locationData['equipment']
                        .map<Widget>(
                          (item) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          '- $item',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    )
                        .toList(),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
          : Center(
        child: Text(
          'No data available for this location.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
