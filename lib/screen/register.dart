import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:taoyngwie_login_regis/model/profile.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fromkey = GlobalKey<FormState>();
  Profile profile = Profile("", "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Create new account")),
      body: Container(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              key: fromkey,
              child: SingleChildScrollView(
                child: Column(
                  //จัดแจงให้ไปด้านซ้าย
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("E-mail", style: TextStyle(fontSize: 20)),
                    TextFormField(
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Plase input E-mail."),
                        EmailValidator(errorText: "Invalid email form.")
                      ]),
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (email) {
                        profile.email = email.toString();
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Password", style: TextStyle(fontSize: 20)),
                    TextFormField(
                      validator:
                          RequiredValidator(errorText: "Plase input password."),
                      obscureText: true /* การปิดบังรหัสผ่าน */,
                      onSaved: (password) {
                        profile.password = password.toString();
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Text("Register", style: TextStyle(fontSize: 20)),
                        onPressed: () {
                          if (fromkey.currentState!.validate()) {
                            fromkey.currentState!.save();
                            print(
                                "email = ${profile.email} password = ${profile.password}");
                            fromkey.currentState?.reset(); //clear ฟอร์ม
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
