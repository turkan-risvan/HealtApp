import 'package:flutter/material.dart';
import 'package:healt_app/view/common/common_text_field.dart';
import 'package:healt_app/viewmodel/register_viewmodel.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 247, 245),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Kayıt Sayfası"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildEmailTextField(),
            const SizedBox(height: 16),
            _buildPasswordTextField(),
            const SizedBox(height: 24),
            _buildLoginButton(context),
            const SizedBox(height: 8),
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
      fillColor: Colors.white,
    );
  }

  Widget _buildPasswordTextField() {
    return CommonTextField(
      controller: _passwordController,
      label: "Password",
      fillColor: Colors.white,
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    RegisterViewModel viewModel = Provider.of(
      context,
      listen: false,
    );
    return ElevatedButton(
      child: const Text("Kayıt Ol"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal, // Button rengi
      ),
      onPressed: () {
        viewModel.register(
          context,
          _emailController.text.trim(),
          _passwordController.text.trim(),
        );
      },
    );
  }

  Widget _buildOpenRegisterButton(BuildContext context) {
    RegisterViewModel viewModel = Provider.of(
      context,
      listen: false,
    );
    return TextButton(
      child: const Text("Hesabınız var mı? Giriş yapın"),
      onPressed: () {
        viewModel.openLoginPage(context);
        Colors.teal;
      },
    );
  }
}
