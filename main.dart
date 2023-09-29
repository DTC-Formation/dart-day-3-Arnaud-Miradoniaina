import 'Adresse.dart';
import 'Personne.dart';
import 'dart:io';

void main(){
  Adresse adr_Arnaud=Adresse(" lot 89", "tana");
   Personne Arnaud=Personne("Rasamoelison", "Arnaud", "H",adr_Arnaud ,10);
   Adresse adr_Fanasina=Adresse("lot 25", "tana");
   Personne Fanasina =Personne("Irina", "Fanasina", "F", adr_Fanasina,5);
   Arnaud.saluer(Fanasina);
   Arnaud.saluer(Arnaud);
   while(Fanasina.pointdevie!=0 && Arnaud.pointdevie!=0){
        print("Entrer le nom du joueur qui va attauer Arnaud ou Fanasina:");
       String? nomjoueur = stdin.readLineSync();
       if (nomjoueur=="Arnaud") {
         Arnaud.attaquer(Fanasina);
         print('Arnaud a attaqué Fanasina et le point de vie de Fanasina maintenant est');
         print(Fanasina.pointdevie);
       }
       else{
          Fanasina.attaquer(Arnaud);
           print('Fanasina a attaqué Fanasina et le point de vie de Arnaud maintenant est');
          print(Arnaud.pointdevie);
       }
      
  }
  if (Arnaud.pointdevie==0) {
    print("Fanasina a gagné");
    
  } else {
     print("Arnaud a gagné");
  }
}
  
   
