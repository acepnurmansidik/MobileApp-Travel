import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/ui/widgets/custome_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custome_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  // untuk handle setiap perubahan pada nilai text form fieldnya
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController = TextEditingController(text: '');
  final TextEditingController hobbyController = TextEditingController(text: '');

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
          hintText: 'Your fullname',
          controller: nameController,
        );
      }

      Widget emailInput() {
        return CustomeTextFormField(
          title: 'Email Address',
          hintText: 'Your email address',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomeTextFormField(
          obscureText: true,
          title: 'Your password',
          hintText: 'Password',
          controller: passwordController,
        );
      }

      Widget hobbyInput() {
        return CustomeTextFormField(
          title: 'Hobby',
          hintText: 'Your hobby',
          controller: hobbyController,
        );
      }

      Widget submitButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            // akan melakukan listen jika AuthState failed atau success
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/bonus', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: kRedColor,
                  content: Text(state.error.toString())));
            }
          },
          builder: (context, state) {
            // jika tombolnya loading
            if (state is AuthLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            // jika tombolnya sudah tidak loading
            return CustomeButton(
                title: 'Get Started',
                onPressed: () => context.read<AuthCubit>().signUp(
                    email: emailController.text,
                    name: nameController.text,
                    password: passwordController.text,
                    hobby: hobbyController.text));
          },
        );
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
