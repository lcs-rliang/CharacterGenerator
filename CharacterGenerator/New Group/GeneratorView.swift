//
//  GeneratorView.swift
//  CharacterGenerator
//
//  Created by dyhidrogen monoxide on 2023/6/1.
//

import SwiftUI

struct GeneratorView: View {
    //MARK: Stored Properties
    
    
    
    //MARK: Computed properties
    
    
    
    
    
    var body: some View {
        
        ScrollView {
            
            //MARK: Investigator Information
            VStack{
                
                
                //Title
                Group {
                    
                    HStack {
                        
                        Text ("Investigator Information")
                            .font(.system(size: 25))
                            .bold()
                        
                        Spacer()
                    }
                    .padding ([.leading, .bottom], 20.0)

                }
                    
                //Table
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
                        RoundedRectangle(cornerRadius: 5.8)
                            .foregroundColor(Color("TableBackground"))
                        )
                    
                    .padding(.horizontal, 20.0)
                }
                
                
        }
        
           
            
                
        }
    }
}

struct GeneratorView_Previews: PreviewProvider {
    static var previews: some View {
        GeneratorView()
            .preferredColorScheme(.dark)
    }
}
