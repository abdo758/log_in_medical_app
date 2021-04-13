import 'package:flutter/material.dart';
import 'package:login_page_medical2/widgets/herder_container.dart';
import 'package:login_page_medical2/widgets/btn_widget.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
);

class HomePage extends StatelessWidget {
  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: _buildSocialBtn(
                  () => print('Login with Facebook'),
              AssetImage(
                'assets/facebook.jpg',
              ),
            ),
          ),
          _buildSocialBtn(
                () => print('Login with Google'),
            AssetImage(
              'assets/google.jpg',
            ),
          ),
        ],
      );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            HeaderContainer("medica"),
            Expanded(

                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 15,),
                         Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                  color: Color.fromRGBO(30,144,255,0.4),
                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      icon:Icon(Icons.email),
                                      hintText: "Email or Phone number",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      icon: Icon(Icons.lock),
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none,
                                  ),
                                ),
                          ),

                            ],
                          ),
                         ),
                        Padding(
                          padding: const EdgeInsets.only(left:160),
                          child: Column(
                            children: [
                              SizedBox(height: 30,),
                              Text("Forgot Password?",
                                style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 7,),
                              Text("Create new account?",
                                style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                        SizedBox(height: 30,),
                        ButtonWidget(
                          btnText: "LOG IN",
                          onClick: (){
                            Navigator.pop(context);
                          },
                        ),
                        SizedBox(height: 20,),
                        Text("-or-",
                          style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 7,),
                        Text("sign in with",
                          style: TextStyle(color:Colors.grey),),
                        SizedBox(
                          height: 20,
                        ),
                        _buildSocialBtnRow(),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      );
  }
}
