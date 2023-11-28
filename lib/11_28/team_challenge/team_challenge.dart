void main() {
  List<String> players = ['Player 1', 'Player 2', 'Player 3', 'Player 4'];
  List<int> clapCountsByPlayer = [0, 0, 0, 0];

  int currentPlayerIndex = 0;
  int ahhCount = 0;
  int clapCount = 0;
  int roolCount = 0;

  for (int i = 1;i<= 100;i++){
    String currentPlayer = players[currentPlayerIndex];
    String flag = "";

    if ( i % 30 == 0 ) {
      flag = "ahh";
      ahhCount += 1;
    } else if ( i % 3 == 0 ) {
      flag = "clap";
      clapCount += 1;
      clapCountsByPlayer[currentPlayerIndex] += 1;
    } else if ( i % 10 == 0 ) {
      flag = "rool";
      roolCount += 1;
    } else {
      flag = "$i";
    }

    print("$currentPlayer : $flag");

    currentPlayerIndex = (currentPlayerIndex + 1) % players.length;
  }

  int maxClapUserIndex = 0;
  int maxClapCount = 0;

  for (int i = 0;i < clapCountsByPlayer.length;i++) {
    int currentCalpCount = clapCountsByPlayer[i];

    if (maxClapCount < currentCalpCount) {
      maxClapCount = currentCalpCount;
      maxClapUserIndex = i;
    }
  }

  print("==================================");
  print("- clap : 총 $clapCount개, rool : 총 $roolCount개, ahh : 총 $ahhCount개");
  print("==================================");
  print("- Player1 clap 총 ${clapCountsByPlayer[0]}개");
  print("- Player2 clap 총 ${clapCountsByPlayer[1]}개");
  print("- Player3 clap 총 ${clapCountsByPlayer[2]}개");
  print("- Player4 clap 총 ${clapCountsByPlayer[3]}개");
  print("==================================");
  print("가장 많은 clap을 한 유저는 : ${players[maxClapUserIndex]}");
}
