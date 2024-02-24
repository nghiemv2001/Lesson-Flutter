import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainTextFormFiled extends StatefulWidget {
  const ContainTextFormFiled({Key? key}) : super(key: key);

  @override
  State<ContainTextFormFiled> createState() => _ContainTextFormFiledState();
}

class _ContainTextFormFiledState extends State<ContainTextFormFiled> {
  final _formKey = GlobalKey<FormState>();
  String? _username;
  String? _password;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color(0xFF262626),
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFFAFAFA),
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 13.5,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3797EF),
                      width: 1,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: const Color(0xFF000000).withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: const Color(0xFF000000).withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: const Color(0xFF000000).withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.redAccent,
                      width: 1,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3797EF),
                      width: 1,
                    ),
                  ),
                ),
                onSaved: (value) {
                  _username = value;
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: true,
                obscuringCharacter: '●',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(0.2),
                  ),
                  fillColor: const Color(0xFFFAFAFA),
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 13.5,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: const Color(0xFF000000).withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3797EF),
                      width: 1,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: const Color(0xFF000000).withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: const Color(0xFF000000).withOpacity(0.1),
                      width: 1,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Colors.redAccent,
                      width: 1,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF3797EF),
                      width: 1,
                    ),
                  ),
                ),
                onSaved: (value) {
                  _password = value;
                },
              ),
              const SizedBox(height: 19),
              const Text(
                "Forgot password?",
                style: TextStyle(
                  color: Color(0xFF3797EF),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 44,
                width: double.infinity,
                color: Color(0xFF3797EF).withOpacity(0.5),
                child: ElevatedButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF3797EF),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      ScaffoldMessenger.of(context)
                          .showSnackBar(
                            SnackBar(
                              content: Text(
                                'Tên đăng nhập: $_username\nMật khẩu: $_password',
                              ),
                            ),
                          )
                          .closed
                          .then(
                        (SnackBarClosedReason reason) {
                          _formKey.currentState!.reset();
                        },
                      );
                    }
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 37,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/icons/lesson6/Icon.svg",
                    width: 17,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Log in with Facebook",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF3797EF)),
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
