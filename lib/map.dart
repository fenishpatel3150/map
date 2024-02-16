import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text('MAP',style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Map('Exit',Icon(Icons.exit_to_app,color: Colors.blue,)),
            Map('Play',Icon(Icons.play_arrow,color: Colors.blue,)),
            Map('Pause',Icon(Icons.pause_circle_sharp,color: Colors.blue,)),
            Map('Stop',Icon(Icons.stop_circle,color: Colors.blue,)),
            Map('Close',Icon(Icons.close,color: Colors.blue,)),
            Map('Delete',Icon(Icons.delete,color: Colors.blue,)),
            Map('Email',Icon(Icons.email,color: Colors.blue,)),
          ],
        ),
      ),
    );
  }
}

Widget Map(String a,Icon b)
{
  return  Container(
    margin: const EdgeInsets.all(10),
    height: 90,
    width: double.infinity,
    decoration:  BoxDecoration(color: Colors.white,),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$a',style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600)),b,
      ],
    ),
  );
}