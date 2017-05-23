//: Playground - noun: a place where people can play

import UIKit


// **********
// * Type Casting
// **********


class MediaItem {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class Movie : MediaItem {
    var director : String
    
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song : MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}


let mediaFolder : [MediaItem] = [
    Movie(name: "Alien", director: "Ridley Scott"),
    Movie(name: "Taxi", director: "Luc Besson"),
    Song(name: "Style", artist: "Taylor Swift"),
    Movie(name: "Sharknado", director: "Anthony C. Ferrante"),
    Song(name: "Hello", artist: "Adele"),
    Song(name: "What do you mean?", artist: "Justin Bieber"),
    Movie(name: "12 Angry Men", director: "Sidney Lumet"),
    Song(name: "Miss Murder", artist: "AFI"),
    Movie(name: "Forrest Gump", director: "Robert Zemeckis")
]


// Type Check operator: "is"

if mediaFolder[0] is Movie {
    print("The first item is a Movie")
}
else if mediaFolder[0] is Song {
    print("The first item is a Song")
}

// Down-Casting ( as? ; as! )
// as? is a conditional down casting returning an optional value
// as! downcasts and force unwraps

let maybeAMovie = mediaFolder[2] as? Movie // Results in Optional.none
let definitelyASong = mediaFolder[2] as! Song

print("\(maybeAMovie); \(definitelyASong)")

for mediaFolderItem in mediaFolder {
    if let item = mediaFolderItem as? Movie {
        print("Movie: \(item.name); Director: \(item.director)")
    }
    else if let item = mediaFolderItem as? Song {
        print("Song: \(item.name); Artist: \(item.artist)")
    }
    else {
        print("Uncategorised item")
    }
}

// Conditional iteration

for movie in mediaFolder where movie is Movie {
    print(movie.name)
}

