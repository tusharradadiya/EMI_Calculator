import 'package:flutter/material.dart';

class Emi_calculator extends StatefulWidget {
  const Emi_calculator({Key? key}) : super(key: key);

  @override
  State<Emi_calculator> createState() => _Emi_calculatorState();
}

class _Emi_calculatorState extends State<Emi_calculator> {
  double amount = 10000;
  double rate = 1;
  double year = 1;
  double emi = 0;
  double Loan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: Text(
          "EMI Calculator",
          style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 2),
        ),
        leading: Icon(
          Icons.menu,
          size: 25,
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 850,
                color: Colors.indigo.shade900,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Total Loan : ",
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Rs = ${Loan.toInt()} ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Your Loan EMI is : ",
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Rs = ${emi.toInt()} / month",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 250, left: 10, right: 10),
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(50)),
                ),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "LoanAmount",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Rs - $amount",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Slider(
                        value: amount,
                        activeColor: Colors.indigo.shade900,
                        divisions: 100,
                        onChanged: (data) {
                          setState(
                                () {
                              amount = data;
                            },
                          );
                          live();
                        },
                        max: 1000000,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Intrest Rate",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "$rate %",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Slider(
                        value: rate,
                        activeColor: Colors.indigo.shade900,
                        divisions: 40,
                        onChanged: (data) {
                          setState(
                                () {
                              rate = data;
                            },
                          );
                          live();
                        },
                        max: 20,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Loan Tenuer",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "$year year",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Slider(
                        activeColor: Colors.indigo.shade900,
                        value: year,
                        divisions: 30,
                        onChanged: (data) {
                          setState(
                                () {
                              year = data;
                            },
                          );
                          live();
                        },
                        max: 30,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void live() {
    setState(
          () {
        emi = (amount + (amount * rate * year) / 100) / 12;
        Loan = emi * 12;
      },
    );
  }
}