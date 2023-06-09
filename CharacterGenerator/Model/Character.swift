//
//  Character.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/9.
//
import Blackbird
import Foundation


struct Character: BlackbirdModel {
    @BlackbirdColumn var id: Int
    @BlackbirdColumn var player: String
    @BlackbirdColumn var name: String
    @BlackbirdColumn var era: String
    @BlackbirdColumn var age: String
    @BlackbirdColumn var sex: String
    @BlackbirdColumn var pronoun: String
    @BlackbirdColumn var occupation: String
    @BlackbirdColumn var residence: String
    @BlackbirdColumn var birthplace: String
    @BlackbirdColumn var strength: Int
    @BlackbirdColumn var dexterity: Int
    @BlackbirdColumn var size: Int
    @BlackbirdColumn var appearance: Int
    @BlackbirdColumn var intelligence: Int
    @BlackbirdColumn var power: Int
    @BlackbirdColumn var education: Int
    @BlackbirdColumn var luck: Int
    @BlackbirdColumn var point_used: Int
    @BlackbirdColumn var hp: Int
    @BlackbirdColumn var mp: Int
    @BlackbirdColumn var mov: Int
    @BlackbirdColumn var san: Int
    
    
}
