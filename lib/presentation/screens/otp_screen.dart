import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repository/user_repository.dart';
import '../../utils/linear_background.dart';
import '../../utils/rounded_button.dart';
import '../blocs/login_bloc.dart';
import '../cubits/login_cubit.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {


  @override
  Widget build(BuildContext context) {
    return LinearBackground(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Apna Chotu Customer Login',
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Login access is available to customers who have registered.',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 16),
                      Center(
                          child: SizedBox(
                              height: 250,
                              width: 250,
                              child: Image.asset('assets/images/fingerprint.png'))),
                      const SizedBox(height: 16),
                      Text(
                        'Enter registered mobile number',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for(int a=0; a<4; a++)...[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: const SizedBox(
                            height: 50,
                            width: 30,
                          ),
                        ),
                          const SizedBox(width: 20),]
                        
                        ],
                      ),
                   
                      const SizedBox(height: 16),
                      RoundedButton(
                        onPressed: () {
                        
                        },
                        name:  'Login via OTP',
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              // const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Not have an account? ',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                     
                    },
                    child: Text(
                      'Create Now',
                      style: const TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }


}
