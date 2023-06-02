//
//  FullTableRowView.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/1.
//

import SwiftUI

struct FullTableRowView: View {
    
    let text: String
    
    var body: some View {
        HStack {
            
            Text(text)
            
                .padding(.all, 10.0)
            
            Spacer()
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
