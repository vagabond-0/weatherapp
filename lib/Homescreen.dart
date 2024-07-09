import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp/bloc/weather_bloc.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: BlocBuilder<WeatherBloc, WeatherState>(
            builder: (context, state) {
              return Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("Kanhangad"),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "27 c",
                    style: TextStyle(
                      fontSize: 80,
                    ),
                  ),
                  Image.asset("public/cloudy.webp", height: 400, width: 400),
                  SizedBox(height: 40),
                  Center(
                    child: Text(
                      "27th Friday 2023",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      buildContainer('25'),
                      buildContainer('26'),
                      buildContainer('28'),
                      buildContainer('29'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      buildContainer('25', width: 180, height: 60),
                      buildContainer('26', width: 180),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      buildContainer('25', width: 180, height: 60),
                      buildContainer('26', width: 180),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildContainer(String text, {double width = 70, double height = 60}) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.transparent,
      ),
      width: width,
      height: height,
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
