//
//  TabView.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/9.
//

import SwiftUI

struct TabberView: View {
    
    @State  var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            GeneratorView(player: "Harvey Walter",
                          name: "Chaosium",
                          occupation: "Writer",
                          era: "1920s",
                          age: "42",
                          sex: "Male",
                          pronoun:"he",
                          residence: "New Jersey",
                          birthplace: "Louisiana")
            
                .tabItem {
                    if self.selectedTab == 0 {
                        Image(systemName: "tablecells")
                    } else {
                        Image(systemName: "tablecells.fill")
                    }
                    Text("Generator")
                }
                .tag(0)
            
            
            Text("Saved Sheets")
                .tabItem {
                    if self.selectedTab == 1 {
                        Image(systemName: "printer")
                        } else {
                            Image(systemName: "printer.fill")
                        }
                    Text("Saved Sheets")
                }
                .tag(1)
        }
        .accentColor(Color.blue)
       
    }
}


struct TabView_Previews: PreviewProvider {
    static var previews: some View {
       TabberView()
        .preferredColorScheme(.dark)
    }
}
