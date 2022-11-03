//
//  VerifyBusiness.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 9/28/22.
//

import SwiftUI


struct InputOffer: View {
    @State var username: String = ""
    @State var emailAddress: String = ""
    @State var password: String = ""
    @State var passwordConfirm: String = ""
    var body: some View {
        VStack {
            Group{
                Text("Make a Offer").font(.largeTitle.bold())
                
            }
            Spacer()
            Group{
                HStack{
                    Image("Phoebe")
                                .resizable()
                                .frame(width:100, height: 100)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    Spacer()
                    Image("business2")
                                .resizable()
                                .frame(width:120, height: 100)
                                .shadow(radius: 10)
                    Spacer()
                    Image("Andrew")
                                .resizable()
                                .frame(width:100, height: 100)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                }
                Spacer()
                HStack{
                    VStack{
                        HStack {
                            Image(systemName: "arrow.up.right.square").foregroundColor(Color.black)
                            VStack {
                                TextField("Offering two bagels for 1 big dog", text: $emailAddress)
                                    .foregroundColor(Color.black)
                                    .textFieldStyle(.roundedBorder)
                                    .font(.title2)
                                    
                                
                                 
                            }
                        }
                    }
                    Spacer()
                    VStack{
                        HStack {
                            Image(systemName: "arrow.down.left.square").foregroundColor(Color.black)
                            VStack {
                                TextField("Receiving", text: $emailAddress).textFieldStyle(.roundedBorder).font(.title2)
                                
                            }
                            
                        }
                    }
                }
                Spacer()
                HStack{
                    VStack{
                        HStack {
                            Image("BarterBuck")
                                        .resizable()
                                        .frame(width:60, height: 60)
                                        .clipShape(Circle())
                                        .shadow(radius: 10)
                            VStack {
                                Menu("0") {
                                    Button("0", action: {print("pressed")})
                                    Button("1", action: {print("pressed")})
                                    Button("2", action: {print("pressed")})
                                    Button("3", action: {print("pressed")})
                                    Button("4", action: {print("pressed")})
                                    Button("5", action: {print("pressed")})
                                    Button("6", action: {print("pressed")})
                                    Button("7", action: {print("pressed")})
                                    Button("8", action: {print("pressed")})
                                    Button("9", action: {print("pressed")})
                                    
                                }
                                .font(.largeTitle)
                                .shadow(radius: 10)


                            }
                        }
                    }.padding(20)
                    
                    VStack{
                        HStack {
                            Image("BarterBuck")
                                        .resizable()
                                        .frame(width:60, height: 60)
                                        .clipShape(Circle())
                                        .shadow(radius: 10)
                            VStack {
                                Menu("0") {
                                    Button("0", action: {print("pressed")})
                                    Button("1", action: {print("pressed")})
                                    Button("2", action: {print("pressed")})
                                    Button("3", action: {print("pressed")})
                                    Button("4", action: {print("pressed")})
                                    Button("5", action: {print("pressed")})
                                    Button("6", action: {print("pressed")})
                                    Button("7", action: {print("pressed")})
                                    Button("8", action: {print("pressed")})
                                    Button("9", action: {print("pressed")})
                                    
                                        }.font(.largeTitle)

                                
                            }
                        }
                    }.padding(20)
                }
                
            }
            Spacer()
            NavigationLink(destination: BarterInitiated()) {
                RoundedRectangle(cornerRadius: 20)
                            .fill(Color("CremeBrulee"))
                            .overlay(Text("Initiate Barter")).foregroundColor(Color.black)
                            .frame(width: 190, height: 50, alignment: .trailing)
            }
            .padding(20)
            .shadow(radius: 10)

            
            
        }.padding(15)
    }
}

struct InputOffer_Previews: PreviewProvider {
    static var previews: some View {
        InputOffer()
    }
}
