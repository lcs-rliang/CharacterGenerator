//
//  CharacerCellView.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/1.
//

import SwiftUI

struct CharacteristicRowView: View {
    
    let characteristic: String
    let characteristic2: String
    
    
    var body: some View {
        
        HStack {

            HStack {
                
                
                Text(characteristic)
                    .padding(.horizontal, 10.0)
                Divider()
                
                Text("50")
                    .fontWeight(.light)
                    .padding(.horizontal, 10.0)
                Divider()
                
                VStack {
                    Text ("25")
                        .fontWeight(.light)
                    
                    Divider()
                    
                    Text ("10")
                        .fontWeight(.light)
                }
            }
           
            Divider()
            
            HStack {
                
   
                
                Text(characteristic2)
                    .padding(.horizontal, 10.0)
                Divider()
                
                Text("50")
                    .fontWeight(.light)
                    .padding(.horizontal, 10.0)
                Divider()
                
                VStack {
                    Text ("25")
                        .fontWeight(.light)
                    
                    Divider()
                    
                    Text ("10")
                        .fontWeight(.light)
                }
                
        
            }
            

        }
        .frame(width:350.0, height: 50.0)
      
        Divider()
        
    }
}

struct CharacerRowView_Previews: PreviewProvider {
    static var previews: some View {
        CharacteristicRowView(characteristic: "STR",
                               characteristic2: "EDU")
    }
}
