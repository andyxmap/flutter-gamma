// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

void basics(){

  String name = "";
  var name2 = "";


    var gifts = {
 // Key: Value
 'first': 'partridge',
 'second': 'turtledoves',
 'fifth': 'golden rings'
};
var nobleGases = {
 2: 'helium',
 10: 'neon',
 18: 'argon',
};

if(nobleGases is String) {
 // Type check

}

// Asignar valor a “name”
name = name2;
// Asignar valor a “b” if “b” es null; de lo contrario, “b” permanece 

name2 ??= name;

}

isComplete(order) {
 
}

void isCompleteByOrderName(String order) {
 
}

bool isCompleteLam(dynamic order) => order != null;


//parametros opcionales
enableFlags({bool? track, bool? hidden}){

}

class Solicitdud {
 String firma;
 bool aceptada;
 
 
  Solicitdud(
    this.firma,
    this.aceptada,
  );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firma': firma,
      'aceptada': aceptada,
    };
  }

  factory Solicitdud.fromMap(Map<String, dynamic> map) {
    return Solicitdud(
      map['firma']as String,
      map['aceptada'] as bool
    );
  }

  String toJson() => json.encode(toMap());

  //implementar un constructor que no siempre crea una nueva instancia de su clase
  factory Solicitdud.fromJson(String source) => Solicitdud.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Solicitdud(firma: $firma, aceptada: $aceptada)';

  @override
  bool operator ==(covariant Solicitdud other) {
    if (identical(this, other)) return true;
  
    return 
      other.firma == firma &&
      other.aceptada == aceptada;
  }

  @override
  int get hashCode => firma.hashCode ^ aceptada.hashCode;
}

mixin Estado {
  bool abierta = false;
  bool vencida = false;
}

// reutilizar codigo en jerarquia de clases
class SolicitudConEstado with Estado{

}







