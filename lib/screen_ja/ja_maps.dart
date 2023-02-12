import 'package:flutter/material.dart';

main( ) => runApp( const GoogleMapsScreen( ) );

class GoogleMapsScreen extends StatelessWidget {
  const GoogleMapsScreen({Key? key}) : super(key: key);

  GoogleMapsScreenState createState() => GoogleMapsScreenState();
  
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class GoogleMapsScreenState {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("🗺️ A Static Image of Google Maps:", style: TextStyle(fontSize: 20),),
            Text("Google Maps is a map application that displays the world map in detail. The app allows you to view the world from a bird's eye view, as well as zoom in to view the map in greater detail. You can also see satellite images, terrain images, and street view images of the map."),
            SizedBox(height: 20),
            Text("🔍 Icon for Searching Restaurants/Banks/Police Stations/Other Point of Interests:", style: TextStyle(fontSize: 20),),
            Text("To search for restaurants, banks, police stations, or other points of interest, you need to tap the search icon, which is represented by a magnifying glass emoji. You can then type in the name of the place you are looking for, and the app will display the results on the map."),
            SizedBox(height: 20),
            Text("🛣️ Icon for Getting Directions to the Searched Place:", style: TextStyle(fontSize: 20),),
            Text("To get directions to a searched place, you need to tap the direction icon, which is represented by a car emoji. You can then enter your starting location and the app will display the route to your destination. You can choose between different modes of transportation, such as driving, walking, cycling, or using public transportation."),
            SizedBox(height: 20),
            Text("💰 Paying for Public Transportation or Time for Walking/Cycling and Cars:", style: TextStyle(fontSize: 20),),
            Text("To see how much you need to pay for public transportation or the time for walking, cycling, or driving, you need to tap the transportation icon, which is represented by a bus emoji. The app will then display the estimated cost and time for each mode of transportation. The cost and time estimates may vary based on traffic conditions and other factors.")
          ],
        ),
      ),
    );
  }
}