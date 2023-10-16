import 'package:flutter/material.dart';
import 'package:research/utils/custom_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.90,
        heightFactor: 0.90,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white70,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 80,
                height: 80,
                child: Image.asset('assets/icons/chat_logo.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05 ,
              ),
              const CustomText(
                data: 'Chatter',
                color: Colors.blue,
                textDecoration: TextDecoration.none,
                fontSize: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05 ,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    border: InputBorder.none,
                    hintText: 'email',
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),
                    border: InputBorder.none,
                    hintText: 'password',
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
