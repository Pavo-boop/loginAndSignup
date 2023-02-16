import 'package:flutter/material.dart';
import 'package:untitled3/screens/loginscreen.dart';
import 'package:untitled3/shared/components/components.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}
class _SignupState extends State<Signup> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  var usernamecontroller = TextEditingController();
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
              key: formkey ,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: const [
                       Text('Sign Up',
                         style:
                         TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 30.0),),
                     ],
                   ),
                  const SizedBox(height: 15,),
                  defaultFormField(
                    controller: emailcontroller,
                    type: TextInputType.emailAddress,
                    validate: (String value){
                      if(value.isEmpty || !value.contains('@')){
                        return'Email must not be empty';
                      }
                    },
                    label: 'Email',
                    prefix: Icons.email,

                  ),
                  const SizedBox(height: 20.0,),
                  defaultFormField(
                      controller: usernamecontroller,
                      type: TextInputType.text,
                      validate: (String value){
                        if(value.isEmpty){
                          return'Username must not be empty';
                        }
                      },
                      label: 'Username',
                      prefix: Icons.drive_file_rename_outline,
                  ),
                  const SizedBox(height: 20.0,),
                  defaultFormField(
                    controller: passwordcontroller,
                    type: TextInputType.visiblePassword,
                    validate: (String value){
                      if(value.isEmpty){
                        return'Username must not be empty';
                      }
                    },
                    label: 'password',
                    prefix: Icons.lock,
                    suffix: isPassword! ? Icons.visibility : Icons.visibility_off_outlined,
                    isPassword : isPassword!,
                    suffixPassed: (){
                      setState(() {
                        isPassword =!isPassword!;
                      });
                    }
                  ),
                    const SizedBox(height: 30,),
                    defaultButton(text: 'Sign Up',
                    function: (){
                      if(formkey.currentState!.validate()){
                        print(emailcontroller);
                        print(usernamecontroller);
                        print(passwordcontroller);
                      }
                    }
                    ),
                    //ElevatedButton(onPressed:(){}, child: const Text('Sign Up')),
                  const SizedBox(height: 20,),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen(),),);
                  }, child: const Text('Already have an account?'))

                ],
              ),
            ),
          ),
        ),
      )


    );
  }
}
