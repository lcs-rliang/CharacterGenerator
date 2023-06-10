//
//  FullTableRowView.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/1.
//

import SwiftUI

struct InformationRowView: View {
    
    //MARK: Stored Properties
    
    
    let text: String
    let defaultText: String
    let inputText: String
    
    //    let name = String
    //
    //
    //
    //
//        @State var inputText = inputText
        @State var name = ""
        @State var player = ""
        @State var occupation = ""
        @State var era = ""
        @State var age = ""
        @State var sex = ""
        @State var residence = ""
        @State var birthplace = ""
    
    //MARK: Computed Properties
    
    
    var body: some View {
        
        HStack {
            HStack {
                
                Text(text)
//                   5 .font(.system(size: 13))
                    .padding(.all, 10.0)
                
                Spacer()
                
                TextField("\(defaultText)", text: $name)
            }
            
            //            TextField(text, text: $inputName)
        }
        
        
        //        .padding(.horizontal, 10.0)
        //        .border(Color.gray)
    }
}

struct InformationRowView_Previews: PreviewProvider {
    static var previews: some View {
        InformationRowView(text: "Name: ",
                           defaultText: "nope",
                           inputText: "nah")
    }
}
