import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: constraints.maxWidth * 0.1),
                    child: Column(
                      children: [
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(
                                height: constraints.maxHeight * 0.1,
                                width: constraints.maxHeight * 0.1,
                                image: const AssetImage('images/logo.png')),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Maintenance',
                                  style: TextStyle(
                                      fontSize: constraints.maxHeight * 0.03,
                                      fontFamily: 'Rubik Medium',
                                      color: const Color(0xff2D3142)),
                                ),
                                Text(
                                  'Box',
                                  style: TextStyle(
                                      fontSize: constraints.maxHeight * 0.03,
                                      fontFamily: 'Rubik Medium',
                                      color: const Color(0xffF9703B)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.05,
                        ),
                        Center(
                            child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: constraints.maxHeight * 0.03,
                              fontFamily: 'Rubik Medium',
                              color: const Color(0xff2D3142)),
                        )),
                        SizedBox(
                          height: constraints.maxHeight * 0.02,
                        ),
                        Center(
                          child: Text(
                            'Please Login Your Account..!',
                            style: TextStyle(
                                fontSize: constraints.maxHeight * 0.02,
                                fontFamily: 'Rubik Regular',
                                color: const Color(0xff4C5980)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            fillColor: const Color(0xffF8F9FA),
                            filled: true,
                            prefixIcon: const Icon(
                              Icons.mail,
                              color: Color(0xff323F4B),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffE4E7EB)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffE4E7EB)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.02,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: const Icon(Icons.visibility),
                              hintText: 'Password',
                              fillColor: const Color(0xffF8F9FA),
                              filled: true,
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Color(0xff323F4B),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffE4E7EB)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xffE4E7EB)),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.01,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(
                                fontFamily: 'Rubik Medium',
                                color: Colors.deepOrange),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Container(
                          height: constraints.maxHeight * 0.07,
                          width: constraints.maxWidth * 0.8,
                          decoration: BoxDecoration(
                              color: const Color(0xffF9703B),
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Rubik regular',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: constraints.maxHeight * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Dont have an account?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: constraints.maxHeight * 0.02,
                                  fontFamily: 'Rubik Regular',
                                  color: const Color(0xff4C5980)),
                            ),
                            Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: constraints.maxHeight * 0.02,
                                  fontFamily: 'Rubik Medium',
                                  color: const Color(0xffF9703B)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
    );
  }
}
