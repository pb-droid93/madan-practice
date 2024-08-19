import 'package:flutter/material.dart';
import 'package:practice_flutter/widget/cutom_appbar.dart';

class FormTest extends StatefulWidget {
  const FormTest({super.key});

  @override
  State<FormTest> createState() => _FormTestState();
}

class _FormTestState extends State<FormTest> {
  final _formKey = GlobalKey<FormState>();
  String firstName = "";
  String lastName = "";
  String email = "";
  String useId = "";
  String password = "";
  String mobile = "";
  void trySubmit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      _formKey.currentState!.save();
      submitForm();
    } else {
      print('error');
    }
  }

  submitForm() {
    print(firstName);
    print(lastName);
    print(email);
    print(password);
    print(useId);
    print(mobile);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: CustomAppbar(
          titleText: 'Form',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Container(
              margin: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Icon(
                        Icons.account_circle,
                        size: 100,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: const ValueKey('firstName'),
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          hintText: 'Enter first name!',
                        ),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'First name should note be empty';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          firstName = value.toString();
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: const ValueKey('lastName'),
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                            hintText: 'enter last name !'),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'last name cannot be empty!!!';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          lastName = value.toString();
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: const ValueKey('email'),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: 'enter email id !!',
                        ),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'email id cannot be empty';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          email = value.toString();
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: const ValueKey('useId'),
                        keyboardType: TextInputType.text,
                        decoration:
                            const InputDecoration(hintText: 'enter user id'),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'user id cannot be empty';
                          } else if (value.toString().length < 6) {
                            return 'password length should be 6';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          useId = value.toString();
                        },
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        key: const ValueKey('password'),
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration:
                            const InputDecoration(hintText: 'enter password!!'),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'password cannot be empty';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          password = value.toString();
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        key: const ValueKey('mobile'),
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          hintText: 'enter your mobile',
                        ),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return 'mobile cannot be empty';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          mobile = value.toString();
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            trySubmit();
                          },
                          child: const Text('Login')),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
