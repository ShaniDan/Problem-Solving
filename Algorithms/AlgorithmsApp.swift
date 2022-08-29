//
//  AlgorithmsApp.swift
//  Algorithms
//
//  Created by Shakhnoza Mirabzalova on 8/19/22.
//

import SwiftUI

@main
struct AlgorithmsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
    
    func printLine() -> String {

        let filename = "sowpods.txt"

        var text: String

        var myCounter: Int

        print("hello world")
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: "strings")

        else {

            fatalError("Couldn't find \(filename) in main bundle.")

        }



        do {

            let contents = try String(contentsOf: file, encoding: String.Encoding.utf8 )

            let lines = contents.split(separator:"\n")

            print(contents)

            print(lines)

            myCounter = lines.count

            print(myCounter)

            text = String(myCounter)

            } catch {

                return (error.localizedDescription)

            }

            return text



    }
}
