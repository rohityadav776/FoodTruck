import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';

class FoodTruckLoginRegistration extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<FoodTruckLoginRegistration> {
 
  Widget _buildMobileTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Mobile no',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.4,
            fontSize: 15.0,
          //fontWeight: FontWeight.bold,
            fontFamily: 'FredokaOne',
          ),
        ),
        SizedBox(height: 5.0),
        Container(
          alignment: Alignment.centerLeft,
          height: 60.0,
          child: TextField(    //Input text field
              
              decoration: InputDecoration( //Text field decoration
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0)),
              contentPadding: EdgeInsets.all(20),
              prefixIcon: Icon(
                Icons.phone_android,
                color: Colors.white,
              ),
              hintText: 'Enter Mobile no to receive OTP',
              hintStyle: kHintTextStyle
            ),
            
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly],
            cursorColor: Colors.white,
            
          ),
        ),
      ],
    );
  }



  Widget _buildSendOTPBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 15.0,
        onPressed: ()
        {
          print("Send OTP button get pressed");
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'Send OTP',
          style: TextStyle(
            color: Colors.black87,
            letterSpacing: 1.5,
            fontSize: 18.0,
            //fontWeight: FontWeight.bold,
            fontFamily: 'FredokaOne',
            
          ),
        ),
      ),
    );
  }


  Widget _buildSignInWithText() {
    return Column(
      children: <Widget>[
        Text(
          '--- OR ---',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'Sign in with',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            letterSpacing: 1.5,
            fontSize: 15.0,
            //fontWeight: FontWeight.bold,
            fontFamily: 'FredokaOne',
          ),
        ),
      ],
    );
  }

  Widget _buildSocialBtn(Function onTap, AssetImage logo) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 80.0,
        width: 78.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 3),
              blurRadius: 8.0,
            ),
          ],
          
          image: DecorationImage(
            image: logo,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialBtnRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialBtn(
            () => print('Login with Facebook'),
            AssetImage(
              'images/facebook.png',
            ),
          ),
          _buildSocialBtn(
            () => print('Login with Google'),
            AssetImage(
              'images/gmail.png',
            ),
          ),
        ],
      ),
    );
  }


Widget _TermPolicyText(){
  return Container(
        child: Text(
          "By continue you agree our terms and policy",
          textAlign: TextAlign.center,
          style: TextStyle(
          color: Colors.white,
          letterSpacing: 1.5,
          fontSize: 14.0,
          //fontWeight: FontWeight.bold,
          fontFamily: 'FredokaOne',
          ),
    )
  );
}
  @override
  Widget build(BuildContext context) {
    return Stack(
            children: <Widget>[
              
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.lightBlue,
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 30.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      
                      Container(
                        height: 100,
                        width: double.infinity,
                        color: Colors.white,
                        child: Text(
                          'Enter Logo',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blue,
                            letterSpacing: 1.5,
                            fontSize: 30.0,
                            //fontWeight: FontWeight.bold,
                            fontFamily: 'FredokaOne',
                          ) ,
                          
                        ),
                        
                    ),
                  
                      //SizedBox(height: 4.0),
                      
                      _buildMobileTF(),
                     _buildSendOTPBtn(),
                      _buildSignInWithText(),
                      _buildSocialBtnRow(),
                      SizedBox(height: 60.0),
                      _TermPolicyText(),
                    ],
                  ),
                ),
              )
            ],
          );
        ///
  }
}
