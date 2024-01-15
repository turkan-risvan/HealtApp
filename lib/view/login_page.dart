 
import 'package:flutter/material.dart';
import 'package:healt_app/view/common/common_text_field.dart';
import 'package:healt_app/viewmodel/login_viewmodel.dart';
import 'package:lottie/lottie.dart';
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
        title: const Text("Giriş Sayfası"),
        backgroundColor: const Color(0xFF00D3BE), // AppBar rengi
      ),
      body: Column(
      
        children: [
           const SizedBox(height: 40,),
                       SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.width * 0.5,
          child: Lottie.asset('assets/Animation - 1704713411549.json'),
        ),
       const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Center(
              child: Container(
                height: 370,
                decoration: BoxDecoration(color: Colors.white,
                border: Border.all(color: const Color(0xFF00D3BE).withOpacity(0.2)),
                borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
          
                      _buildEmailTextField(),
                      const SizedBox(height: 40),
                      _buildPasswordTextField(),
                      const SizedBox(height: 50),
                      _buildLoginButton(context),
                      const SizedBox(height: 40),
                      _buildOpenRegisterButton(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
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
      child:Text("Giriş Yap",style: TextStyle(color: Colors.white,),),
      style: ElevatedButton.styleFrom(
    backgroundColor: const Color(0xFF00D3BE),
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Genişlik ve yüksekliği ayarla
    // veya
    fixedSize: const Size(200, 50), // Sabit bir genişlik ve yükseklik belirle
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
        foregroundColor: const Color(0xFF00D3BE), 
      ),
    );
  }
}



