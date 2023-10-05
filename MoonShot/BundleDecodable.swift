//
//  BundleDecodable.swift
//  MoonShot
//
//  Created by doha moustafa on 18/08/2023.
//

import Foundation
// we want to convert the JSON data into data that we can work with. which mean
//1. we have got to find that bundle class to find the location of astronauts.json inside our finished installed app bundle.
//2. we need to load that into a data instance.
//3. decode that using json decoder.
// tip: a smart way to do that is to create a file that holds the decoding code
// we used an extension, so we can write this property in the content view: let astronauts = Bundle.main.decode("astronauts.json")
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        return loaded
    }
}
