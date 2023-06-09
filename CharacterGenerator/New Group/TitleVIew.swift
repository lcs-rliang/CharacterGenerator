//
//  TitleVIew.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/8.
//

import SwiftUI

struct TitleVIew: View {
    
    let title: String
    
    var body: some View {
            
            HStack {
                
                Text (title)
                    .font(.system(size: 25))
                    .bold()
                
                Spacer()
            }
            .padding (.all, 20.0)


    }
}

struct TitleVIew_Previews: PreviewProvider {
    static var previews: some View {
        TitleVIew(title: "Investigator Information")
    }
}
