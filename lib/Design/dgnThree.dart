import 'package:flutter/material.dart';

class Dgnthree extends StatelessWidget {
  const Dgnthree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.black,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          size: 33,
          color: Color.fromRGBO(116, 183, 231, 1),
        ),
        title: const Column(
          children: [
            Text(
              "BRT-KTM",
              style: TextStyle(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Apr 23-Apr 23",
                  style: TextStyle(fontSize: 14, color: Colors.blue),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.edit,
                  size: 18,
                  color: Color.fromRGBO(116, 183, 231, 1),
                )
              ],
            )
          ],
        ),
        actions: [
          Text(
            "Filters",
            style: TextStyle(color: Colors.blue[300], fontSize: 18),
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 140,),
                Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('lib/images/img.png'),fit: BoxFit.cover)
                  ),
                ),
                 Text(
                  "Couldn't find any flights",
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(height: 10,),
                Text(
                  "There are no flights available for your selected dates.",
                  style: TextStyle(fontSize: 17, color: Colors.grey),textAlign: TextAlign.center,
                ),
                SizedBox(height: 40,),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey)
                  ),
                  child: Center(child: Text("Change Dates",style: TextStyle(color: Colors.blue[300],fontSize: 17,fontWeight: FontWeight.w600),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
