//
// Created by Stephane Bressani on 02.05.21.
//

import Foundation

/**
 Scale in choice in this app
 */
enum Scale {
    case Major
    case Minor
    case PentagonicMajor
    case PhrygianDominant
    case Dorian
    case Dorian4
    case Mixolydian
}

/**
 Convert enum Scale to String
 - Parameter enumScale: Scale
 - Returns: String
 */
func scaleToString(enumScale: Scale) -> String {
    switch (enumScale) {
    case Scale.Major:
        return "Major E"
    case Scale.Minor:
        return "Minor E"
    case Scale.PentagonicMajor:
        return "Pentagonic E"
    case Scale.PhrygianDominant:
        return "Phrygian E"
    case Scale.Dorian:
        return "Dorian E"
    case Scale.Dorian4:
        return "Dorian4 E"
    case Scale.Mixolydian:
        return "Mixolydian E"
    }
}