//
//  ModelDate.swift
//  doggio
//
//  Created by Jeffrey Sheets on 10/10/23.
//

import Foundation

var dogs : [Dog] = load("Dogs Data.json")

func write<T: Codable>(array: [T], filename: String) {
    var file: URL
            do {
                file = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
                    .appendingPathComponent(filename)
            } catch {
                fatalError("Coudn't read or create \(filename): \(error.localizedDescription)")
            }
    // encode the array with new entry and write to JSON file
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    do {
        print("Writing...  📖: \(file.description)")
        try encoder.encode(array).write(to: file)
    } catch {
        print("Couldn’t save new entry to \(filename), \(error.localizedDescription)")
    }

}


func load<T: Decodable>(_ filename: String) -> T {

    let data: Data



    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)

    else {

        fatalError("Couldn't find \(filename) in main bundle.")

    }



    do {

        data = try Data(contentsOf: file)

    } catch {

        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")

    }



    do {

        let decoder = JSONDecoder()

        return try decoder.decode(T.self, from: data)

    } catch {

        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")

    }

}
