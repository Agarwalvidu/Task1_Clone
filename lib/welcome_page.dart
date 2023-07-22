import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task1_clone/login_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 20),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        decoration: const BoxDecoration(
                          color: Color(0xFFf9f3e5),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Text(
                          "Skip",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        )),
                  ),
                ],
              ),
            ),
            Container(
              width: 170,
              height: 170,
              margin: const EdgeInsets.symmetric(vertical: 35),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFedf7f8),
              ),
              child: Transform.scale(
                scale: 0.7,
                child: Image.network(
                  'https://www.7krave.com/img/7krave-logo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Container(
                height: 52,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF4dae5f),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Continue with Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 52,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: const Image(
                          image: NetworkImage(
                            'https://www.iconsdb.com/icons/preview/white/apple-xxl.png',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Continue with Apple",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 52,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF5384ed),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: const Image(
                          image: NetworkImage(
                            'https://cdn.vectorstock.com/i/preview-2x/48/62/google-symbol-logo-blue-and-white-design-vector-46334862.webp',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Continue with Google",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 52,
                margin:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFF425892),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(1),
                        child: const Image(
                          image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVnU7jwP3AImkNQoEqfpsdLdMVyMWk_zzbSZ3zSQH2O2AgrxmQBh1Y&usqp=CAE&s',
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "Continue with Facebook",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color(0xFF4dae5f),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  const TextSpan(
                    text:
                        'By clicking "Continue with Email/Apple/Google/Facebook"\nabove, you agree to 7krave\'s',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(
                    text: ' Terms & Conditions ',
                    style: const TextStyle(
                      color: Color(0xFFD4CB90),
                      fontSize: 13,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  const TextSpan(
                    text: 'and',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                  TextSpan(
                    text: ' Privacy\nPolicy',
                    style: const TextStyle(
                      color: Color(0xFFD4CB90),
                      fontSize: 13,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  const TextSpan(
                    text: '.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
