// base class 'Media'
class Media {
  // Method to play media
  void play() {
    print("Playing media...");
  }
}

// derived class 'Song' inheriting from the base class - 'Media'
class Song extends Media {
  // Additional attribute
  String artist;

  // Constructor for 'Song' class
  Song(this.artist);

  // Override the play method to include artist information
  @override
  void play() {
    print("Playing song by $artist...");
  }
}

void main() {
  // Create an instance of Media
  Media media = Media();

  // Create an instance of Song
  Song song = Song("Kuddus");

  // Call the play method for Media
  media.play(); // Output: Playing media...

  // Call the play method for Song
  song.play(); // Output: Playing song by Kuddus...
}
