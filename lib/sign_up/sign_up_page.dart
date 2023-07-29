import 'package:flutter/material.dart';
import '../components/sign_up_textfield.dart';
import '../login/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
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
                        const SizedBox(
                          height: 80,
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/bank_logo4.png',
                            height: 200,
                          ),
                        ),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  const SignUpTextField(
                    hintText: 'Ad Soyad',
                    obscureText: false,
                    keyboardType: TextInputType.name,
                    maxLength: 30,
                  ),
                  const SizedBox(height: 10),
                  const SignUpTextField(
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                    hintText: 'Hesap Numarası',
                    obscureText: false,
                  ),
                  const SizedBox(height: 10),
                  const SignUpTextField(
                    hintText: 'Email',
                    obscureText: false,
                    keyboardType: TextInputType.emailAddress,
                    maxLength: 30,
                  ),
                  const SizedBox(height: 10),
                  const SignUpTextField(
                    hintText: 'Şifre',
                    obscureText: true,
                    maxLength: 6,
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Şifre 6 karakter olmalı ve sadece rakamları içermelidir',
                    style: TextStyle(color: Colors.red),
                  ),
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: null,
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 16, 65, 105),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          'KAYIT OL',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hesabınız var mı?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) => LoginPage()),
                            ),
                          );
                        },
                        child: const Text(
                          'Giriş Yap',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
