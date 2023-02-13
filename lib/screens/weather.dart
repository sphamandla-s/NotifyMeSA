import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/flutter_weather_bg.dart';
import 'package:google_fonts/google_fonts.dart';

class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget qualityIndicator(IconData iconData, String label, String quality){
      return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                iconData,
                size: 40.0,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                label,
                style: GoogleFonts.lato(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )
            ],
          ),
          Text(
            quality,
            style: GoogleFonts.lato(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )
        ],
      );
    }

    Widget warningsIndicators(IconData iconData, String label, String warning){
      return Column(
        children: [
          Icon(
            iconData,
            color: Colors.white,
            size: 40,
          ),
          Text(
            label,
            style: GoogleFonts.lato(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Text(
            warning,
            style: GoogleFonts.lato(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )
        ],
      );
    }


    return Stack(
      children: [
        // background
        WeatherBg(
          weatherType: WeatherType.sunnyNight,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        //over layer color
        Container(
          decoration: const BoxDecoration(color: Colors.black38),
        ),
        //navBar
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Machibini',
                    style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ))
            ],
          ),
        ),
        // Weather content
        Container(
          padding: const EdgeInsets.only(top: 60.0, left: 17.0, right: 17.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Column(
                  children: [
                    Text(
                      '29\u2103',
                      style: GoogleFonts.lato(
                          fontSize: 85,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
                  ],
                ),
                Text(
                  '30\u2103 / 23\u2103 feels like 34\u2103',
                  style: GoogleFonts.lato(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 30.0,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      warningsIndicators(Icons.water_drop, 'Rain', '83 %'),
                      warningsIndicators(Icons.water_drop_outlined , 'Humidity', '67 %'),
                      warningsIndicators(Icons.air, 'Wind', '21 Km/h')
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 30.0,),
                  child: Column(
                    children: [
                      qualityIndicator(Icons.speed, 'AQI', 'Good(20)'),
                      qualityIndicator(Icons.air_rounded, 'Air Quality', 'Low'),
                      qualityIndicator(Icons.drive_eta, 'Driving Difficulty', 'Hard'),
                      qualityIndicator(Icons.directions_walk, 'Running', 'Poor'),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
