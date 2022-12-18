// What countries both begin and end with a vowel?
// array of countries
// array of countries that begin and end with a vowel

import Foundation

func countriesBeginAndEndWithVowel() -> [String] {
    var allCountries = readTxt(name: "countries")
    var countriesNameBeginAndEndVowel = [String]()
    
    for country in allCountries {
        
        if country.hasPrefix("A")
            || country.hasPrefix("E")
            || country.hasPrefix("I")
            || country.hasPrefix("O")
            || country.hasPrefix("U")
        {
            if country.hasSuffix("a")
                || country.hasSuffix("e")
                || country.hasSuffix("i")
                || country.hasSuffix("o")
                || country.hasSuffix("u") {
                countriesNameBeginAndEndVowel.append(country)
            }
        }
    }
    return countriesNameBeginAndEndVowel
}
print(countriesBeginAndEndWithVowel())

