//
//  SanityRowView.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/9.
//

import SwiftUI

struct SanityRowView: View {
    

    
    
    var sanity: Int
    
    var body: some View {
        HStack {
            
            Text("SAN:")
            //                   5 .font(.system(size: 13))
                .padding(.all, 10.0)
            
            Spacer()
            
            Text("\(sanity)/99")
            
            Spacer()
        }
    }
}

struct SanityRowView_Previews: PreviewProvider {
    static var previews: some View {
        SanityRowView(sanity: 0)
    }
}
