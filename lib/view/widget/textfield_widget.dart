import 'package:demo/constant/import.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.label,
    required this.hint,
    this.suffixIcon,
    required this.obscureText,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String hint;
  final String label;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        borderRadius: BorderRadius.circular(kTextFormBorderRadius),
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        obscureText: obscureText,
        obscuringCharacter: "*",
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          // fillColor: Colors.grey.withOpacity(0.2),
          // filled: true,
          labelText: label,
          hintStyle: const TextStyle(
            color: Colors.black38,
            fontSize: 14,
          ),
          disabledBorder: kInputBorder,
          border: kInputBorder,
          enabledBorder: kInputBorder,
          errorBorder: kInputBorder,
          focusedBorder: kInputBorder,
          focusedErrorBorder: kInputBorder,
        ),
      ),
    );
  }
}
