

import 'dart:convert';
import 'dart:io';
import 'package:mime_type/mime_type.dart';
import 'package:http_parser/http_parser.dart';

import 'package:http/http.dart' as http;
import 'package:app_comerciante/src/models/evento_model.dart';

class EventosProvider {

  final String _url = 'https://appcomerciantes.firebaseio.com';

  Future<bool> crearEvento( EventoModel evento ) async {
    
    final url = '$_url/eventos.json';

    final resp = await http.post( url, body: eventoModelToJson(evento) );

    final decodedData = json.decode(resp.body);

    print( decodedData );

    return true;

  }

    Future<bool> editarEvento( EventoModel evento ) async {
    
    final url = '$_url/eventos/${ evento.id }.json';

    final resp = await http.put( url, body: eventoModelToJson(evento) );

    final decodedData = json.decode(resp.body);

    print( decodedData );

    return true;

  }

  Future<List<EventoModel>> cargarEventos() async {

    final url  = '$_url/eventos.json';
    final resp = await http.get(url);

    final Map<String, dynamic> decodedData = json.decode(resp.body);
    final List<EventoModel> eventos = new List();


    if ( decodedData == null ) return [];

    decodedData.forEach( ( id, prod ){

      final eventTemp = EventoModel.fromJson(prod);
      eventTemp.id = id;

      eventos.add( eventTemp );

    });

    // print( productos[0].id );

    return eventos;

  }

  Future<int> borrarEvento( String id ) async { 

    final url  = '$_url/eventos/$id.json';
    final resp = await http.delete(url);

    print( resp.body );

    return 1;
  }

  Future<String> subirImagen( File imagen ) async{

    final url = Uri.parse('https://api.cloudinary.com/v1_1/dlrlog6ij/image/upload?upload_preset=xetx4ehm');
    final mimeType = mime(imagen.path).split('/');

    final imageUploadRequest = http.MultipartRequest(
      'POST',
      url
    );

    final file = await http.MultipartFile.fromPath(
      'file', 
      imagen.path,
      contentType: MediaType( mimeType[0], mimeType[1] )
    );

    imageUploadRequest.files.add(file);

    final streameResponse = await imageUploadRequest.send();
    final resp = await http.Response.fromStream(streameResponse);

    if( resp.statusCode != 200 && resp.statusCode != 201 ){
        print( 'algo salio mal' );
        print( resp.body );
        return null;

    }

    final respData = json.decode(resp.body);
    print(respData);

    return respData['secure_url'];


    
  }

}




