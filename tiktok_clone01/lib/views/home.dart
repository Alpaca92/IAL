import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone01/widgets/auth_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // FIXME: 임시로 카메라 펀치홀을 피했는데, 이후에는 다른 방법을 찾아야 함
        toolbarHeight: 100,
        title: FaIcon(
          FontAwesomeIcons.twitter,
          color: Color(0xff4e98e9),
          size: 40,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 140),
              Text(
                'See what\'s happening in the world right now.',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 140),
              AuthButton(
                logo: SvgPicture.asset(
                  'assets/images/google_logo.svg',
                  semanticsLabel: 'Google Logo',
                  // FIXME: height를 옆에 text와 맞추고 싶다
                ),
                text: 'Continue with Google',
              ),
              SizedBox(height: 20),
              AuthButton(
                logo: FaIcon(FontAwesomeIcons.apple),
                text: 'Continue with Apple',
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        endIndent: 10,
                        thickness: 1,
                      ),
                    ),
                    Text(
                      "or",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        indent: 10,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              AuthButton(
                text: 'Create account',
                inverted: true,
              ),
              SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(text: 'By signing up, you agree to our '),
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(text: ',\n'),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(text: ', and '),
                    TextSpan(
                      text: 'Cookie Use.',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(text: 'Have an account already? '),
                    TextSpan(
                      text: 'Log in',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
