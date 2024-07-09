import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
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
              if(state is WeatherSuccess){

              
              return Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text('${state.weather.areaName}'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    '${state.weather.temperature!.celsius!.round()}°c',
                    style: TextStyle(
                      fontSize: 80,
                    ),
                  ),
                  Text(
                    'Max : ${state.weather.tempMax!.celsius!.round()}°c  Min : ${state.weather.tempMin!.celsius!.round()}°c',
                   
                  ),
                  Image.asset("public/cloudy.webp", height: 400, width: 400),
                  SizedBox(height: 40),
                  Center(
                    child: Text(
                      DateFormat('EEEE dd .').add_jm().format(state.weather.date!),
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
                      Container(
                        width: 180,
                         height: 60,
                         child: Row(children: [
                          Image.asset("public/cloudy.webp", height: 40, width: 40),
                          Text('${state.weather.sunrise?.hour}:${state.weather.sunrise?.minute} ')
                         ],
                         )
                         ,),
                      Container(
                        width: 180,
                         height: 60,
                         child: Row(children: [
                          Image.asset("public/cloudy.webp", height: 40, width: 40),
                          Text('${state.weather.sunset?.hour}:${state.weather.sunset?.minute}')
                         ],
                         )
                         ,),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 180,
                         height: 60,
                         child: Row(children: [
                          Image.asset("public/cloudy.webp", height: 40, width: 40),
                          Text('${state.weather.humidity}')
                         ],
                         )
                         ,),
                      Container(
                        width: 180,
                         height: 60,
                         child: Row(children: [
                          Image.asset("public/cloudy.webp", height: 40, width: 40),
                          Text('${state.weather.cloudiness}')
                         ],
                         )
                         ,),
                    ],
                  ),
                ],
              );
              }else{
                return Container();
              }
            }
  
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
