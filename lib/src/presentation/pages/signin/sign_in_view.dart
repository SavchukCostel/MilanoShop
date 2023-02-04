import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(App.defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            titleContainer(),
            const SizedBox(height: 60),
            textFieldContainer(icon: Icons.person, hintText: 'email'),
            const SizedBox(height: App.defaultPadding),
            textFieldContainer(icon: Icons.password, hintText: 'password', isPass: true),
            const SizedBox(height: App.defaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[btnRememberMe(), btnForgotPass()],
            ),
            const SizedBox(height: App.padding3),
            btnSignIn(),
            const SizedBox(height: App.defaultPadding),
            btnSignUp(),
            const SizedBox(height: App.padding3),
            btnsAlternativeSignUp(),
          ],
        ),
      ),
    );
  }

  Widget titleContainer() {
    return Builder(builder: (BuildContext context) {
      return Align(
        alignment: Alignment.centerLeft,
        child: Text('Sign in with Email', style: Theme.of(context).textTheme.titleLarge),
      );
    });
  }

  Widget textFieldContainer({required IconData icon, required String hintText, bool isPass = false}) {
    return Builder(builder: (BuildContext context) {
      return Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(App.radiusMin),
          color: Theme.of(context).primaryColorLight,
        ),
        child: Center(
          child: TextFormField(
            cursorColor: Theme.of(context).splashColor,
            style: Theme.of(context).textTheme.displayLarge,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: App.paddingOnText),
                child: Icon(icon, color: Theme.of(context).splashColor),
              ),
              hintText: hintText,
              enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
              hintStyle: TextStyle(
                color: Theme.of(context).splashColor,
              ),
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
            ),
            obscureText: isPass,
            // keyboardType: TextInputType.visiblePassword,
          ),
        ),
      );
    });
  }

  Widget btnSignIn() {
    return Builder(builder: (BuildContext context) {
      return GestureDetector(
        onTap: () {},
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(App.radiusMin),
            color: Theme.of(context).secondaryHeaderColor,
          ),
          child: Center(child: Text('Log in', style: Theme.of(context).textTheme.bodyMedium)),
        ),
      );
    });
  }

  Widget btnRememberMe() {
    return Builder(builder: (BuildContext context) {
      return GestureDetector(
        onTap: () => setState(() {
          isRememberMe = !isRememberMe;
        }),
        child: Row(
          children: <Widget>[
            AnimatedContainer(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: isRememberMe ? Colors.transparent : Theme.of(context).secondaryHeaderColor,
                ),
                color: isRememberMe ? Theme.of(context).secondaryHeaderColor : Theme.of(context).primaryColor,
              ),
              duration: App.defaultDuration,
              child: Center(
                child: Icon(Icons.done, color: Theme.of(context).primaryColor, size: 12),
              ),
            ),
            const SizedBox(width: App.paddingOnText),
            Text('Remember Me', style: Theme.of(context).textTheme.displayLarge?.copyWith(color: Colors.grey)),
          ],
        ),
      );
    });
  }

  Widget btnForgotPass() {
    return const Text(
      'Forgot password',
      style: TextStyle(color: Colors.grey),
    );
  }

  Widget btnSignUp() {
    return Text.rich(
      TextSpan(
        text: 'Don`t have an account? ',
        style: const TextStyle(fontSize: 16, color: Colors.grey),
        children: <TextSpan>[
          TextSpan(
            text: 'Sign up here',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget btnsAlternativeSignUp() {
    return SizedBox(
      height: 40,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(App.defaultRadius),
                color: const Color.fromRGBO(34, 40, 40, 1),
              ),
            ),
          ),
          const SizedBox(width: App.defaultPadding),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(App.defaultRadius),
                color: const Color.fromRGBO(25, 119, 243, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
