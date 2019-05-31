import 'package:flutter/material.dart';
import '../blocs/bloc.dart';

class LoginScreen extends StatelessWidget {

  Widget build(context) {
      return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),
          ],
          )
      );
    }

    Widget emailField(){
      return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot){
        return TextField(
        onChanged: bloc.changeEmail,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'email@site.com.br',
          labelText: 'Email:',
          errorText: snapshot.error,
        ),
      );
      },
      );
    }

    Widget passwordField(){
      return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot){
        return TextField(
        onChanged: bloc.changePassword,
        //keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Password',
          errorText: snapshot.error
        ),
      );
      },
      );

      /* 
      return TextField(
        //obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Password'
        ),
      );
      */
    }

    Widget submitButton(){
      return RaisedButton(
        child: Text('Login'),
        color: Colors.blue,
        onPressed: (){
        },
      );
  }


}

final bloc = Bloc();