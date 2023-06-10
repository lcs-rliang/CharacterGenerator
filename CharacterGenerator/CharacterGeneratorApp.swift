//
//  CharacterGeneratorApp.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/1.
//
import Blackbird
import SwiftUI

@main
struct CharacterGeneratorApp: App {
    var body: some Scene {
        WindowGroup {
            GeneratorView(player: "Harvey Walter",
                          name: "Chaosium",
                          occupation: "Writer",
                          era: "1920s",
                          age: "42",
                          sex: "Male",
                          pronoun: "he",
                          residence: "New Jersey",
                          birthplace: "Louisiana")
            
                .environment(\.blackbirdDatabase, AppDatabase.instance)
        }
    }
}
