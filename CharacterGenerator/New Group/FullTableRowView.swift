//
//  FullTableRowView.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/1.
//

import SwiftUI

struct FullTableRowView: View {
    
    //MARK: Stored Properties
    
    
    let text: String
    //    let name = String
    //
    //
    //
    //
    //    @State var inputName = name
    //    @State var inputPlayer = ""
    //    @State var inputOccupation = ""
    //    @State var inputEra = ""
    //    @State var inputAge = ""
    //    @State var inputSex = ""
    //    @State var inputResidence = ""
    //    @State var inputBirthplace = ""
    
    //MARK: Computed Properties
    
    
    var body: some View {
        
        HStack {
            HStack {
                
                Text(text)
                    .font(.system)
                    .padding(.all, 10.0)
                
                Spacer()
            }
            
            //            TextField(text, text: $inputName)
        }
        
        
        //        .padding(.horizontal, 10.0)
        //        .border(Color.gray)
    }
}

struct FullTableRowView_Previews: PreviewProvider {
    static var previews: some View {
        FullTableRowView(text: "Name: ")
    }
}
