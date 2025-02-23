import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/authentication/widgets/form_button.dart';
import 'package:tiktok_clone/features/onboarding/interests_screen.dart';

enum FormField { email, password }

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final Map<FormField, String> _formData = {};

  void _onSubmitTap() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const InterestsScreen()),
          (route) => false,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Log in')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size36),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Gaps.v28,
              TextFormField(
                decoration: const InputDecoration(hintText: 'Email'),
                validator: (value) {
                  return null;
                },
                onSaved:
                    (value) => {
                      if (value != null) _formData[FormField.email] = value,
                    },
              ),
              Gaps.v16,
              TextFormField(
                decoration: const InputDecoration(hintText: 'Password'),
                validator: (value) {
                  return null;
                },
                onSaved:
                    (value) => {
                      if (value != null) _formData[FormField.password] = value,
                    },
              ),
              Gaps.v28,
              FormButton(onTap: _onSubmitTap, disabled: false),
            ],
          ),
        ),
      ),
    );
  }
}
