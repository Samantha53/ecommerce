import 'package:ecommerce_user/home/view/home.dart';
import 'package:ecommerce_user/index_screen/index_screen.dart';
import 'package:ecommerce_user/login/bloc/login_bloc.dart';
import 'package:ecommerce_user/signup/view/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final _loginbloc = LoginBloc();

    final _formKey = GlobalKey<FormState>();


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _loginbloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
           if (state is LoginSuccess) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IndexScreen(),
                ));
          } else if (state is LoginFailed) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errormessage)));
          }
          // TODO: implement listener
        },
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Welcome',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                       validator: (value) {
                            if (value == null || value.isEmpty) {
                              return ("Please enter email");
                            }
                            return null;
                          },
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Enter email',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                       validator: (value) {
                            if (value == null || value.isEmpty) {
                              return ("Please enter password");
                            }
                            return null;
                          },
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        labelText: 'Enter password',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                                  _loginbloc.add(
                                    LoginAccount(
                                      email: emailController.text,
                                      password: passwordController.text,
                                    ),
                                  );
                                }
                        },
                        child: Text('Login'),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Text("Don't have an Account?"),
                    Container(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Signup(),
                                ));
                          },
                          child: Text(
                            'SignUp',
                            style: TextStyle(color: Colors.blue),
                          )),
                    ),
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
