//
//  GeneratorView.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/1.
//

import SwiftUI

struct GeneratorView: View {
    //MARK: Stored Properties
    let player: String
    let name: String
    let occupation: String
    let era: String
    let age: String
    let sex: String
    let Residence: String
    let Birthplace: String

    //MARK: Computed properties
    
    
    
    
    
    var body: some View {
        
        ScrollView {
            
            //MARK: Investigator Information
            VStack{
                
                
                //1st title
                Group {
                    
                    HStack {
                        
                        Text ("Investigator Information")
                            .font(.system(size: 25))
                            .bold()
                        
                        Spacer()
                    }
                    .padding ([.leading, .bottom], 20.0)

                }
                    
                //1st table
                Group {
                      
                    VStack {
                        FullTableRowView(text: "Player: ")
                        Divider()
                        FullTableRowView(text: "Name: ")
                        Divider()
                        
                        Group {
                            
                            HStack {
                                FullTableRowView(text: "Occupation:")
                                Divider()
                                FullTableRowView(text: "Era: ")
                            }
                            Divider()
                            
                            HStack {
                                FullTableRowView(text: "Age:")
                                Divider()
                                FullTableRowView(text: "Sex: ")
                                
                            }
                            Divider()
                        }
                       
                        FullTableRowView(text: "Residence: ")
                        Divider()
                        FullTableRowView(text: "Birthplace: ")
                    }
                    
                    .padding(.all, 10.0)
                    
                    
                    .background (
                        RoundedRectangle(cornerRadius: 10.0)
                            .foregroundColor(Color("TableBackground"))
                        )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(Color("TableBorder"), lineWidth: 2)
                        )
                    .padding(.horizontal, 20.0)
                }
                
                Spacer()
                
                //2nd title
                Group {
                    HStack {
                        
                        Text ("Characteristics")
                            .font(.system(size: 25))
                            .bold()
                        
                        Spacer()
                    }
                    .padding ([.top, .leading, .bottom], 20.0)

                }
                
                //2nd table
                Group {
                    VStack {
                        CharacteristicRowView(characteristic: "STR",
                                               characteristic2: "DEX")
                        
                        Divider()
                        
                        CharacteristicRowView(characteristic: "CON",
                                               characteristic2: "SIZ")
                        
                        Divider()
                        
                        CharacteristicRowView(characteristic: "APP",
                                               characteristic2: "INT")
                        
                        Divider()
                        
                        CharacteristicRowView(characteristic: "EDU",
                                               characteristic2: "POW")
                        
                        Divider()
                        
                        CharacteristicRowView2(characteristic: "LUCK",
                                               text: "Point Used")
                        
                    }
                    .padding(.all, 10.0)
                    .border(Color("TableBorder2"))
                    .padding(.all, 10.0)
                }
                .background (
                    RoundedRectangle(cornerRadius: 10.0)
                        .foregroundColor(Color("TableBackground"))
                    )
                .overlay(
                    RoundedRectangle(cornerRadius: 10.0)
                        .stroke(Color("TableBorder"), lineWidth: 2)
                    )
                .padding(.horizontal, 20.0)
        }
        
           
            
                
        }
    }
}

struct GeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratorView(player: "Harvey Walter",
                      name: "Chaosium",
                      occupation: "Writer",
                      era: "1920s",
                      age: "42",
                      sex: "Male",
                      Residence: "New Jersey",
                      Birthplace: "Louisiana")
            .preferredColorScheme(.dark)
    }
}
