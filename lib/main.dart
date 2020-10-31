// import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';

void main() => runApp(
  MaterialApp(
    title: "Weather App",
    home: Home(),
    ),
  );
  
  class Home extends StatefulWidget {
    
    @override
    State<StatefulWidget> createState(){
      return _HomeState();
    }
  }

class _HomeState extends State<Home>{

  var temp;
  var description;
  var humidity;
  var currently;
  var windSpeed;

  Future getWeather () async{
    http.Response response= await http.get("http://api.openweathermap.org/data/2.5/weather?q=mangalore&appid=20e4724a3081e994486c2b2a82ea413b");
    var results= jsonDecode(response.body);
    setState(() {
      
  // "coord": {
  //   "lon": -122.08,
  //   "lat": 37.39
  // },
  // "weather": [
  //   {
  //     "id": 800,
  //     "main": "Clear",
  //     "description": "clear sky",
  //     "icon": "01d"
  //   }
  // ],
  // "base": "stations",
  // "main": {
  //   "temp": 282.55,
  //   "feels_like": 281.86,
  //   "temp_min": 280.37,
  //   "temp_max": 284.26,
  //   "pressure": 1023,
  //   "humidity": 100
  // },
  // "visibility": 16093,
  // "wind": {
  //   "speed": 1.5,
  //   "deg": 350
  // },
  // "clouds": {
  //   "all": 1
  // },
  // "dt": 1560350645,
  // "sys": {
  //   "type": 1,
  //   "id": 5122,
  //   "message": 0.0139,
  //   "country": "US",
  //   "sunrise": 1560343627,
  //   "sunset": 1560396563
  // },
  // "timezone": -25200,
  // "id": 420006353,
  // "name": "Mountain View",
  // "cod": 200
  // }                    

      this.temp= results['main']['temp'];
      this.description= results['weather']['0']['description'];
      this.currently=  results['weather']['0']['main'];
      this.humidity= results['main']['humidity'];
      this.windSpeed= results['wind']['speed'];
    });
  }

  @over

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
           height: MediaQuery.of(context).size.height / 3,
           width: MediaQuery.of(context).size.width,
           color: Colors.red,
           child: Column (
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,

             children: <Widget>[
               Padding(
               padding: EdgeInsets.only(bottom: 10.0),
               child:Text(
                 "Currently in Boton",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 14.0,
                   fontWeight: FontWeight.w600,
                 ),
               ),
               ),
               Text(
                 "52\u0000",
                 style:TextStyle(
                   color: Colors.white,
                   fontSize: 14.0,
                   fontWeight: FontWeight.w600,
                 ),
               ),
              Padding(
               padding: EdgeInsets.only(bottom: 10.0),
               child:Text(
                 "Rain",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 14.0,
                   fontWeight: FontWeight.w600,
                 ),
               ),
              ),
              
             ],
          ),
          ),
          Expanded(
            child: Padding(
              padding:EdgeInsets.all(20.0),
              child:ListView(
                children: <Widget>[
                  ListTile(                      
                    leading: FaIcon(FontAwesomeIcons.thermometerHalf),
                    title: Text("Temperature"),
                    trailing: Text("52\u0000"),
                
                  ),
                  ListTile(                      
                    leading: FaIcon(FontAwesomeIcons.cloud),
                    title: Text("Weather"),
                    trailing: Text("Weather"),
                
                  ),
                  ListTile(                      
                    leading: FaIcon(FontAwesomeIcons.sun),
                    title: Text("Humidity"),
                    trailing: Text("12"),
                
                  ),
                  ListTile(                      
                    leading: FaIcon(FontAwesomeIcons.wind),
                    title: Text("Wind Speed"),
                    trailing: Text(""),
                
                  ),
                ],
              ),
              ),
              ),
        ],
      ),
    );
  }

}