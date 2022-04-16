import 'package:airplane/ui/widgets/custome_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custome_button.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomeTextFormField(
          title: 'Full Name', 
          hintText: 'Your fullname'
        );
      }

      Widget emailInput() {
        return CustomeTextFormField(
          title: 'Email Address', 
          hintText: 'Your email address'
        );
      }

      Widget passwordInput() {
        return CustomeTextFormField(
          obscureText: true, 
          title: 'Your password', 
          hintText: 'Password'
        );
      }

      Widget hobbyInput() {
        return CustomeTextFormField(
          title: 'Hobby', 
          hintText: 'Your hobby'
        );
      }

      Widget submitButton() {
        return CustomeButton(
            title: 'Get Started',
            onPressed: () => Navigator.pushNamed(context, '/bonus'));
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 50, bottom: 73),
        child: Text(
          'Terms and Conditions',
          style: greyStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
