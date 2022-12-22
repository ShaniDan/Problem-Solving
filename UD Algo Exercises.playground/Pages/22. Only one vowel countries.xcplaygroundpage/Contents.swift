// Setting up storage to use during a for loop, including counters and arrays
// What countries use only one vowel in their name (the vowel can be used multiple times) For example, if the word “BEEKEEPER” were a country, it would be an answer, because it only uses “E”.
// input = array of country names
// output = array of country names with only one vowel

import Foundation

func countryWithOneVowel() -> [String]{
    var allCountries = readTxt(name: "countries")
    var countriesWithOnlyOneVowel = [String]()
    
    var vowels = ["A", "E", "I", "O", "U"]
    for country in allCountries {
        let upperCasedCountry = country.uppercased()
        var countryVowel = ""
        for character in upperCasedCountry {
            var letter = String(character)
            if vowels.contains(letter){
                countryVowel.append(letter)
            }
        }
        var hasSingleVowel = true
        for char in countryVowel {
            if countryVowel.first != char {
                hasSingleVowel = false
                break
            }
        }
        if hasSingleVowel {
            countriesWithOnlyOneVowel.append(country)
        }
    }
    return countriesWithOnlyOneVowel
}
print(countryWithOneVowel())

