import 'package:flutter/material.dart';
import '../widgets/drawer/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 52, 152, 219),
                Color.fromARGB(255, 44, 62, 80),
              ],
            ),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        actions: const [
          Icon(
            Icons.settings,
          )
        ],
      ),
      drawer: const DrawerPage(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 52, 152, 219),
                    Color.fromARGB(255, 44, 62, 80),
                  ],
                ),
              ),
              child: Column(
                children: [
                  const Center(
                    child: Icon(
                      Icons.person_2,
                      size: 120,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    'SAMET CAN KÖSE',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 115,
                    width: 280,
                    child: Column(
                      children: [
                        const SizedBox(height: 6),
                        Text(
                          'BAKİYE',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade300),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '545,755.30 TL',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade900),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('TRANSFER'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 225, 245, 255),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(2, 2),
                            blurRadius: 4,
                            spreadRadius: 2,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'SON TRANSFERLER',
                            style: TextStyle(
                                fontSize: 16, color: Colors.blue.shade500),
                          ),
                          const SizedBox(height: 20),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.money, color: Colors.red),
                                        Text('Araba Kredisi',
                                            style: TextStyle(fontSize: 16)),
                                      ],
                                    ),
                                    Text(
                                      '-20,000 TL',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.money, color: Colors.red),
                                        Text(
                                          'Ev Kredisi',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '-45,000 TL',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.money, color: Colors.green),
                                        Text(
                                          'İyi harca oğlum ben baban',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '+3,000 TL',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.money, color: Colors.green),
                                        Text(
                                          'Aylık maaş ödemesi',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '+23,000 TL',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
