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
    let pronoun: String
    let residence: String
    let birthplace: String
    
   

    //MARK: Computed properties
    @State var randomInt = Int.random(in: 1...6)
    @State var randomInt1 = Int.random(in: 1...6)
    @State var randomInt2 = Int.random(in: 1...6)
    @State var randomInt3 = Int.random(in: 1...6)
    @State var randomInt4 = Int.random(in: 1...6)
    @State var randomInt5 = Int.random(in: 1...6)
    @State var randomInt6 = Int.random(in: 1...6)
    @State var randomInt7 = Int.random(in: 1...6)
    @State var randomInt8 = Int.random(in: 1...6)
    @State var randomInt9 = Int.random(in: 1...6)
    @State var randomInt10 = Int.random(in: 1...6)
    @State var randomInt11 = Int.random(in: 1...6)
    @State var randomInt12 = Int.random(in: 1...6)
    @State var randomInt13 = Int.random(in: 1...6)
    @State var randomInt14 = Int.random(in: 1...6)
    @State var randomInt15 = Int.random(in: 1...6)
    @State var randomInt16 = Int.random(in: 1...6)
    @State var randomInt17 = Int.random(in: 1...6)
    @State var randomInt18 = Int.random(in: 1...6)
    @State var randomInt19 = Int.random(in: 1...6)
    @State var randomInt20 = Int.random(in: 1...6)
    
//    let randomInt = [1, 2, 3, 4, 5, 6].randomElement()
    
    
    var strength: Int {
        return (randomInt + randomInt1 + randomInt2) * 5
    }
    
    var halfStrength: Int {
        return (randomInt + randomInt1 + randomInt2) * 5/2
    }
    
    var fifthStrength: Int {
        return (randomInt + randomInt1 + randomInt2)
    }

    var dexterity: Int {
        return  (randomInt3 + randomInt4 + randomInt5) * 5
    }
    
    var halfDexterity: Int {
        return (randomInt + randomInt1 + randomInt2) * 5/2
    }
    
    var fifthDexterity: Int {
        return (randomInt + randomInt1 + randomInt2)
    }

    var size: Int {
        return  (randomInt6 + randomInt7 + 6) * 5
    }

    var constitution: Int {
        return  (randomInt8 + randomInt9 + randomInt10) * 5
    }
    var appearance: Int {
        return  (randomInt11 + randomInt12 + randomInt13) * 5
    }

    var intelligence: Int {
        return  (randomInt14 + randomInt15 + 6) * 5
    }

    var power: Int {
        return  (randomInt16 + randomInt17 + randomInt18) * 5
    }

    var education: Int {
        return  (randomInt19 + randomInt20 + 6) * 5
    }

    var luck: Int {
        return  (randomInt + randomInt + randomInt) * 5
    }

    var point_used: Int {
        return strength + dexterity + size + appearance + intelligence + power + education + luck
    }
    var body: some View {
        
        ScrollView {
            
            //MARK: Investigator Information
            VStack{
                
                
                
                TitleVIew(title: "Investigator Information")
                
                
                Group {
                    
                    VStack {
                        InformationRowView(text: "Player's Name: ",
                                           defaultText: "H. P. Lovecraft",
                                           inputText: player)
                        Divider()
                        InformationRowView(text: "Character Name: ",
                                           defaultText: "Rondov Carter",
                                           inputText: name)
                        Divider()
                        
                        Group {
                            
                            HStack {
                                InformationRowView(text: "Era:",
                                                   defaultText: "1920s",
                                                   inputText: era)
                                Divider()
                                InformationRowView(text: "Age: ",
                                                   defaultText: "35",
                                                   inputText: age)
                            }
                            Divider()
                            
                            HStack {
                                InformationRowView(text: "Sex:",
                                                   defaultText: "Male",
                                                   inputText: sex)
                                Divider()
                                InformationRowView(text: "Pronoun: ",
                                                   defaultText: "?",
                                                   inputText: pronoun)
                                
                            }
                            Divider()
                        }
                        InformationRowView(text: "Occupation: ",
                                           defaultText: "Lawyer",
                                           inputText: occupation)
                        Divider()
                        InformationRowView(text: "Residence: ",
                                           defaultText: "New Jersey",
                                           inputText: residence)
                        Divider()
                        InformationRowView(text: "Birthplace: ",
                                           defaultText: "New York Ciry",
                                           inputText: birthplace)
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
                                CharacteristicRowView(characteristicText: "STR",
                                                      characteristic2Text: "DEX",
                                                      characteristic: strength,
                                                      characteristicHalfValue: halfStrength,
                                                      characteristicFifthValue: fifthStrength,
                                                      characteristic2: dexterity,
                                                      characteristic2HalfValue: halfDexterity,
                                                      characteristic2FifthValue: fifthDexterity)
                                
                                
                                Divider()
                                
                                CharacteristicRowView(characteristicText: "CON",
                                                      characteristic2Text: "SIZ",
                                                      characteristic: constitution,
                                                      characteristicHalfValue: ,
                                                      characteristicFifthValue: <#T##Int#>,
                                                      characteristic2: <#T##Int#>,
                                                      characteristic2HalfValue: <#T##Int#>,
                                                      characteristic2FifthValue: <#T##Int#>)
                           
                                
                                Divider()
                                
                                CharacteristicRowView(characteristicText: "APP",
                                                      characteristic2Text: "INT",
                                                      characteristic: "\(appearance)",
                                                      characteristic2: "\(intelligence)")
                                
                                Divider()
                                
                                CharacteristicRowView(characteristicText: "EDU",
                                                      characteristic2Text: "POW",
                                                      characteristic: "\(education)",
                                                      characteristic2: "\(power)")
                                
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
                            .border(Color("SaveButtonBorder"))
//                            .cornerRadius(15.0)
//                            .overlay(
//                                RoundedRectangle(cornerRadius: 15.0)
//                                    .stroke(Color("SaveButtonBorder"), lineWidth: 2)
//                            )
                        
                        
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
                      pronoun: "he",
                      residence: "New Jersey",
                      birthplace: "Louisiana")
        .preferredColorScheme(.dark)
    }
}
