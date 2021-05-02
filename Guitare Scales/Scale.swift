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
    case Dorian
    case Dorian4
    case Mixolydian
    case Lydian
    case PhrygianMinor
    case Locrian
    case WholeTone
    case HalfWholeDiminished
    case WholeHalfDiminished
    case MinorBlues
    case MinorPentagonic
    case MajorPentagonic
    case HarmonicMinor
    case HarmonicMajor
    case PhrygianDominant
    case MelodicMinor
    case LydianAugumented
    case LydianDominant
    case SuperLocrian
    case _8TonesSpanish
    case Bhairav
    case HungarianMinor
    case Hirajoshi
    case InSen
    case Iwato
    case Kumoi
    case PelogSelisir
    case PelogTembung
    case Messiaen3
    case Messiaen4
    case Messiaen5
    case Messiaen6
    case Messiaen7
}
/**
 Convert enum Scale to String
 - Parameter enumScale: Scale
 - Parameter tonic: String
 - Returns: String
 */
func scaleToString(enumScale: Scale, tonic: String) -> String {
    switch (enumScale) {
    case Scale.Major:
        return "Major " + tonic
    case Scale.Minor:
        return "Minor " + tonic
    case Scale.Dorian:
        return "Dorian " + tonic
    case Scale.Dorian4:
        return "Dorian 4 " + tonic
    case Scale.Mixolydian:
        return "Mixolydian " + tonic
    case Scale.Lydian:
        return "Lydian " + tonic
    case Scale.PhrygianMinor:
        return "Phrygian Minor " + tonic
    case Scale.Locrian:
        return "Locrian " + tonic
    case Scale.WholeTone:
        return "Whole Tone " + tonic
    case Scale.HalfWholeDiminished:
        return "Half Whole Diminished " + tonic
    case Scale.WholeHalfDiminished:
        return "Whole Half Diminished " + tonic
    case Scale.MinorBlues:
        return "Minor Blues " + tonic
    case Scale.MinorPentagonic:
        return "Minor Pentagonic " + tonic
    case Scale.MajorPentagonic:
        return "Major Pentagonic " + tonic
    case Scale.HarmonicMinor:
        return "Harmonic Minor " + tonic
    case Scale.HarmonicMajor:
        return "Harmonic Major " + tonic
    case Scale.PhrygianDominant:
        return "Phrygian Dominant " + tonic
    case Scale.MelodicMinor:
        return "Melodic Minor " + tonic
    case Scale.LydianAugumented:
        return "Lydian Augumented " + tonic
    case Scale.LydianDominant:
        return "Lydian Dominant " + tonic
    case Scale.SuperLocrian:
        return "Super Locrian " + tonic
    case Scale._8TonesSpanish:
        return "8 Tones Spanish " + tonic
    case Scale.Bhairav:
        return "Bhairav " + tonic
    case Scale.HungarianMinor:
        return "Hungarian Minor " + tonic
    case Scale.Hirajoshi:
        return "Hirajoshi " + tonic
    case Scale.InSen:
        return "In Sen " + tonic
    case Scale.Iwato:
        return "Iwato " + tonic
    case Scale.Kumoi:
        return "Kumoi " + tonic
    case Scale.PelogSelisir:
        return "Pelog Selisir " + tonic
    case Scale.PelogTembung:
        return "Pelog Tembung " + tonic
    case Scale.Messiaen3:
        return "Messiaen 3 " + tonic
    case Scale.Messiaen4:
        return "Messiaen 4 " + tonic
    case Scale.Messiaen5:
        return "Messiaen 5 " + tonic
    case Scale.Messiaen6:
        return "Messiaen 6 " + tonic
    case Scale.Messiaen7:
        return "Messiaen 7 " + tonic
    }
}
/**
 Convert enum Scale to String (for Svg Image)
 - Parameter enumScale: Scale
 - Parameter tonic: String
 - Returns: String
 */
func scaleToStringImage(enumScale: Scale, tonic: String, theme: Theme) ->
        String {
    let t = theme == Theme.Light ? "scale_light_" : "scale_dark_";
    switch (enumScale) {
    case Scale.Major:
        return t + "major_" + tonic
    case Scale.Minor:
        return t + "minor_" + tonic
    case Scale.Dorian:
        return t + "dorian_" + tonic
    case Scale.Dorian4:
        return t + "dorian_4_" + tonic
    case Scale.Mixolydian:
        return t + "mixolydian_" + tonic
    case Scale.Lydian:
        return t + "lydian_" + tonic
    case Scale.PhrygianMinor:
        return t + "phrygian_minor_" + tonic
    case Scale.Locrian:
        return t + "locrian_" + tonic
    case Scale.WholeTone:
        return t + "whole_tone_" + tonic
    case Scale.HalfWholeDiminished:
        return t + "half_whole_diminished_" + tonic
    case Scale.WholeHalfDiminished:
        return t + "whole_half_diminished_" + tonic
    case Scale.MinorBlues:
        return t + "minor_blues_" + tonic
    case Scale.MinorPentagonic:
        return t + "minor_pentagonic_" + tonic
    case Scale.MajorPentagonic:
        return t + "major_pentagonic_" + tonic
    case Scale.HarmonicMinor:
        return t + "harmonic_minor_" + tonic
    case Scale.HarmonicMajor:
        return t + "harmonic_major_" + tonic
    case Scale.PhrygianDominant:
        return t + "phrygian_dominant_" + tonic
    case Scale.MelodicMinor:
        return t + "melodic_minor_" + tonic
    case Scale.LydianAugumented:
        return t + "lydian_augumented_" + tonic
    case Scale.LydianDominant:
        return t + "lydian_dominant_" + tonic
    case Scale.SuperLocrian:
        return t + "super_locrian_" + tonic
    case Scale._8TonesSpanish:
        return t + "8_tones_spanish_" + tonic
    case Scale.Bhairav:
        return t + "bhairav_" + tonic
    case Scale.HungarianMinor:
        return t + "hungarian_minor_" + tonic
    case Scale.Hirajoshi:
        return t + "hirajoshi_" + tonic
    case Scale.InSen:
        return t + "in_sen_" + tonic
    case Scale.Iwato:
        return t + "iwato_" + tonic
    case Scale.Kumoi:
        return t + "kumoi_" + tonic
    case Scale.PelogSelisir:
        return t + "pelog_selisir_" + tonic
    case Scale.PelogTembung:
        return t + "pelog_tembung_" + tonic
    case Scale.Messiaen3:
        return t + "messiaen_3_" + tonic
    case Scale.Messiaen4:
        return t + "messiaen_4_" + tonic
    case Scale.Messiaen5:
        return t + "messiaen_5_" + tonic
    case Scale.Messiaen6:
        return t + "messiaen_6_" + tonic
    case Scale.Messiaen7:
        return t + "messiaen_7_" + tonic
    }
}

func scaleToImageString(enumScale: Scale) -> String {
    "scale_light_" + scaleToString(enumScale: enumScale, tonic: "E")
}