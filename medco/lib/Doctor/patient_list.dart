import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medco/tools/constants.dart';

class Patientlist extends StatefulWidget {
  @override
  State<Patientlist> createState() => _PatientlistState();
}

class _PatientlistState extends State<Patientlist> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Container(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: white,
          body: Column(
            children: [
              SizedBox(
                height: _height / 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Patient List',
                      style: GoogleFonts.lato(
                          color: black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(
                      color: search,
                      border: Border.all(
                        color: search,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: MediaQuery.of(context).size.height * 0.07,
                  // margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      cursorColor: black,
                      controller: controller,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search patients',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Patient',
                      style: GoogleFonts.lato(color: black, fontSize: 12),
                    ),
                    Text(
                      'Diseases',
                      style: GoogleFonts.lato(color: black, fontSize: 12),
                    ),
                    Text(
                      'Status',
                      style: GoogleFonts.lato(color: black, fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 450,
                width: 337,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: search,
                ),
                child: Expanded(
                  child: ListView.builder(
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 324,
                          height: 42,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                            vertical: 5.0,
                            horizontal: 8.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'John Doe',
                                style: GoogleFonts.lato(
                                    color: black, fontSize: 12),
                              ),
                              Text(
                                'ALS',
                                style: GoogleFonts.lato(
                                    color: black, fontSize: 12),
                              ),
                              Text(
                                'New Patient',
                                style: GoogleFonts.lato(
                                    color: black, fontSize: 12),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text getStatusText(String status) {
    switch (status) {
      case "n":
        return Text(
          "New Patient",
          style:
              TextStyle(color: blue, fontSize: 12, fontWeight: FontWeight.bold),
        );
      case "t":
        return Text(
          "In Treatment",
          style:
              TextStyle(color: red, fontSize: 12, fontWeight: FontWeight.bold),
        );

      default:
        return Text(
          "Recovered",
          style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        );
    }
  }
}
