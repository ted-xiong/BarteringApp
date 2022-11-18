//
//  BarterInitiated2.swift
//  BarteringApp
//
//  Created by Willie Zeng on 11/6/22.
//

import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct BarterInitiated2: View {
    var body: some View {
        NavigationView{
            VStack {
                
                Spacer()
                ZStack{
                    Color("Bread").ignoresSafeArea()
                    VStack{
                        Text("You've initiated a barter!").padding().foregroundColor(Color("turquoise"))
                            .font(.title)
                        Spacer()
                        HStack{
                            ZStack{
                                Rectangle().fill(Color("turquoise")).frame(width: 130, height: 90, alignment: .center).cornerRadius(30, corners: [.topRight, .bottomRight])
                                Image("Phoebe")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                                    .shadow(radius: 10)
                                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                            }
                            Spacer()
                            ZStack{
                                Rectangle().fill(Color("Salmon")).frame(width: 130, height: 90, alignment: .center).cornerRadius(30, corners: [.topLeft, .bottomLeft])
                                Image("Andrew")
                                    .resizable()
                                    .frame(width:70, height: 70)
                                    .clipShape(Circle())
                                    .shadow(radius: 10)
                                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                            }
                        }
                        Spacer()
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        ZStack{
                            Circle().fill(Color("CremeBrulee")).frame(width: 35, height: 35)
                            Image(systemName: "cup.and.saucer")
                        }
                        Image("InitiateBarter").resizable()
                            .frame(width: 90, height: 90)
                        
                        ZStack{
                            Circle().fill(Color("turquoise")).frame(width: 35, height: 35)
                            Image(systemName: "cup.and.saucer")
                        }
                        Spacer()
                    }
                    
                }
                .frame(maxWidth: 390, maxHeight: 250)
                
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .strokeBorder(Color("turquoise"), lineWidth: 1)
                        .background(RoundedRectangle(cornerRadius: 25, style: .continuous).fill(Color.white))
                        .frame(width: 370, height: 90)
                    HStack{
                        VStack{
                            Text("Offering").font(.system(size:11)).foregroundColor(Color("turquoise"))
                            Text("Catering").font(.system(size:12))
                        }
                        Spacer()
                        Divider()
                        Spacer()
                        VStack{
                            Text("For").font(.system(size:11)).foregroundColor(Color("turquoise"))
                            
                            Text("Window Cleaning").font(.system(size:12))
                        }
                        
                        Divider()
                        Spacer()
                        VStack{
                            Text("When").font(.system(size:11)).foregroundColor(Color("turquoise"))
                            Text("Fridays, 12pm").font(.system(size:12))
                        }
                    }.frame(width: 270, height: 60)
                    
                }.frame(width: 320, height: 100)
                Spacer()
                Text("We will follow up with both parties to make sure the deal has followed through! Thank you for using The Barter Shop.").font(.caption).padding()
                Spacer()
                HStack{
                    Spacer()
                    NavigationLink(destination: MessageView().navigationBarBackButtonHidden(true)) {
                        Text("Deny")
                            .font(Font.custom("Nunito", size: 17))
                    }
                    .frame(maxWidth: .infinity, minHeight: 25)
                    .padding(10)
                    .foregroundColor(Color.white)
                    .background(Color(.systemRed))
                    .cornerRadius(20)
                    Spacer()
                    NavigationLink(destination: NavigationBar().navigationBarBackButtonHidden(true)) {
                        Text("Accept")
                            .font(Font.custom("Nunito", size: 17))
                    }.frame(maxWidth: .infinity, minHeight: 25)
                        .padding(10)
                        .foregroundColor(Color.white)
                        .background(Color(.systemGreen))
                        .cornerRadius(20)
                    Spacer()
                    
                }
                Spacer()
            }
        }
    }
    
    struct BarterInitiated_Previews2: PreviewProvider {
        static var previews: some View {
            BarterInitiated2()
        }
    }
}
