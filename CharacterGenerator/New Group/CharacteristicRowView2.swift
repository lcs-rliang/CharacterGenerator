//
//  CharacteristicRowView2.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/8.
//

import SwiftUI

struct CharacteristicRowView2: View {
    let characteristic: String
    
    let text: String
    
    var body: some View {
        
        HStack {

            HStack {
                
                
                Text(characteristic)
                    .font(.system(size: 13))
//                    .frame(width: 30.0)
                    .padding(.all, 11)
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
                
                
                Text(text)
                    .font(.system(size: 12.14))
//                    .frame(width: 30.0)
                    .padding(.all, 5.0)
                    .frame(width: 40.0)
            
                Divider()
                
                
                HStack {
                    
                    Spacer()
                    
                    Text("450")
                        .font(.system(size: 13))
                        .fontWeight(.light)
    //                    .frame(width: 30.0)
                        .padding(.all, 5.0)
    //                    .frame(width: 40.0)
                    
                    Spacer()
                }
                
              
                    
            }
            

        }
    }
}

struct CharacteristicRowView2_Previews: PreviewProvider {
    static var previews: some View {
        CharacteristicRowView2(characteristic: "LUCK",
                               text: "Point Used")
    }
}
