// What are all of the countries that have “United” in the name?
// array of countries
// array of countries containing United

import Foundation

func countriesContainingUnited() -> [String] {
    var allCountries = readTxt(name: "countries")
    var allCountriesWithWordUnited = [String]()
    
    for country in allCountries {
        if country.contains("United") {
            allCountriesWithWordUnited.append(country)
        }
    }
    return allCountriesWithWordUnited
}
print(countriesContainingUnited())
