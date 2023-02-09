import 'package:demo/constant/import.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode emailFn = FocusNode();
  FocusNode passwordFn = FocusNode();
  bool obscureText = false;
  _notify() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
          top: kToolbarHeight,
        ),
        children: <Widget>[
          Image.asset(
            "asset/login.png",
            width: MediaQuery.of(context).size.width,
          ),
          Text(
            'Welcome to Cred',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: size20,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Keep your data safe!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: size12,
              color: kLightGreyColor,
            ),
          ),
          const SizedBox(height: 30),
          TextFieldWidget(
            obscureText: false,
            controller: emailController,
            focusNode: emailFn,
            hint: "Enter your email",
            label: "Email",
          ),
          TextFieldWidget(
            controller: passwordController,
            focusNode: passwordFn,
            hint: "Enter your password",
            label: "Password",
            obscureText: obscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                obscureText = !obscureText;
                _notify();
              },
              child: Icon(
                obscureText ? Icons.visibility : Icons.visibility_off,
                color: kPrimaryColor,
                size: 16,
              ),
            ),
          ),
          ButtonWidget(
            text: "Login",
            onTap: () {},
          ),
          Text(
            'Forgot Password ?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: size14,
              color: kPrimaryColor,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "Don't have account? ",
            style: TextStyle(
              fontSize: size14,
              color: kLightGreyColor,
            ),
            children: [
              TextSpan(
                text: "Register",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: size14,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
