import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(Icons.location_on),
                  Text("Kanhangad"),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "27 c",
                style: TextStyle(
                  fontSize: 80,
                ),
              ),
              Image.asset("public/cloudy.webp", height: 400, width: 400),
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  "27th Friday 2023"
                ,style: TextStyle(
                  fontSize: 20
                ),),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2.0), // Adjust the color and width as needed
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                      color: Colors.transparent, // Set the background color here
                    ),
                    width: 70,
                    padding: const EdgeInsets.all(20.0),
                    child: const Center(
                        child: Text('25',
                            style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2.0), // Adjust the color and width as needed
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                      color: Colors.transparent, // Set the background color here
                    ),
                    width: 70,
                    padding: const EdgeInsets.all(20.0),
                    child: const Center(
                        child: Text('26',
                            style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2.0), // Adjust the color and width as needed
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                      color: Colors.transparent, // Set the background color here
                    ),
                    width: 70,
                    padding: const EdgeInsets.all(20.0),
                    child: const Center(
                        child: Text('28',
                            style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2.0), // Adjust the color and width as needed
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                      color: Colors.transparent, // Set the background color here
                    ),
                    width: 70,
                    padding: const EdgeInsets.all(20.0),
                    child: const Center(
                        child: Text('29',
                            style: TextStyle(color: Colors.white))),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2.0), // Adjust the color and width as needed
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                      color: Colors.transparent, // Set the background color here
                    ),
                    width: 180,
                    height: 60,
                    padding: const EdgeInsets.all(20.0),
                    child: const Center(
                        child: Text('25',
                            style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2.0), // Adjust the color and width as needed
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                      color: Colors.transparent, // Set the background color here
                    ),
                    width: 180,
                    padding: const EdgeInsets.all(20.0),
                    child: const Center(
                        child: Text('26',
                            style: TextStyle(color: Colors.white))),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2.0), // Adjust the color and width as needed
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                      color: Colors.transparent, // Set the background color here
                    ),
                    width: 180,
                    height: 60,
                    padding: const EdgeInsets.all(20.0),
                    child: const Center(
                        child: Text('25',
                            style: TextStyle(color: Colors.white))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          width: 2.0), // Adjust the color and width as needed
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                      color: Colors.transparent, // Set the background color here
                    ),
                    width: 180,
                    padding: const EdgeInsets.all(20.0),
                    child: const Center(
                        child: Text('26',
                            style: TextStyle(color: Colors.white))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
