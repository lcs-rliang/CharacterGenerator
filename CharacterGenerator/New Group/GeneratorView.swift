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
                
                
                
                TitleVIew(title: "Investigator Information")
                
                
                Group {
                    
                    VStack {
                        InformationRowView(text: "Player name: ")
                        Divider()
                        InformationRowView(text: "Character Name: ")
                        Divider()
                        
                        Group {
                            
                            HStack {
                                InformationRowView(text: "Era:")
                                Divider()
                                InformationRowView(text: "Age: ")
                            }
                            Divider()
                            
                            HStack {
                                InformationRowView(text: "Sex:")
                                Divider()
                                InformationRowView(text: "Pronoun: ")
                                
                            }
                            Divider()
                        }
                        InformationRowView(text: "Occupation: ")
                        Divider()
                        InformationRowView(text: "Residence: ")
                        Divider()
                        InformationRowView(text: "Birthplace: ")
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
                
            }
            
            
            //MARK: Characteristics
            VStack {
                
               
                TitleVIew(title: "Characteristics")
                
                
               
                Group {
                    
                    VStack {
                        VStack {
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
                            .padding(.all, 15.0)
                            
                            
                            //MARK: Button "GENERATE"
                            VStack {
                                Button(action: {
                                    
                                }, label: {
                                    Text("Generate")
                                        .foregroundColor(Color.white)
                                        .font(.headline.smallCaps())
                                })
                                .buttonStyle(.bordered)
                                
                              
                            }
                            .padding(.bottom, 25.0)
                            
                            
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
            
            //MARK: Status
            VStack {
                
                TitleVIew(title: "Status")
                
                Group {
                    VStack {
                        
                        StatusRowView(status1: "HP:", status2: "MP:")
                        
                        Divider()
                        
                        StatusRowView(status1: "DB:", status2: "MOV:")
                        
                        Divider()
                        
                        SanityRowView(sanity: 0)
                    }
                    .padding(.all, 10.0)
                    .border(Color("TableBorder2"))
                    .padding(.all, 15.0)
                    
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
            
            //MARK: Button "SAVE"
            VStack {
               
                
                Button(action: {
                    
                },label: {
                    ZStack{
                        Image("Warning")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15.0)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15.0)
                                    .stroke(Color("SaveButtonBorder"), lineWidth: 2)
                            )
                        
                        
                        HStack (spacing: 37){
                            
                            Text("S")
                                .foregroundColor(Color("SaveButtonText"))
                                .font(.title)
                                .bold()
                            
                          
                            
                            Text("A")
                                .foregroundColor(Color.black)
                                .font(.title)
                                .bold()
                            
                          
                            Text("V")
                                .foregroundColor(Color("SaveButtonText"))
                                .font(.title)
                                .bold()
                            

                            
                            Text("E")
                                .foregroundColor(Color.black)
                                .font(.title)
                                .bold()
                        }
                        .padding(.horizontal, 20)
                    }
                })
                    
                
                       
                  

            }
            .padding(.all, 50.0)
            
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
