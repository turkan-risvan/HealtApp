import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:healt_app/view/common/common_text_field.dart';
import 'package:healt_app/viewmodel/login_viewmodel.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 247, 245),
      appBar: AppBar(
        title: Text("Giriş Sayfası"),
        backgroundColor: Colors.teal, // AppBar rengi
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildEmailTextField(),
            SizedBox(height: 16),
            _buildPasswordTextField(),
            SizedBox(height: 24),
            _buildLoginButton(context),
            SizedBox(height: 8),
            _buildOpenRegisterButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildEmailTextField() {
    return CommonTextField(
      controller: _emailController,
      label: "Email",
      fillColor: Colors.white, // TextField arka plan rengi
    );
  }

  Widget _buildPasswordTextField() {
    return CommonTextField(
      controller: _passwordController,
      label: "Password",
      fillColor: Colors.white, // TextField arka plan rengi
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(
      context,
      listen: false,
    );

    return ElevatedButton(
      onPressed: () {
        viewModel.login(
          context,
          _emailController.text.trim(),
          _passwordController.text.trim(),
        );
      },
      child: Text("Giriş Yap"),
      style: ElevatedButton.styleFrom(
        primary: Colors.teal, // Button rengi
      ),
    );
  }

  Widget _buildOpenRegisterButton(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(
      context,
      listen: false,
    );

    return TextButton(
      onPressed: () {
        viewModel.openRegisterPage(context);
      },
      child: Text("Hesabınız yok mu? Hesap Oluşturun"),
      style: TextButton.styleFrom(
        primary: Colors.teal, // TextButton rengi
      ),
    );
  }
}
