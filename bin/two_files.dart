library two_files;
part 'fcns.dart';

ex6_1(word) {
  print("Question 1");
  var reversedWord = "";
  word = word.toLowerCase();
  
  for(var i = word.length - 1; i >= 0; i--){
    reversedWord += word[i];
  }
  
  if(reversedWord == word){
    print("Le mot est un Palindrome");
  }
  else{
    print("Le mot n'est pas un Palindrome");
  }
}

ex6_2(dateFrom, dateTo) {
  print("");
  print("Question 2");
  DateTime from = DateTime.parse(dateFrom);
  DateTime to = DateTime.parse(dateTo);
  Duration difference = from.difference(to);
  var jours = difference.inDays;
  print("La différence en jours entre " + dateFrom + " et " + dateTo + " est de " + jours.toString() + " jours.");
}
ex6_3(grade){
  print("");
  print("Question 3");
    for(var i = 100; i >=0; i--){
    if(grade >= 90){
      return 'A';
    }
    if(grade >= 80){
      return 'B';
    }
    if(grade >= 70){
      return 'C';
    }
    else{
      return 'D';
    }
  }
}

ex6_4(){
  print("");
  print("Question 4");
  var names = ['Anthony', 'Jack', 'Zack', 'Paul', 'Eric', 'Samantha', 'Gertrude', 'Pierre-Paulin'];
  var namesLess8 = [], namesAre8 = [], namesHigher8 = [];
  for(var name in names){
    if(name.length < 8){
      namesLess8.add(name);
    }
    else if(name.length == 8){
      namesAre8.add(name);
    }
    else{
      namesHigher8.add(name);
    }
  }
  print(namesLess8);
  print(namesAre8);
  print(namesHigher8);
}


ex6_5(Map equipeJoueurs){
  
  print("");
  print("Question 5");
  
  List equipes = new List();
  List joueurs = new List();
  
  
  for (String equipe in equipeJoueurs.values) {
    if (!equipes.contains(equipe)) {
      equipes.add(equipe);
      joueurs.add(new List());
    }
  }
  equipes.sort();
  
  
  for (String joueur in equipeJoueurs.keys) {
    int position = equipes.indexOf(equipeJoueurs[joueur]);
    joueurs.elementAt(position).add(joueur);
  }
  
  List listeFinale = new List();
  for (int i = 0; i < equipes.length; i++) {
    listeFinale.add(equipes.elementAt(i));
    for(int j = 0; j < joueurs.elementAt(i).length; j++) {
      listeFinale.add(joueurs.elementAt(i).elementAt(j));
    }
  }
  
  print(listeFinale);
}

void main() {
  ex6_1('Natan');
  ex6_2("2013-01-01", "2013-01-12");
  print(ex6_3(63));
  ex6_4();
  
  
  Map equipeJoueurs = {'Joe bloe' : 'Senateurs',  
           'Jean Paul' : 'Canadiens',
           'Quelqun' : 'Maple Leafs',
           'Gertrude' : 'Canadiens',
           'Pierre' : 'Maple Leafs',
           'Charlot' : 'Oilers'
  };
  ex6_5(equipeJoueurs);
}