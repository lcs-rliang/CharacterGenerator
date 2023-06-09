//
//  StatusRowView.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/9.
//

import SwiftUI

struct StatusRowView: View {
    
    let status1: String
    let status2: String
    
    
    
    var body: some View {
        HStack {
            HStack {
                
                Text(status1)
                //                   5 .font(.system(size: 13))
                    .padding(.all, 10.0)
                
                Spacer()
            }
            
            Divider()
            
            HStack {
                
                Text(status2)
                //                   5 .font(.system(size: 13))
                    .padding(.all, 10.0)
                
                Spacer()
            }
        }
    }
}
struct StatusRowView_Previews: PreviewProvider {
    static var previews: some View {
        StatusRowView(status1: "HP:", status2: "MP:")
    }
}
