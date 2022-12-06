// What country names are > 50% vowels?
// input -> array of country names
// output -> array of country names with > 50% vowels

import Foundation

func countriesGreaterThan50PercentVowels() -> [String] {
    var allCountries = readTxt(filename: "countries")
    var countryNamesGreaterThan50PerVowels = [String]()
    
    for country in allCountries {
        let uppercasedCountry = country.uppercased()
        var vowelsCount = 0
        for char in uppercasedCountry {
            var character = String(char)
            if character == "A"
                || character == "E"
                || character == "I"
                || character == "O"
                || character == "U" {
                vowelsCount += 1
            }
        }
        if country.count / 2 < vowelsCount {
            countryNamesGreaterThan50PerVowels.append(country)
        }
    }
    return countryNamesGreaterThan50PerVowels
}
print(countriesGreaterThan50PercentVowels())
