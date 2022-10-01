import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medco/tools/constants.dart';

class Admin_Dashboard extends StatefulWidget {
  Admin_Dashboard({Key? key}) : super(key: key);

  @override
  State<Admin_Dashboard> createState() => _Admin_DashboardState();
}

class _Admin_DashboardState extends State<Admin_Dashboard> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        child: Scaffold(
          backgroundColor: white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              SizedBox(
                height: _height / 10,
              ),
              Container(
                width: 337,
                height: 530,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(235, 235, 235, 60),
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      
                      Button('assets/icons/doc.png', 'Doctors', '50', (){}),
                      Button('assets/icons/patient.png', 'Patients', '50', (){}),
                    ],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Button('assets/icons/nurse.png', 'Nurses', '50', (){}),
                      Button('assets/icons/pharmacist.png', 'Pharmacist', '50', (){}),
                    ],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Button('assets/icons/medicine.png', 'Medicines', '50', (){}),
                      Button('assets/icons/labtech.png', 'LabTech', '50', (){}),
                    ],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Button('assets/icons/or.png', 'Operation Report', '50', (){}),
                      Button('assets/icons/br.png', 'Birth Report', '50', (){}),
                    ],),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Button('assets/icons/dr.png', 'Death Report', '50', (){}),
                      Button('assets/icons/accountant.png', 'Accountant', '50', (){}),
                    ],),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Button('assets/icons/payment.png', 'Payment', '50', (){})
                      ],),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget Button(String image, String title, String subtitle, Function action) {
    return Container(
      height: 65,
      width: 150,
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: Image.asset(image, ),
        title: Text(
          title,
          style: GoogleFonts.lato(
            fontSize: 12,
            color: black,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: GoogleFonts.lato(
              fontSize: 15, color: black, fontWeight: FontWeight.bold),
        ),
        onTap: () => action(),
      ),
    );
  }
}
