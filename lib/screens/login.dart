import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  String textField1 = '';
  String textField2 = '';
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
                              padding: const EdgeInsets.only(top: 265),
                              width: double.infinity,
                              child: Column(
                                children: [
                                  IntrinsicHeight(
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                        bottom: 191,
                                        left: 24,
                                        right: 24,
                                      ),
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                              bottom: 35,
                                            ),
                                            child: Text(
                                              "LOGIN TO YOUR ACCOUNT",
                                              style: TextStyle(
                                                color: Color(0xFFFACC15),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          IntrinsicHeight(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0x998C8C8C),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Color(0xFFFFFFFF),
                                              ),
                                              margin: const EdgeInsets.only(
                                                bottom: 23,
                                              ),
                                              width: double.infinity,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                          left: 17,
                                                          right: 12,
                                                        ),
                                                    width: 20,
                                                    height: 20,
                                                    child: Image.network(
                                                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/NXFuUTx2ln/ekq6enh2_expires_30_days.png",
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: IntrinsicHeight(
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        margin:
                                                            const EdgeInsets.only(
                                                              right: 4,
                                                            ),
                                                        width: double.infinity,
                                                        child: TextField(
                                                          style: TextStyle(
                                                            color: Color(
                                                              0xFF000000,
                                                            ),
                                                            fontSize: 14,
                                                          ),
                                                          onChanged: (value) {
                                                            setState(() {
                                                              textField1 =
                                                                  value;
                                                            });
                                                          },
                                                          decoration:
                                                              InputDecoration(
                                                                hintText:
                                                                    "Username",
                                                                isDense: true,
                                                                contentPadding:
                                                                    const EdgeInsets.symmetric(
                                                                      vertical:
                                                                          13,
                                                                    ),
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                filled: false,
                                                              ),
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
                                                  color: Color(0x998C8C8C),
                                                  width: 2,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Color(0xFFFFFFFF),
                                              ),
                                              margin: const EdgeInsets.only(
                                                bottom: 37,
                                              ),
                                              width: double.infinity,
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                          left: 16,
                                                          right: 12,
                                                        ),
                                                    width: 20,
                                                    height: 20,
                                                    child: Image.network(
                                                      "https://storage.googleapis.com/tagjs-prod.appspot.com/v1/NXFuUTx2ln/e84y31og_expires_30_days.png",
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: IntrinsicHeight(
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        margin:
                                                            const EdgeInsets.only(
                                                              right: 4,
                                                            ),
                                                        width: double.infinity,
                                                        child: TextField(
                                                          style: TextStyle(
                                                            color: Color(
                                                              0xFF000000,
                                                            ),
                                                            fontSize: 14,
                                                          ),
                                                          onChanged: (value) {
                                                            setState(() {
                                                              textField2 =
                                                                  value;
                                                            });
                                                          },
                                                          decoration:
                                                              InputDecoration(
                                                                hintText:
                                                                    "Password",
                                                                isDense: true,
                                                                contentPadding:
                                                                    const EdgeInsets.symmetric(
                                                                      vertical:
                                                                          13,
                                                                    ),
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                                focusedBorder:
                                                                    InputBorder
                                                                        .none,
                                                                filled: false,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            onTap: () {
                                              print('Pressed');
                                            },
                                            child: IntrinsicHeight(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Color(0xCCFACC15),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                    ),
                                                margin: const EdgeInsets.only(
                                                  bottom: 16,
                                                ),
                                                width: double.infinity,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "Login",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF000000,
                                                        ),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Don’t have an account?  Sign up",
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  IntrinsicHeight(
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 29),
                                      width: 73,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(
                                              bottom: 6,
                                            ),
                                            child: Text(
                                              "Represents by",
                                              style: TextStyle(
                                                color: Color(0xFF000000),
                                                fontSize: 11,
                                              ),
                                            ),
                                          ),
                                          IntrinsicWidth(
                                            child: IntrinsicHeight(
                                              child: Container(
                                                width: double.infinity,
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
                                          ),
                                        ],
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
