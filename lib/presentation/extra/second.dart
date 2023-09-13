import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// class MyCreateAccount extends StatefulWidget {
//   const MyCreateAccount({super.key});

//   @override
//   State<MyCreateAccount> createState() => _MyCreateAccountState();
// }

// class _MyCreateAccountState extends State<MyCreateAccount> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }


class CreateAccountForm extends StatefulWidget {
  @override
  _CreateAccountFormState createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm>
    with SingleTickerProviderStateMixin {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController licenseController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();
  final TextEditingController imageController = TextEditingController();
  List<String> cities = [
    "Delhi",
    "Mumbai",
    "Bangalore",
    "Kolkata",
    "Chennai",
    "Hyderabad",
    // Add more cities as needed
  ];
  List<bool> cityChecklist = List.generate(6, (index) => false);

  String? selectedRadio = 'male';
  int selectedTabIndex = 0;

  void handleRadioValueChanged(String? value) {
    setState(() {
      selectedRadio = value;
    });
  }

  List<Widget> _buildTextFormFields() {
    List<Widget> widgets = [];

    if (selectedTabIndex == 0) {
      widgets.addAll([
        _buildHeaderText('Full Name'),
        _buildTextFormField(nameController, 'Full Name'),
        _buildHeaderText('Email ID'),
        _buildTextFormField(emailController, 'Email ID'),
        _buildHeaderText('Phone Number'),
        _buildTextFormField(numberController, 'Phone Number'),
        _buildHeaderText('Driving Licence Front'),
        _buildTextFormField(licenseController, 'Driving Licence Front'),
        _buildHeaderText('Driving Licence Back'),
        _buildTextFormField(licenseController, 'Driving Licence Back'),
        _buildHeaderText('Password'),
        _buildTextFormField(passwordController, 'Password', isPassword: true),
        _buildHeaderText('Confirm Password'),
        _buildTextFormField(confirmPasswordController, 'Confirm Password',
            isPassword: true),
      ]);
    }

    // Add Tab 2 fields conditionally

    if (selectedTabIndex == 1) {
      widgets.addAll([
        _buildHeaderText('Truck Company'),
        _buildTextFormField(nameController, 'Truck Company'),
        _buildHeaderText('Truck Type'),
        _buildTextFormField(nameController, 'Truck Type'),
        _buildHeaderText('Truck Capacity'),
        _buildTextFormField(numberController, 'Truck Capacity'),
        _buildHeaderText('Truck Size'),
        _buildTextFormField(nameController, 'Truck Size'),
        _buildHeaderText('Truck Registeration Number'),
        _buildTextFormField(nameController, 'Truck Registeration Number'),
        _buildHeaderText('Upload Truck Rc Front'),
        _buildTextFormField(imageController, 'Upload Truck Rc Front'),
        _buildHeaderText('Upload Truck Rc Back'),
        _buildTextFormField(imageController, 'Upload Truck Rc Back'),
        _buildHeaderText('Upload Truck Insurance Front'),
        _buildTextFormField(
            imageController, 'Upload Truck Insurance Back'),
        _buildHeaderText('Upload Truck Image'),
        _buildTextFormField(imageController, 'Upload Truck Image'),
      ]);
    }

    // Add Tab 3 fields conditionally
    if (selectedTabIndex == 2) {
      widgets.addAll([
        _buildHeaderText('Bank Name'),
        _buildTextFormField(nameController, 'Bank Name'),
        _buildHeaderText('Account number'),
        _buildTextFormField(numberController, 'Account number'),
        _buildHeaderText('Confirm Account number'),
        _buildTextFormField(
            numberController, 'Confirm Account number'),
        _buildHeaderText('IFSC Code'),
        _buildTextFormField(numberController, 'IFSC Code'),
        _buildHeaderText('Branch Name'),
        _buildTextFormField(nameController, 'Branch Name'),
        _buildHeaderText('Aadhar Card Front'),
        _buildTextFormField(imageController, 'Aadhar Card Front'),
        _buildHeaderText('Aadhar Card Back'),
        _buildTextFormField(imageController, 'Aadhar Card Back'),
        _buildHeaderText('PAN Card Number'),
        _buildTextFormField(imageController, 'PAN Card Number'),
        _buildHeaderText('PAN Card Front'),
        _buildTextFormField(imageController, 'PAN Card Front'),
        _buildHeaderText('PAN Card Back'),
        _buildTextFormField(imageController, 'PAN Card Back'),
      ]);
    }

    return widgets;
  }

  Widget _buildHeaderText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildTextFormField(
      TextEditingController controller,
      String labelText, {
        bool isPassword = false,
      }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      height: 40.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          controller: controller,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ],
          decoration: InputDecoration(
            labelText: labelText,
            border: InputBorder.none,
            suffixIcon: isPassword
                ? GestureDetector(
              onTap: () {
                setState(() {
                  isPassword = !isPassword;
                });
              },
              child: Icon(
                isPassword ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
            )
                : null,
          ),
          obscureText: isPassword,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildTabs(),
        if (selectedTabIndex == 0)
          Column(
            children: [
              const Text(
                'User Type',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Radio(
                    value: 'Driver',
                    groupValue: selectedRadio,
                    onChanged: handleRadioValueChanged,
                  ),
                  const Text('Driver'),
                  Radio(
                    value: 'Truck',
                    groupValue: selectedRadio,
                    onChanged: handleRadioValueChanged,
                  ),
                  const Text('Truck Owner (or) Broker'),
                ],
              ),
            ],
          ),
        ..._buildTextFormFields(),
        const SizedBox(height: 16.0),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey),
              bottom: BorderSide(color: Colors.grey),
              right: BorderSide(color: Colors.grey),
              left: BorderSide(color: Colors.grey),
            ),
          ),
          child: Visibility(
            visible: selectedTabIndex <=
                3,
            child: ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              child: Text(selectedTabIndex == 3 ? 'Finish' : 'Next'),
            ),
          ),
        ),
        const Text('Already Have an Account? Sign In',
            textAlign: TextAlign.center),
      ],
    );
  }

  Widget _buildTabs() {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.green,
            tabs: const [
              Tab(
                icon: Icon(Icons.drive_eta, size: 20),
              ),
              Tab(
                icon: Icon(Icons.local_shipping, size: 20),
              ),
              Tab(
                icon: Icon(Icons.account_balance, size: 20),
              ),
              Tab(
                icon: Icon(Icons.location_on, size: 20),
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
          ),
          if (selectedTabIndex ==
              3)
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'Choose Services Locations',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                      height:
                      8.0),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search areas',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    numberController.dispose();
    licenseController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
