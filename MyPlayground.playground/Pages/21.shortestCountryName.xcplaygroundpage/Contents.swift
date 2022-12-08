// Setting up storage to use during a for loop, including counters and arrays
// What is the shortest country name? Make sure your solution can handle ties. - What are ties?
// input ->
// output ->

import Foundation

func shortestCountryName() -> [String] {
    var allCountries = readTxt(filename: "countries")
    var countryNameThatIsShortest = [String]()
    
    for country in allCountries {
        if countryNameThatIsShortest.count == 0 {
            countryNameThatIsShortest = [country]
        } else if countryNameThatIsShortest[0].count > country.count && country.count != 0 {
            countryNameThatIsShortest = [country]
        }
        else if countryNameThatIsShortest[0].count == country.count {
            countryNameThatIsShortest.append(country)
        }
    }
    
    return countryNameThatIsShortest
}
print(shortestCountryName())
