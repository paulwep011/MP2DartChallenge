class Song {
  String title;
  String artist;
  int minutes;
  int seconds;

  Song(this.title, this.artist, this.minutes, this.seconds);

  void displaySong() {
    
    String formattedSeconds = seconds < 10 ? '0$seconds' : '$seconds';
    print('Song: $title by $artist, Duration: $minutes:$formattedSeconds');
  }
}

class Playlist {
  String name;
  List<Song> songs;

  Playlist(this.name) : songs = [];

  void addSong(Song song) {
    songs.add(song);
  }

  void displayPlaylist() {
    print('Playlist: $name');
    for (var song in songs) {
      song.displaySong();
    }
  }
}

class MusicFestival {
  String name;
  List<Playlist> stages;

  MusicFestival(this.name) : stages = [];

  void addStage(Playlist playlist) {
    stages.add(playlist);
  }

  void displayFestival() {
    print('Music Festival: $name');
    print('');
    for (var stage in stages) {
      stage.displayPlaylist();
      print('');
    }
  }
}

void main() {
  print('Song Playlist at 10PM');

  var song1 = Song('Paumanhin ', 'Adie, Flow G', 5, 41);
  var song2 = Song('Binibini ', 'Cean Jr', 5, 28);
  var song3 = Song('Pakundangan', 'Demi ft. Hev Abi ', 3, 22);
  var song4 = Song('Eba', 'kiyo', 3, 43);
  var song5 = Song('Urong; Sulong', 'kiyo, Alisson Shore', 4, 28);
  var song6 = Song('Ikaw Lang', 'kiyo', 4, 10);
  var song7 = Song('Maikees Letters', 'Just Hush', 5, 00);
  var song8 = Song('Ano Na?', 'Calvin, kiyo', 2, 42);
  var song9 = Song('Dilaw', 'Maki ', 4, 33);
  var song10 = Song('Munting Paraiso', 'Lo ki', 5, 10);
  var song11 = Song('Palagi', 'TJ Monterde', 4, 15);
  var song12 = Song('Miracle Nights', 'ALLMOST,ft. L.A. GOONs & Peso Mercado', 7, 43);
  var song13 = Song('I Want You Back ', 'Matthaios', 4, 22);
  var song14 = Song('Gusto ft. Al James', 'Zack Tabudlo', 4, 37);
  var song15 = Song('Pagsamo ', 'Arthur Nery ', 5, 01);

  var stage1 = Playlist('Main Stage');
  var stage2 = Playlist('Indie Stage');
  var stage3 = Playlist('Electronic Stage');

  stage1.addSong(song1);
  stage1.addSong(song2);
  stage1.addSong(song3);
  stage1.addSong(song4);
  stage1.addSong(song5);

  stage2.addSong(song6);
  stage2.addSong(song7);
  stage2.addSong(song8);
  stage2.addSong(song9);
  stage2.addSong(song10);

  stage3.addSong(song11);
  stage3.addSong(song12);
  stage3.addSong(song13);
  stage3.addSong(song14);
  stage3.addSong(song15);

  var festival = MusicFestival('Summer Fest');

  festival.addStage(stage1);
  festival.addStage(stage2);
  festival.addStage(stage3);

  festival.displayFestival();
}
