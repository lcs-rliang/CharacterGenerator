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
                    .font(.system(size: 12.14))
//                    .frame(width: 30.0)
                    .padding(.all, 5.0)
                    .frame(width: 40.0)
            
                Divider()
                
                Text("50")
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
                
                
                Text(characteristic2)
                    .font(.system(size: 12.14))
//                    .frame(width: 30.0)
                    .padding(.all, 5.0)
                    .frame(width: 40.0)
            
                Divider()
                
                Text("50")
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
        CharacteristicRowView(characteristic: "STR",
                               characteristic2: "EDU")
    }
}
