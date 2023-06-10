//
//  CharacerCellView.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/1.
//

import SwiftUI

struct CharacteristicRowView: View {
    
    let characteristicText: String
    let characteristic2Text: String
    
    var characteristic: Int
    var characteristicHalfValue: Int
    var characteristicFifthValue: Int
    var characteristic2: Int
    var characteristic2HalfValue: Int
    var characteristic2FifthValue: Int
    
    @State var randomInt = Int.random(in: 1...6)
    
    var strength: Int {
        return (randomInt + randomInt + randomInt) * 5
    }

    var dexterity: Int {
        return  (randomInt + randomInt + randomInt) * 5
    }

    var size: Int {
        return  (randomInt + randomInt + 6) * 5
    }

    var constitution: Int {
        return  (randomInt + randomInt + randomInt) * 5
    }
    var appearance: Int {
        return  (randomInt + randomInt + randomInt) * 5
    }

    var intelligence: Int {
        return  (randomInt + randomInt + 6) * 5
    }

    var power: Int {
        return  (randomInt + randomInt + randomInt) * 5
    }

    var education: Int {
        return  (randomInt + randomInt + 6) * 5
    }

    var luck: Int {
        return  (randomInt + randomInt + randomInt) * 5
    }

    var point_used: Int {
        return strength + dexterity + size + appearance + intelligence + power + education + luck
    }
    

    var body: some View {
        
        HStack {

            HStack {
                
                
                Text(characteristicText)
                    .font(.system(size: 12.14))
//                    .frame(width: 30.0)
                    .padding(.all, 5.0)
                    .frame(width: 40.0)
            
                Divider()
                
                Text("\(characteristic)")
                    .font(.system(size: 13))
                    .fontWeight(.light)
//                    .frame(width: 30.0)
                    .padding(.all, 5.0)
                    .frame(width: 40.0)
                Divider()
                
                VStack {
                    Text ("25")
                        .font(.system(size: 13))
                        .fontWeight(.light)
                    
                    Divider()
                    
                    Text ("10")
                        .font(.system(size: 13))
                        .fontWeight(.light)
                }
                .padding(.all, 5.0)
                    .frame(width: 40.0)
            }
           
            Divider()
            
            HStack {
                
                
                Text(characteristic2Text)
                    .font(.system(size: 12.14))
//                    .frame(width: 30.0)
                    .padding(.all, 5.0)
                    .frame(width: 40.0)
            
                Divider()
                
                Text("\(characteristic2)")
                    .font(.system(size: 13))
                    .fontWeight(.light)
//                    .frame(width: 30.0)
                    .padding(.all, 5.0)
                    .frame(width: 40.0)
                Divider()
                
                VStack {
                    Text ("25")
                        .font(.system(size: 13))
                        .fontWeight(.light)
                    
                    Divider()
                    
                    Text ("10")
                        .font(.system(size: 13))
                        .fontWeight(.light)
                }
                    .padding(.all, 5.0)
                    .frame(width: 40.0)
            }
            

        }
//        .frame(width: 400.0, height: 50.0)
      
      
        
    }
}

struct CharacerRowView_Previews: PreviewProvider {
    static var previews: some View {
        CharacteristicRowView(characteristicText: "STR",
                              characteristic2Text: "EDU",
                              characteristic: 50,
                              characteristicHalfValue: 25,
                              characteristicFifthValue: 10,
                              characteristic2: 60,
                              characteristic2HalfValue: 30,
                              characteristic2FifthValue: 12
        )
    }
}
