//
//  VerifyBusiness.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 9/28/22.
//

import SwiftUI

struct VerifyBusiness: View {
    
    @State var username: String = ""
    @State var emailAddress: String = ""
    @State var password: String = ""
    @State var passwordConfirm: String = ""
    var body: some View {
        VStack {
            Text("Verify your business").font(.largeTitle.bold())
            Spacer(minLength: 40)
            Group{
                Group{
                    HStack {
                        Image(systemName: "person").foregroundColor(Color.gray)
                        VStack {
                    TextField("First Name", text: $username).textFieldStyle(DefaultTextFieldStyle())
                            Divider()
                             .frame(height: 1)
                             .padding(.horizontal, 30)
                             .background(Color.gray)
                        }
                    }

                }
                Group{
                    Spacer(minLength: 20)
                    HStack {
                        Image(systemName: "person").foregroundColor(Color.gray)
                        VStack {
                    TextField("Last Name", text: $emailAddress).textFieldStyle(DefaultTextFieldStyle())
                            Divider()
                             .frame(height: 1)
                             .padding(.horizontal, 30)
                             .background(Color.gray)
                        }
                    }
                }
                
                Group{
                    Spacer(minLength: 20)
                    HStack {
                        Image(systemName: "building.2").foregroundColor(Color.gray)
                        VStack {
                            HStack {
                    TextField("Name of business", text: $password).textFieldStyle(DefaultTextFieldStyle())
                            }
                            Divider()
                             .frame(height: 1)
                             .padding(.horizontal, 30)
                             .background(Color.gray)
                        }
                    }
                }
                Group{
                    Spacer(minLength: 20)
                    HStack {
                        Image(systemName: "house").foregroundColor(Color.gray)
                        VStack {
                            HStack {
                    TextField("Address", text: $passwordConfirm).textFieldStyle(DefaultTextFieldStyle())
                            }
                            Divider()
                             .frame(height: 1)
                             .padding(.horizontal, 30)
                             .background(Color.gray)
                        }
                    }
                }
                Group{
                    Spacer(minLength: 20)
                    HStack {
                        Image(systemName: "square.fill.text.grid.1x2").foregroundColor(Color.gray)
                        VStack {
                            HStack {
                    TextField("Services Provided", text: $passwordConfirm).textFieldStyle(DefaultTextFieldStyle())
                            }
                            Divider()
                             .frame(height: 1)
                             .padding(.horizontal, 30)
                             .background(Color.gray)
                        }
                    }
                }
                Group{
                    Spacer(minLength: 20)
                    HStack {
                        Image(systemName: "number.square").foregroundColor(Color.gray)
                        VStack {
                            HStack {
                    TextField("EIN Number", text: $passwordConfirm).textFieldStyle(DefaultTextFieldStyle())
                            }
                            Divider()
                             .frame(height: 1)
                             .padding(.horizontal, 30)
                             .background(Color.gray)
                        }
                    }
                }
            }
            Spacer(minLength: 20)
            Button (action: {print("pressed")}) {
                Text("Upload Documents")
                    .font(Font.custom("Nunito", size: 20))
            }
            .frame(maxWidth: 230, minHeight: 25)
            .padding(10)
            .foregroundColor(Color.white)
            .background(Color("turquoise"))
            .cornerRadius(20)
            
        }.padding(15)
    }
}

struct VerifyBusiness_Previews: PreviewProvider {
    static var previews: some View {
        VerifyBusiness()
    }
}

