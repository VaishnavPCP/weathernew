import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentlocation();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xcffA5F4F2),
        title: Text(
          "Weather",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(color: Color(0xcffA5F4F2)),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextField(decoration:InputDecoration(hintText: "Search locations",border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),),
                SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 30,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Kerala",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Icon(
                      Icons.calendar_month,
                      size: 30,
                      color: Colors.black,
                    )
                  ],
                ),
                SizedBox(
                  height: 47,
                ),
                Icon(
                  Icons.cloud,
                  size: 100,
                  color: Colors.white,
                ),
                Text(
                  "Cloudy",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "28°",
                  style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  children: [
                    Text(
                      "Today,01 Apr",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 80,
                      child: Card(
                        color: Colors.white24,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "10:00 am",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Icon(
                              Icons.cloud,
                              size: 20,
                              color: Colors.white,
                            ),
                            Text(
                              "28°",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 80,
                      child: Card(
                        color: Colors.white24,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "10:00 am",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Icon(
                              Icons.cloud,
                              size: 20,
                              color: Colors.white,
                            ),
                            Text(
                              "28°",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 80,
                      child: Card(
                        color: Colors.white24,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "10:00 am",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Icon(
                              Icons.cloud,
                              size: 20,
                              color: Colors.white,
                            ),
                            Text(
                              "28°",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 80,
                      child: Card(
                        color: Colors.white24,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "10:00 am",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                            Icon(
                              Icons.cloud,
                              size: 20,
                              color: Colors.white,
                            ),
                            Text(
                              "28°",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  getCurrentlocation()async{
    var position=await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
      forceAndroidLocationManager: true,
    );
    if(position!=null){
      print("lat:${position.latitude},long:${position.longitude}");
      getCurrentCityWeather(position);
    }
  }
  getCurrentCityWeather(position) async {

  }
}
