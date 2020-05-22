// To parse this JSON data, do
//
//     final client = clientFromJson(jsonString);

import 'dart:convert';

EventoModel eventoModelFromJson(String str) => EventoModel.fromJson(json.decode(str));

String eventoModelToJson(EventoModel data) => json.encode(data.toJson());

class EventoModel {
    String id;
    String nombre;
    String ubicacion;
    String capacidad;
    String fotoUrl;
    bool disponible;

    EventoModel({
        this.id,
        this.nombre,
        this.ubicacion,
        this.capacidad,
        this.fotoUrl,
        this.disponible = true,
    });

    factory EventoModel.fromJson(Map<String, dynamic> json) => EventoModel(
        id          : json["id"],
        nombre      : json["nombre"],
        ubicacion   : json["ubicacion"],
        capacidad   : json["capacidad"],
        fotoUrl     : json["fotoUrl"],
        disponible  : json["disponible"],
    );

    Map<String, dynamic> toJson() => {
        "id"        : id,
        "nombre"    : nombre,
        "ubicacion" : ubicacion,
        "capacidad" : capacidad,
        "fotoUrl"   : fotoUrl,
        "disponible": disponible,
    };
}
