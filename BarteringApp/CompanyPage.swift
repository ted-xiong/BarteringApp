//
//  CompanyPage.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 9/12/22.
//

import SwiftUI

struct CompanyPage: View {
    var body: some View {
        NavigationView {
        VStack {
            ZStack {
                Rectangle()
                    .fill(Color("turquoise"))
                VStack (alignment: .leading) {
                    HStack {
                        Image("DesignLogo")
                            .resizable()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .shadow(color: .white, radius: 10)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .contentShape(Circle())
                    .onTapGesture {
                        print("Show details for user")
                    }
                    Text("The Restoration Station").font(.headline.bold()).padding().fixedSize(horizontal: false, vertical: true)
                }
            }
            VStack  (alignment: .leading) {
                HStack {
                    VStack {
                        Text("Welcome to The Restoration Station! We look forward to bartering with you.")
                            .font(.caption)
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(2)
                    }
                }
                Divider()
                HStack {
                    Image(systemName: "building.2")
                    VStack (alignment: .leading) {
                        Text("Age of Company").font(.caption)
                        Text("31 Years").font(.body.bold())
                    }
                }.padding(2)
                Divider()
                HStack {
                    Image(systemName: "building.2")
                    VStack(alignment: .leading) {
                        Text("Age of Barter Shop").font(.caption)
                        Text("5 Years").font(.body.bold())
                    }
                }.padding(2)
                Divider()
                HStack {
                    Image(systemName: "map")
                    VStack (alignment: .leading){
                        Text("From").font(.caption)
                        Text("1904 W. Cornelia Ave").font(.body.bold())
                    }
                }.padding(2)
                Divider()
                HStack {
                    Image(systemName: "clock")
                    VStack (alignment: .leading){
                        Text("Business Hours").font(.caption)
                        Text("8am - 9pm").font(.body.bold())
                    }.padding(2)
                }.padding(2)
                HStack {
                    Spacer()
                Button (action: {print("whatever")}) {
                    Image(systemName: "play.rectangle")
                    Text("Meet the Barterer")
                        .font(Font.custom("Nunito", size: 18))
                }
                .padding(10)
                .foregroundColor(Color.black)
                .background(Color("CremeBrulee"))
                .cornerRadius(10)
                    Spacer()
                }
            }.padding()
            ZStack {
            Rectangle()
                .fill(Color.white)
                .shadow(radius: 5)
                HStack (alignment: .center) {
                    VStack (alignment: .leading){
                        Text("Tier 2").padding(2)
                        HStack {
                            Image(systemName: "star.fill").font(.system(size: 10)).foregroundColor(Color.orange)
                        Image(systemName: "star.fill").font(.system(size: 10)).foregroundColor(Color.orange)
                        Image(systemName: "star.fill").font(.system(size: 10)).foregroundColor(Color.orange)
                        Image(systemName: "star.fill").font(.system(size: 10)).foregroundColor(Color.orange)
                        Image(systemName: "star.fill").font(.system(size: 10)).foregroundColor(Color.orange)
                        Text("5.0").font(.system(size: 10)).foregroundColor(Color.orange)
                        }
                    }
                    Spacer()
                    NavigationLink(destination: MessageView().navigationBarBackButtonHidden(true)) {
                        RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("turquoise"))
                                    .overlay(Text("Chat Now")).foregroundColor(Color.white)
                                    .frame(width: 100, height: 50, alignment: .trailing)
                                    }
//                Button (action: {print("whatever")}) {
//                    Text("Chat Now")
//                        .font(Font.custom("Nunito", size: 20))
//                        .padding(15)
//                        .foregroundColor(Color.white)
//                        .background(Color("Turquoise"))
//                        .cornerRadius(10)
//                }
                }.padding()
            }
        }.navigationTitle("")
        .navigationBarHidden(true)
    }
    }
}

struct CompanyPage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CompanyPage()
        }
    }
}
