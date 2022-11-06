//
//  LoginPage.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 9/23/22.
//

import SwiftUI

struct LoginPage: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView {
        VStack {
            Text("The Barter Shop").font(.largeTitle.bold())
            Spacer(minLength: 10)
            Image("TheBarterShop")
                .resizable()
                .frame(width: 259, height: 212)
                .clipShape(Rectangle())
            Spacer(minLength: 40)
            Group {
            HStack {
                Image(systemName: "at").foregroundColor(Color.gray)
                VStack {
            TextField("Email ID", text: $username).textFieldStyle(DefaultTextFieldStyle())
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
            Text("forget password?")
                .multilineTextAlignment(.trailing)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .foregroundColor(Color("Turquoise")).font(.callout.bold())
                NavigationLink(destination: Settings().navigationBarBackButtonHidden(true)) {
                    //COME BACK AND CHANGE THIS LATER!!!!
                Text("Login")
                    .font(Font.custom("Nunito", size: 17))
            }
            .frame(maxWidth: .infinity, minHeight: 25)
            .padding(10)
            .foregroundColor(Color.white)
            .background(Color("Turquoise"))
            .cornerRadius(20)
            }
            HStack {
                VStack { Divider().background(Color.gray) }.padding(10)
                Text("OR").foregroundColor(Color.gray)
                VStack { Divider().background(Color.gray) }.padding(10)
                    }
            HStack {
                Button (action: {print("whatever")}) {
                    Image("Tiktok")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2))
                        .cornerRadius(10)
                }
                Button (action: {print("whatever")}) {
                    Image("Twitter")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2))
                        .cornerRadius(10)
                }
                Button (action: {print("whatever")}) {
                    Image("Facebook")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2))
                        .cornerRadius(10)
                }
                Button (action: {print("whatever")}) {
                    Image("Instagram")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2))
                        .cornerRadius(10)
                }
                Button (action: {print("whatever")}) {
                    Image("LinkedIn")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2))
                        .cornerRadius(10)
                }
            }
            Spacer()
            HStack {
                Text("Don't have an account?").foregroundColor(Color(.black)).font(.callout.bold())
                NavigationLink(destination: Create_Account().navigationBarBackButtonHidden(true)) {
                Text("Sign Up").foregroundColor(Color("Turquoise")).font(.callout.bold())
                }
            }
            Spacer()
        }.padding(15).navigationBarHidden(true)
    }
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}

struct LabelledDivider: View {

    let label: String
    let horizontalPadding: CGFloat
    let color: Color

    init(label: String, horizontalPadding: CGFloat = 20, color: Color = .gray) {
        self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }

    var body: some View {
        HStack {
            line
            Text(label).foregroundColor(color)
            line
        }
    }

    var line: some View {
        VStack { Divider().background(color) }.padding(horizontalPadding)
    }
}
