import 'package:flutter/material.dart';

class Riwayat extends StatefulWidget {
  const Riwayat({super.key});
  @override
  RiwayatState createState() => RiwayatState();
}

class RiwayatState extends State<Riwayat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: IntrinsicHeight(
                  child: Container(
                    color: Color(0xFFFFFFFF),
                    width: double.infinity,
                    height: double.infinity,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IntrinsicHeight(
                            child: Container(
                              color: Color(0xFFFFFFFF),
                              padding: const EdgeInsets.only(
                                top: 16,
                                bottom: 17,
                                left: 20,
                                right: 20,
                              ),
                              margin: const EdgeInsets.only(bottom: 17),
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    margin: const EdgeInsets.only(right: 12),
                                    width: 36,
                                    height: 36,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/NXFuUTx2ln/d5hj76yq_expires_30_days.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: IntrinsicHeight(
                                      child: Container(
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            IntrinsicWidth(
                                              child: IntrinsicHeight(
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                            right: 3,
                                                          ),
                                                      child: Text(
                                                        "Rent",
                                                        style: TextStyle(
                                                          color: Color(
                                                            0xFFFACC15,
                                                          ),
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "igo",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF111827,
                                                        ),
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Container(
                                                padding: const EdgeInsets.only(
                                                  top: 2,
                                                ),
                                                width: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Booking History",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF111827,
                                                        ),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Container(
                                                width: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Check your transaction history",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF8C8C8C,
                                                        ),
                                                        fontSize: 11,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0x4D8C8C8C),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFFFFFF),
                              ),
                              padding: const EdgeInsets.only(
                                top: 9,
                                bottom: 9,
                                left: 17,
                                right: 17,
                              ),
                              margin: const EdgeInsets.only(
                                bottom: 21,
                                left: 24,
                                right: 24,
                              ),
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Select a Date",
                                    style: TextStyle(
                                      color: Color(0xFF111827),
                                      fontSize: 13,
                                    ),
                                  ),
                                  Container(
                                    width: 25,
                                    height: 25,
                                    child: Image.network(
                                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/NXFuUTx2ln/apyvye9z_expires_30_days.png",
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFFACC15),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40000000),
                                    blurRadius: 4,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.only(
                                top: 18,
                                bottom: 18,
                                left: 21,
                                right: 21,
                              ),
                              margin: const EdgeInsets.only(
                                bottom: 9,
                                left: 24,
                                right: 24,
                              ),
                              width: double.infinity,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print('Pressed');
                                    },
                                    child: IntrinsicWidth(
                                      child: IntrinsicHeight(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            color: Color(0x33FACC15),
                                          ),
                                          padding: const EdgeInsets.only(
                                            top: 14,
                                            bottom: 14,
                                            left: 6,
                                            right: 6,
                                          ),
                                          margin: const EdgeInsets.only(
                                            right: 7,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 74,
                                                height: 49,
                                                child: Image.network(
                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/NXFuUTx2ln/4c44wl8o_expires_30_days.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: IntrinsicHeight(
                                      child: Container(
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                "Mazda 3 Hatchback",
                                                style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 7,
                                                ),
                                                width: double.infinity,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Rental Date",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                    Text(
                                                      "January 21, 2026",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 6,
                                                ),
                                                width: double.infinity,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Return Date",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                    Text(
                                                      "January 23, 2026",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Container(
                                                width: double.infinity,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Rental duration",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                    Text(
                                                      "2 Days",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFFACC15),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40000000),
                                    blurRadius: 4,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.only(
                                top: 18,
                                bottom: 18,
                                left: 20,
                                right: 20,
                              ),
                              margin: const EdgeInsets.only(
                                bottom: 9,
                                left: 24,
                                right: 24,
                              ),
                              width: double.infinity,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print('Pressed');
                                    },
                                    child: IntrinsicWidth(
                                      child: IntrinsicHeight(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            color: Color(0x33FACC15),
                                          ),
                                          padding: const EdgeInsets.only(
                                            top: 11,
                                            bottom: 11,
                                            left: 7,
                                            right: 7,
                                          ),
                                          margin: const EdgeInsets.only(
                                            right: 8,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 71,
                                                height: 54,
                                                child: Image.network(
                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/NXFuUTx2ln/t2bhf3eq_expires_30_days.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: IntrinsicHeight(
                                      child: Container(
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                "BMW M4",
                                                style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 7,
                                                ),
                                                width: double.infinity,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Rental Date",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                    Text(
                                                      "March 1, 2026",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 6,
                                                ),
                                                width: double.infinity,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Return Date",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                    Text(
                                                      "March 8, 2026",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Container(
                                                width: double.infinity,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Rental duration",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                    Text(
                                                      "7 Days",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFFACC15),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x40000000),
                                    blurRadius: 4,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.only(
                                top: 18,
                                bottom: 18,
                                left: 20,
                                right: 20,
                              ),
                              margin: const EdgeInsets.only(
                                bottom: 210,
                                left: 24,
                                right: 24,
                              ),
                              width: double.infinity,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print('Pressed');
                                    },
                                    child: IntrinsicWidth(
                                      child: IntrinsicHeight(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                            color: Color(0x33FACC15),
                                          ),
                                          padding: const EdgeInsets.only(
                                            top: 1,
                                            bottom: 1,
                                            left: 5,
                                            right: 5,
                                          ),
                                          margin: const EdgeInsets.only(
                                            right: 8,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 75,
                                                height: 75,
                                                child: Image.network(
                                                  "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/NXFuUTx2ln/2285ymxz_expires_30_days.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: IntrinsicHeight(
                                      child: Container(
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 10,
                                              ),
                                              child: Text(
                                                "Hyundai Palisade",
                                                style: TextStyle(
                                                  color: Color(0xFF000000),
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 7,
                                                ),
                                                width: double.infinity,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Rental Date",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                    Text(
                                                      "May 13, 2026",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Container(
                                                margin: const EdgeInsets.only(
                                                  bottom: 6,
                                                ),
                                                width: double.infinity,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Return Date",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                    Text(
                                                      "May 16, 2026",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            IntrinsicHeight(
                                              child: Container(
                                                width: double.infinity,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Rental duration",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                    Text(
                                                      "3 Days",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              color: Color(0xFFFFFFFF),
                              padding: const EdgeInsets.symmetric(vertical: 7),
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IntrinsicWidth(
                                    child: IntrinsicHeight(
                                      child: Container(
                                        margin: const EdgeInsets.only(left: 56),
                                        child: Column(
                                          children: [
                                            IntrinsicWidth(
                                              child: IntrinsicHeight(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 35,
                                                      height: 35,
                                                      child: Image.network(
                                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/NXFuUTx2ln/yy185us8_expires_30_days.png",
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Home",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF8C8C8C,
                                                        ),
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  IntrinsicWidth(
                                    child: IntrinsicHeight(
                                      child: Column(
                                        children: [
                                          IntrinsicWidth(
                                            child: IntrinsicHeight(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    width: 35,
                                                    height: 35,
                                                    child: Image.network(
                                                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/NXFuUTx2ln/mbyvftui_expires_30_days.png",
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Activities",
                                                    style: TextStyle(
                                                      color: Color(0xFF8C8C8C),
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IntrinsicWidth(
                                    child: IntrinsicHeight(
                                      child: Container(
                                        margin: const EdgeInsets.only(
                                          right: 41,
                                        ),
                                        child: Column(
                                          children: [
                                            IntrinsicWidth(
                                              child: IntrinsicHeight(
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: 35,
                                                      height: 35,
                                                      child: Image.network(
                                                        "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/NXFuUTx2ln/kdylxcb9_expires_30_days.png",
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Profile",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF8C8C8C,
                                                        ),
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
