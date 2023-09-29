import 'Adresse.dart';
class Personne{
  String nom;
  String prenom;
  String sex;
  Adresse adr1;
  int pointdevie=20;
  int pointattaque;

  Personne(this.nom,this.prenom, this.sex,this.adr1 ,this.pointattaque);
  void saluer(Personne p){
    if(this.sex=='H'){
      if(p.sex=='H'){
        print("de aona ony ry bandy akama");
      }
      else{
        print("salut beauté salama va");

      }
    }
    else{
        if(p.sex=='H'){
        print("Salut elah");
      }
      else{
        print("coucou ndrie");
      }

    }
  }
  void attaquer(Personne p){
    p.pointdevie-=this.pointattaque;

  }
}