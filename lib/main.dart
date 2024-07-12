import 'package:app_chat_bot/chat.bot.page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          indicatorColor: Colors.white,
          primaryColor: Colors.deepOrange,
      ),
      routes: {
        "/chat" :(context)=> ChatBotPage(),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             CircleAvatar(
      //               backgroundImage: AssetImage("images/profile.jpg"),
      //               radius: 50,
      //             ),
      //             CircleAvatar(
      //               backgroundImage: AssetImage("images/profile.jpg"),
      //               radius: 50,
      //             ),
      //           ],
      //         ),
      //           decoration: BoxDecoration(
      //             gradient: LinearGradient(
      //                 colors: [
      //                   Colors.white,
      //                   Theme.of(context).primaryColor
      //                 ],
      //             ),
      //           )
      //       )
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(color: Theme.of(context).indicatorColor),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("images/ENSET Mohammedia.jpg")),
                  SizedBox(
                    height: 40,
                  ),
                  
                  TextFormField(
                    controller: loginController,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                          Icons.lock
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  
                  SizedBox(
                    height: 20,
                  ),
                  
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                          Icons.visibility
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Theme.of(context).primaryColor,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      onPressed: (){
                        String usename = loginController.text;
                        String password = passwordController.text;
                        if (usename == "admin" && password == "1234") {
                          Navigator.of(context).pop();
                          Navigator.pushNamed(context, "/chat");
                        }
                      },
                      child: Text(
                          "Log In",
                          style: TextStyle(
                            fontSize: 22,
                            color: Theme.of(context).indicatorColor,
                          ),
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
