//
//  ProfilePage.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 10/27/22.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        VStack {
            ZStack {
            Rectangle()
                .fill(Color("Bread"))
                VStack {
                    HStack {
                        Image("BarterBuck").frame(width: 40, height: 40, alignment: .leading).clipShape(Circle()).padding()
                        Image(systemName: "pencil").frame(maxWidth: .infinity, alignment: .trailing).padding()
                    }
            Image("Lady")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .shadow(color: .white, radius: 10)
                .overlay(Circle()
                .stroke(Color.yellow, lineWidth: 6))
                    
                    HStack {
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
                                Image(systemName: "filemenu.and.selection").foregroundColor(Color.gray)
                            }
                        }
                        ZStack{
                    RoundedRectangle(cornerRadius: 20)
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                .foregroundColor(Color.gray)
                                .frame(width: 111, height: 89)
                            VStack {
                                Text("Documents").foregroundColor(Color.gray).font(.body.bold())
                                Image(systemName: "filemenu.and.selection").foregroundColor(Color.gray)
                            }
                        }
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                        .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                                        .foregroundColor(Color.gray)
                                        .frame(width: 111, height: 89)
                                    VStack {
                                        Text("Documents").foregroundColor(Color.gray).font(.body.bold())
                                        Image(systemName: "filemenu.and.selection").foregroundColor(Color.gray)
                                    }
                                }
                    }.padding()
                    Divider()
                    Spacer()
                    
                }
            }
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
