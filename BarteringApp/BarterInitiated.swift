//
//  BarterInitiated.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 9/12/22.
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

struct BarterInitiated: View {
    var body: some View {
        VStack {
            HStack (alignment: .center){

                Text("You have initated a barter")
                    .padding()
                    .multilineTextAlignment(.center)
                    .font(.headline)
                
            }
            ZStack{
                Color("Bread").ignoresSafeArea()
                
                HStack{
                    Rectangle().fill(Color("Turquoise")).frame(width: 130, height: 90, alignment: .center).cornerRadius(30, corners: [.topRight, .bottomRight])
                    Spacer()
                    Rectangle().fill(Color("Salmon")).frame(width: 130, height: 90, alignment: .center).cornerRadius(30, corners: [.topLeft, .bottomLeft])
                }
                
                VStack (alignment:.center){
                    Text("We have a deal!").padding().font(.system(size:15)).foregroundColor(Color("Turquoise"))
                    Spacer()
                    HStack{
                        Circle().fill(Color("CremeBrulee")).frame(width: 35, height: 35)
                        Spacer()
                        Circle().fill(Color("Turquoise")).frame(width: 35, height: 35)
                    }.frame(width: 80)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                
                VStack (alignment:.center){
                    
                    Spacer()
                    Spacer()
                    HStack{
                        Image(systemName: "cup.and.saucer")
                        Spacer()
                        Image(systemName: "gamecontroller")
                    }.frame(width: 73.5)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()

                }.position(x: 160, y: 112)
                
                HStack{
                    Spacer()
                    Image("Phoebe")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    Spacer()
                    Spacer()
                    Image("Andrew")
                                .resizable()
                                .frame(width:70, height: 70)
                                .clipShape(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    Spacer()
                    
                }
                
            }.frame(width:320, height: 200)
            
            ZStack{
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .strokeBorder(Color("Turquoise"), lineWidth: 1)
                                .background(RoundedRectangle(cornerRadius: 25, style: .continuous).fill(Color.white))
                                .frame(width: 280, height: 90)
                HStack{
                    VStack{
                        Text("Offering").font(.system(size:11)).foregroundColor(Color("Turquoise"))
                        Text("Cookies").font(.system(size:15))
                    }
                    
                    Divider()
                    
                    VStack{
                        Text("For").font(.system(size:11)).foregroundColor(Color("Turquoise"))
            
                        Text("Repair Services").font(.system(size:15))
                    }
                    
                    Divider()
                    
                    VStack{
                        Text("When").font(.system(size:11)).foregroundColor(Color("Turquoise"))
                        Text("4:21 pm").font(.system(size:15))
                    }
                }.frame(width: 270, height: 60)
                                
            }.frame(width: 320, height: 100)
            
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus mollis fringilla turpis, vel gravida nulla fermentum a. Maecenas eget volutpat arcu. Ut auctor nulla ac auctor dictum. Morbi aliquet ac diam cursus bibendum. Morbi viverra massa a nulla fermentum elementum.").font(.system(size:11)).padding()
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 25, style: .continuous).fill(Color("Turquoise")).frame(width: 200, height: 40).position(x: 163, y: 30)
                Text("Back To Chat").font(.system(size:15)).position(x: 163, y: 30).foregroundColor(.white)
            }
        }
    }
}

struct BarterInitiated_Previews: PreviewProvider {
    static var previews: some View {
        BarterInitiated()
    }
}
