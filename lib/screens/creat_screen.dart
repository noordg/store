import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/store_text_field.dart';
class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreatScreenState();
}

class _CreatScreenState extends State<CreateScreen> {
  TextEditingController FullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Creat an account',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff000000),
                ),
              ),
              Gap(8),
              Text(
                'Let’s Create your account',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gap(24),
              Text(
                'Full Name ',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Gap(4),
              TextField(
                controller: FullNameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: 'Enter your Full Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              Gap(16),
              Text(
                'Email',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Gap(4),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Enter your email address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                ),
              ),
              Gap(16),
              Text(
                'Password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Gap(4),
              StoreTextField(
                isPassword: true,
                emailController: passwordController,
                hintText: 'Enter Password',
                suffixIcon: Icon(Icons.visibility),
              ),
              Gap(16),
              Text(
                'Confim Password',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Gap(4),
              StoreTextField(
                isPassword: true,
                emailController: passwordController,
                hintText: 'Confim Password',
                suffixIcon: Icon(Icons.visibility),
              ),
              Gap(55),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/details_screen');
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text('Create Acount ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
              Gap(90),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/login_screen');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}
