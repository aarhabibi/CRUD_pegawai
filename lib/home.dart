import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:http/http.dart' as http;
import 'package:note_app_mysql/config.dart';
import 'package:note_app_mysql/edit.dart';
import 'dart:convert';
        
        class Home extends StatefulWidget {
         

         
          @override
          HomeState createState() => HomeState();
        }
        
        class HomeState extends State<Home> {
          //make list variable to accomodate all data from database
          List _get = [];
        
          //make different color to different card
          final _lightColors = [
            Colors.amber.shade300,
            Colors.lightGreen.shade300,
            Colors.lightBlue.shade300,
            Colors.orange.shade300,
            Colors.pinkAccent.shade100,
            Colors.tealAccent.shade100
          ];
        
          @override
          void initState() {
            super.initState();
            //in first time, this method will be executed
            _getData();
          }
        
          Future _getData() async {
            try {
              final response = await http.get(Uri.parse(
            
                  "http://$ip/pegawai/data_pegawai/list.php"));
        
              // if response successful
              if (response.statusCode == 200) {
                final data = jsonDecode(response.body);
        
                // entry data to variabel list _get
                setState(() {
                  _get = data;
                });
              }
            } catch (e) {
              print(e);
            }
          }
        
          @override
          Widget build(BuildContext context) {
            return Scaffold(
              appBar: AppBar(
                title: Text('List Pegawai'),
              ),
              //if not equal to 0 show data
              //else show text "no data available"
              body: _get.length != 0
                  //we use masonry grid to make masonry card style
                  ? MasonryGridView.count(
                      crossAxisCount: 2,
                      itemCount: _get.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                //routing into edit page
                                //we pass the id note
                                MaterialPageRoute(builder: (context) => Edit(id: _get[index]['id'],)));
                          },
                          child: Card(
                            //make random color to eveery card
                            color: _lightColors[index % _lightColors.length],
                            child: Container(
                              //make 2 different height
                              constraints:
                                  BoxConstraints(minHeight: (index % 2 + 1) * 85),
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${_get[index]['status']}',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    '${_get[index]['nama']}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '${_get[index]['tempat_lahir']}, ${_get[index]['tanggal_lahir']}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '${_get[index]['posisi_lamaran']}',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  : Center(
                      child: Text(
                        "No Data Available",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
             
            );
          }
        }
