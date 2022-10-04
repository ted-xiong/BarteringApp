//
//  Create Account.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 9/28/22.
//

import SwiftUI

struct Create_Account: View {
    @State var username: String = ""
    @State var emailAddress: String = ""
    @State var password: String = ""
    @State var passwordConfirm: String = ""
    var body: some View {
        VStack {
            Text("Create an account").font(.largeTitle.bold())
            Spacer(minLength: 10)
            Image("Handshake")
                .resizable()
                .frame(width: 250, height: 160)
                .clipShape(Rectangle())
            Spacer(minLength: 10)
            Group{
                HStack {
                    Image(systemName: "at").foregroundColor(Color.gray)
                    VStack {
                TextField("Username", text: $username).textFieldStyle(DefaultTextFieldStyle())
                        Divider()
                         .frame(height: 1)
                         .padding(.horizontal, 30)
                         .background(Color.gray)
                    }
                }
                Spacer(minLength: 10)
                HStack {
                    Image(systemName: "at").foregroundColor(Color.gray)
                    VStack {
                TextField("Email Address", text: $emailAddress).textFieldStyle(DefaultTextFieldStyle())
                        Divider()
                         .frame(height: 1)
                         .padding(.horizontal, 30)
                         .background(Color.gray)
                    }
                }
                Spacer(minLength: 20)
                HStack {
                    Image(systemName: "lock").foregroundColor(Color.gray)
                    VStack {
                        HStack {
                TextField("Password", text: $password).textFieldStyle(DefaultTextFieldStyle())
                            Image(systemName: "eye").foregroundColor(Color.gray)
                        }
                        Divider()
                         .frame(height: 1)
                         .padding(.horizontal, 30)
                         .background(Color.gray)
                    }
                }
                Spacer(minLength: 20)
                HStack {
                    Image(systemName: "lock").foregroundColor(Color.gray)
                    VStack {
                        HStack {
                TextField("Confirm Password", text: $passwordConfirm).textFieldStyle(DefaultTextFieldStyle())
                            Image(systemName: "eye").foregroundColor(Color.gray)
                        }
                        Divider()
                         .frame(height: 1)
                         .padding(.horizontal, 30)
                         .background(Color.gray)
                    }
                }
            }
            Spacer(minLength: 20)
            
            Button (action: {print("pressed")}) {
                Text("Create")
                    .font(Font.custom("Nunito", size: 20))
            }
            .frame(maxWidth: 230, minHeight: 25)
            .padding(10)
            .foregroundColor(Color.white)
            .background(Color("Turquoise"))
            .cornerRadius(20)
            
            HStack{
                Text("Already have an account?").font(.system(size:15))
                Text("Sign in").foregroundColor(Color("Turquoise")).font(.system(size:15))
            }
        }.padding(15)
    }
}

struct Create_Account_Previews: PreviewProvider {
    static var previews: some View {
        Create_Account()
    }
}
