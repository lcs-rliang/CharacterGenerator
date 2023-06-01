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
                            
                        FullTableRowView(text: "Name: ")
     
                        
                        
                        HStack {
                            FullTableRowView(text: "Occuparion:")
                            
                            FullTableRowView(text: "Era: ")
                        }
                        
                        HStack {
                            FullTableRowView(text: "Age:")
                            
                            FullTableRowView(text: "Sex: ")
                        }
                        
                        FullTableRowView(text: "Residence: ")
                        
                        FullTableRowView(text: "Birthplace: ")
                    }
                    
                    .padding(.all, 10.0)
                    
                    .background (
                        RoundedRectangle(cornerRadius: 5.8)
                            .foregroundColor(Color("TableBackground"))
                        )
                    
                    .padding(.all, 10.0)
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
