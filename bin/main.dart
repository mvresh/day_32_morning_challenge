// Challenge
// Shiritori Game
// This challenge is an English twist on the Japanese word game Shiritori.
// The basic premise is to follow two rules:
//
// 1. First character of next word must match last character of previous word.
// 2. The word must not have already been said.

// Write a Shiritori class that has two instance properties:
// - words: a list of words already said.
// - game_over: a boolean that is true if the game is over.
//  and two instance methods:
//
// - play: a method that takes in a word as an argument and checks if it is valid
// (the word should follow rules #1 and #2 above).
// - restart: a method that sets the words list to an empty one [] and sets the
// game_over boolean to false. It should return "game restarted".
// rahul
class Shiritori{
  List<String> words = [];
  bool game_over;
  bool play(String word) {
    game_over = false;

    if(word.length > 1){
      if(words.isEmpty){
        words.add(word);
        return true;
      }
      else{
        if(words.contains(word) != true && words.last[(words.last.length)-1] == word[0]){
          words.add(word);
          return true;
        }
        else{
          game_over = true;
          return false;
        }
      }
    }
    else{
      return false;
    }

  }
  String restart() {
    words.clear();
    game_over = false;
    return "game restarted";
  }
}



main() {

  Shiritori player = Shiritori();

  print(player.play('hello'));
  print(player.play('orange'));

}
