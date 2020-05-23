import 'dart:convert';

import 'package:http/http.dart' as http;

class UsuarioProvider{

  final String _firebaseToken = 'AIzaSyCyrLfvMrtY2sT_txsh76y2kTn3KdbqpZE'; 

  Future<Map<String,dynamic>> login( String email, String password ) async {

    final authData = {

      'email'             : email,
      'password'          : password,
      'returnSecureToken' : true 

    };


    final resp = await http.post(
      'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$_firebaseToken',
      body: json.encode( authData )
    );

    Map< String,dynamic > decodedResp = json.decode( resp.body );

    //print(decodedResp);

    if ( decodedResp.containsKey('idToken') ){
      
      return { 'Ok': true, 'token': decodedResp['idToken'] };
    }else{
      return { 'Ok': true, 'mensaje':decodedResp['error']['message'] };  
    }


  }



  Future<Map<String,dynamic>> nuevoUsuario( String email, String password ) async{

    final authData = {

      'email'             : email,
      'password'          : password,
      'returnSecureToken' : true 

    };


    final resp = await http.post(

      'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_firebaseToken',
      body: json.encode( authData )
    );

    Map< String,dynamic > decodedResp = json.decode( resp.body );

    //print(decodedResp);

    if ( decodedResp.containsKey('idToken') ){
      // TODO salvar el token
      return { 'Ok': true };
    }else{
      return { 'Ok': true, 'mensaje':decodedResp['error']['message'] };  
    }

  }

}