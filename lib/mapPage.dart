import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'disasterTipsPage.dart';
import 'disasterData.dart';
import 'dart:math';

// Function to calculate distance between two points
double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  const earthRadius = 6371; // Earth's radius in km
  final dLat = radians(lat2 - lat1);
  final dLon = radians(lon2 - lon1);

  final a = sin(dLat / 2) * sin(dLat / 2) +
      cos(radians(lat1)) * cos(radians(lat2)) * sin(dLon / 2) * sin(dLon / 2);
  final c = 2 * atan2(sqrt(a), sqrt(1 - a));

  return earthRadius * c;
}

double radians(double degrees) => degrees * (pi / 180);

String getClosestLocation(LatLng selectedLocation) {
  String closestLocation = "Unknown Location";
  double closestDistance = double.infinity;

  for (var location in disasterData.keys) {
    final LatLng locationCoords = disasterData[location]['coordinates'];
    final distance = calculateDistance(
      selectedLocation.latitude,
      selectedLocation.longitude,
      locationCoords.latitude,
      locationCoords.longitude,
    );

    if (distance < closestDistance) {
      closestDistance = distance;
      closestLocation = location;
    }
  }

  return closestLocation;
}

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController _controller;
  Set<Marker> _markers = {};
  LatLng? _selectedLocation;

  void _showConfirmationDialog(LatLng location) {
    final closestLocation = getClosestLocation(location);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Confirm Location'),
        content: Text(
          'You selected a location near $closestLocation. Do you want to proceed?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), // Cancel
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
              _navigateToDisasterTipsPage(closestLocation); // Navigate to next page with location name
            },
            child: Text('Confirm'),
          ),
        ],
      ),
    );
  }

  void _navigateToDisasterTipsPage(String location) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => disasterTipsPage(location: location),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Map Page")),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(37.7749, -122.4194), // Default to San Francisco
              zoom: 12.0,
            ),
            markers: _markers,
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
            },
            onTap: (LatLng tappedLocation) {
              setState(() {
                _markers.clear(); // Remove previous marker
                _selectedLocation = tappedLocation;
                _markers.add(Marker(
                  markerId: MarkerId('selected_marker'),
                  position: tappedLocation,
                  infoWindow: InfoWindow(title: 'Selected Location'),
                ));
              });

              // Show the confirmation dialog
              _showConfirmationDialog(tappedLocation);
            },
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                "Tap on the map to select a location and view tips for common disasters in the area.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
