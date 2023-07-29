import 'package:flutter/material.dart';
import '../components/login_textfield.dart';
import '../pages/home_page.dart';
import '../sign_up/sign_up_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Hoşgeldin ve banka resmi
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
                  const Center(
                      child: Text(
                    'HOŞGELDİNİZ',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
                  const SizedBox(height: 20),
                  Center(
                    child: Image.asset(
                      'assets/images/bank_logo4.png',
                      height: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            const SizedBox(height: 25),
            //login fieldleri
            Container(
              child: Column(
                children: [
                  const LoginTextField(hintText: 'Email', obscureText: false),
                  const SizedBox(height: 15),
                  const LoginTextField(hintText: 'Şifre', obscureText: true),
                  const TextButton(
                    onPressed: null,
                    child: Text(
                      'Şifreni Mi Unuttun?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                          'GİRİŞ YAP',
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
                      const Text('Hesabın Yok Mu?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        child: const Text(
                          'Kayıt Ol',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Kayıt Olmadan'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: const Text(
                          'Devam Et',
                          style: TextStyle(color: Colors.blue),
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
