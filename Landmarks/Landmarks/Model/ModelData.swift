//
//  ModelData.swift
//  Landmarks
//
//  Created by Naohiro Hamada on 2022/11/22.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    
    // hike data never modify
    // No @Published attribute
    var hikes: [Hike] = load("hikeData.json")
    
    @Published var profile = Profile.default
    
    var features: [Landmark] {
        landmarks.filter {
            $0.isFeatured
        }
    }
    
    var categories: [String:[Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: {
                $0.category.rawValue
            })
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could not find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename) from main bundle: \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(filename) as \(T.self): \(error)")
    }
}
