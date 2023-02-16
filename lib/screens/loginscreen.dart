import 'package:flutter/material.dart';
import 'package:untitled3/screens/signup_screen.dart';
import 'package:untitled3/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
   const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formkey =GlobalKey<FormState>();
  bool? isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key :formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        defaultFormField(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            validate: (String value){
                              if(value.isEmpty){
                                return'Email must not be empty';
                              }
                            },
                            label: 'Email',
                            prefix: Icons.email,

                        ),
                        const SizedBox(height: 20.0,),
                        defaultFormField(
                            controller: passwordController,
                            type: TextInputType.visiblePassword,
                            validate: (String value){
                              if(value.isEmpty){
                                return'Password must not be empty';
                              }
                            },
                            label: 'Password',
                            prefix: Icons.lock,
                            suffix: isPassword! ? Icons.visibility :Icons.visibility_off,
                            isPassword: isPassword!,
                            suffixPassed: ()
                            {
                              setState(() {
                              isPassword = !isPassword! ;
                              });
                            }
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed:(){}, child:
                            const Text
                              ('Forget Password'))
                          ],
                        ),
                        const SizedBox(height: 10,),
                      defaultButton(text:'Login',
                      function: (){
                        if(formkey.currentState?.validate() ?? true){
                        print(emailController.text);
                        print(passwordController.text);
                        }
                      }
                      ),
                        const SizedBox(height: 20,),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center
                          ,
                          children:
                          [
                            TextButton(onPressed:(){
                            Navigator.push(context,  MaterialPageRoute(builder: (context) => const Signup(),));
                              }, child:  const Text('Create Your Account Now'),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
