//
//  ProfilePage.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 10/27/22.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        NavigationView {
        VStack {
            ZStack {
            Rectangle()
                .fill(Color("Bread"))
                VStack {
                    HStack {
                        Image("Coin").resizable().frame(width: 30, height: 30, alignment: .leading).clipShape(Circle()).padding(.leading)
                        Text("20").foregroundColor(Color.orange).bold()
                        Spacer()
                        NavigationLink(destination: Settings().navigationBarBackButtonHidden(true)) {
                        Image("Setting").resizable().frame(width: 30, height: 30, alignment: .trailing).padding()
                        }
                    }
            Image("Lady")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(color: .white, radius: 10)
                .overlay(Circle()
                .stroke(Color.yellow, lineWidth: 6))
                
                    HStack {
                        Image(systemName: "checkmark.seal.fill")
                        Text("Kho Fee").font(.title2.bold())
            Image(systemName: "pencil")
                    }
                    Text("Member since May 2021").font(.system(size: 12))
                    HStack {
                        Image(systemName: "star.fill").font(.system(size: 8)).foregroundColor(Color.orange)
                    Image(systemName: "star.fill").font(.system(size: 8)).foregroundColor(Color.orange)
                    Image(systemName: "star.fill").font(.system(size: 8)).foregroundColor(Color.orange)
                    Image(systemName: "star.fill").font(.system(size: 8)).foregroundColor(Color.orange)
                    Image(systemName: "star.fill").font(.system(size: 8)).foregroundColor(Color.orange)
                    Text("5.0").font(.system(size: 8)).foregroundColor(Color.orange)
                    }
                    HStack {
                        VStack {
                        Text("Business Name").font(.system(size: 12)).foregroundColor(Color.gray)
                        Text("Sooner Cafe").font(.body.bold())
                        }
                        Divider().frame(height: 40)
                        VStack {
                        Text("Contract Number").font(.system(size: 12)).foregroundColor(Color.gray)
                        Text("1234 5678 9100").font(.body.bold())
                        }
                    }.padding()
                }
            }
            ZStack {
            Rectangle()
                .fill(Color.white)
                VStack {
                    Text("Upload Document").font(.body.bold()).frame(maxWidth: .infinity, alignment: .topLeading).padding()
                    HStack {
                        ZStack{
                    RoundedRectangle(cornerRadius: 20)
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                .foregroundColor(Color.gray)
                                .frame(width: 111, height: 89)
                            VStack {
                                Text("Documents").foregroundColor(Color.gray).font(.body.bold())
                                Image(systemName: "newspaper").foregroundColor(Color.gray)
                            }
                        }
                        ZStack{
                    RoundedRectangle(cornerRadius: 20)
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                .foregroundColor(Color.gray)
                                .frame(width: 111, height: 89)
                            VStack {
                                Text("Degrees").foregroundColor(Color.gray).font(.body.bold())
                                Image(systemName: "graduationcap").foregroundColor(Color.gray)
                            }
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                        .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                        .foregroundColor(Color.gray)
                                        .frame(width: 111, height: 89)
                                    VStack {
                                        Text("Licenses").foregroundColor(Color.gray).font(.body.bold())
                                        Image(systemName: "paperclip").foregroundColor(Color.gray)
                                    }
                                }
                    }.padding()
                    Divider()
                    VStack (alignment: .leading) {
                        Text("Upload Videos").font(.body.bold()).frame(maxWidth: .infinity, alignment: .topLeading).padding()
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                        .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                        .foregroundColor(Color.gray)
                                        .frame(width: 111, height: 89)
                                    VStack {
                                        Text("Profile Video").foregroundColor(Color.gray).font(.body.bold())
                                        Image(systemName: "video.badge.plus").foregroundColor(Color.gray)
                                    }
                        }.padding(.leading)
                    }
                    Spacer()
                    
                }
            }
        }.navigationBarHidden(true)
    }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
