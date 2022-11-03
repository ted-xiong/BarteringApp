//
//  ChatPage.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 10/14/22.
//

import SwiftUI

struct ChatPage: View {
    var body: some View {
        NavigationView {
        VStack {
            ZStack (alignment: .leading){
                Rectangle()
                    .fill(Color.white)
                    .shadow(radius: 5)
                    .frame(width: .infinity, height: 50, alignment: .center)
                HStack {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 24.0))
                    Image("Charlese")
                        .resizable()
                        .frame(width: 45, height: 45)
                        .clipShape(Circle())
                    VStack {
                        Text("Charlese")
                        Text("Online").foregroundColor(Color("Turquoise"))
                    }
                }
            }
            HStack {
                Spacer()
            ZStack (alignment: .leading){
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("Turquoise"))
                Text("Hi Charlese! Would you like to trade a catering order every week for some window cleaning? :)")
                    .padding()
            }.frame(width: 300, height: 100)
            }.padding(5)
            HStack {
                ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("Bread"))
                Text("Sure! How much are you willing to trade?").padding()
            }.frame(width: 275, height: 75)
                Spacer()
            }
            HStack {
                Spacer()
                ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("Turquoise"))
                Text("I can give about 15 cafe items!")
            }.frame(width: 275, height: 50)
            }
            HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("Bread"))
                Text("Hmmm. How about 20?")
            }.frame(width: 200, height: 50)
                Spacer()
            }
            HStack {
                Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("Turquoise"))
                Text("Maybe for cleanings twice a week?").padding()
            }.frame(width: 300, height: 50)
            }
            HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("Bread"))
                Text("That's a deal!")
            }.frame(width: 150, height: 50)
                Spacer()
                NavigationLink(destination: BarterInitiated()) {
                    Image("InitiateBarter")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .clipShape(Circle())
                        .shadow(color: .yellow, radius: 10)
                                }
            }
            HStack {
                Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color("Turquoise"))
                Text("Let's initiate this barter!").padding()
            }.frame(width: 225, height: 50)
            }

            ZStack {
                Rectangle()
                    .fill(Color.white)
                    .shadow(radius: 5)
                    .frame(width: .infinity, height: 60, alignment: .center)
//                ZStack {
                    HStack {
                            Image(systemName: "paperclip")
                                .font(.system(size: 24.0))
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color("Gray"))
                    .padding(5)
                    .overlay(Text("Type your message..."))
                    .frame(width: .infinity, height: 50, alignment: .center)
                RoundedRectangle(cornerRadius: 15)
                            .fill(Color("Turquoise"))
                            .overlay(Text("Send")).foregroundColor(Color.white)
                            .frame(width: 100, height: 50, alignment: .trailing)
                    }
//                }
            }

        }
        .navigationBarHidden(true)
        }
    }
}

struct ChatPage_Previews: PreviewProvider {
    static var previews: some View {
        ChatPage()
    }
}
