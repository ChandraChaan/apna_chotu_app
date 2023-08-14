import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repository/user_repository.dart';
import '../../utils/linear_background.dart';
import '../../utils/rounded_button.dart';
import '../blocs/login_bloc.dart';
import '../cubits/login_cubit.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool signup = false;
  List<String> countryCodes = ['+1', '+44', '+91', '+86'];
  String selectedCountryCode = '+91';
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  final UserRepository userRepository = UserRepository();
  final LoginCubit _registrationCubit = LoginCubit();

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
                  // BlocBuilder<LoginCubit, LoginState>(
                  //   builder: (context, state) {
                  //     if (state == LoginState.loading) {
                  //       return const CircularProgressIndicator();
                  //     } else if (state == LoginState.success) {
                  //       return const Text('Login Successful!');
                  //     } else if (state == LoginState.error) {
                  //       return const Text('Login Failed!');
                  //     } else {
                  //       return const SizedBox.shrink();
                  //     }
                  //   },
                  // ),
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
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: DropdownButton<String>(
                          value: selectedCountryCode,
                          onChanged: (newValue) {
                            setState(() {
                              selectedCountryCode = newValue!;
                            });
                          },
                          items: countryCodes.map((code) {
                            return DropdownMenuItem<String>(
                              value: code,
                              child: Text(code),
                            );
                          }).toList(),
                          underline: Container(
                            height: 0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            controller: phoneNumberController,
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              hintText: 'Enter your phone number',
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  if (signup) ...[
                    const SizedBox(height: 16),
                    Text(
                      'Email ID',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'Enter your Email address',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(12),
                        ),
                      ),
                    ),
                  ],
                  const SizedBox(height: 16),
                  RoundedButton(
                    onPressed: () {
                      _registrationCubit.registerUser(
                        phoneNumberController.text,
                        emailController.text,
                      );
                    },
                    name: signup ? 'Register' : 'Login via OTP',
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
                signup ? 'Already have an account? ' : 'Not have an account? ',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    signup = !signup;
                  });
                },
                child: Text(
                  signup ? 'Login' : 'Create Now',
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

  @override
  void dispose() {
    _registrationCubit.close();
    super.dispose();
  }
}
