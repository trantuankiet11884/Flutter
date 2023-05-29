import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  Future<void> _loginUser(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        final UserCredential userCredential =
            await _auth.signInWithEmailAndPassword(
          email: _formKey.currentState!.fields['email']!.value.toString(),
          password: _formKey.currentState!.fields['password']!.value.toString(),
        );
        // Đăng nhập thành công, thực hiện hành động tiếp theo (ví dụ: chuyển trang)
        print('User logged in: ${userCredential.user!.email}');
      } catch (e) {
        // Xử lý lỗi đăng nhập
        print('Login error: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FormBuilderTextField(
                name: 'email',
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                  FormBuilderValidators.email(context),
                ]),
              ),
              SizedBox(height: 16.0),
              FormBuilderTextField(
                name: 'password',
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(context),
                ]),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () => _loginUser(context),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
