// To parse this JSON data, do
//
//     final productoModel = productoModelFromJson(jsonString);

import 'dart:convert';

UserModel productoModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String productoModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {

    String id;
    String nombre;
    String apellido;
    String celular;    
    String ciudad;    
    String descripcion;    

    UserModel({
        this.id,
        this.nombre       = 'David',
        this.apellido     = 'Robayo',
        this.celular      = '3229496709',
        this.ciudad       = 'Bogota',        
        this.descripcion  = 'Empresario enfocado en el area de tecnologia',
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => new UserModel(
        id             : json["id"],
        nombre         : json["nombre"],
        apellido       : json["apellido"],
        celular        : json["celular"],
        ciudad         : json["ciudad"],
        descripcion    : json["descripcion"],
    );

  get valor => null;

    Map<String, dynamic> toJson() => {
        "id"         : id,
        "nombre"     : nombre,
        "apellido"   : apellido,
        "celular"    : celular,
        "ciudad"     : ciudad,
        "descripcion"    : descripcion,
    };
}