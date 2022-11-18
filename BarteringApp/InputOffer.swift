//
//  VerifyBusiness.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 9/28/22.
//

import SwiftUI


struct InputOffer: View {
    @State var offer: String = ""
    @State var bucks: String = "0"
    var body: some View {
        NavigationView{
            VStack {
                Group{
                    Text("Make Your Offer").font(.largeTitle.bold())
                    
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
                                    TextField("Your Offer", text: $offer)
                                        .foregroundColor(Color.black)
                                        .textFieldStyle(.roundedBorder)
                                        .font(.largeTitle)
                                    
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
                                    Menu(bucks) {
                                        Button("0", action: {self.bucks = "0"})
                                        Button("1", action: {self.bucks = "1"})
                                        Button("2", action: {self.bucks = "2"})
                                        Button("3", action: {self.bucks = "3"})
                                        Button("4", action: {self.bucks = "4"})
                                        Button("5", action: {self.bucks = "5"})
                                        Button("6", action: {self.bucks = "6"})
                                        Button("7", action: {self.bucks = "7"})
                                        Button("8", action: {self.bucks = "8"})
                                        Button("9", action: {self.bucks = "9"})
                                        
                                    }
                                    .font(.largeTitle)
                                    .shadow(radius: 10)
                                    
                                    
                                }
                            }
                        }
                        
                    }
                    
                }
                Spacer()
                
                NavigationLink(destination: BarterInitiated2().navigationBarBackButtonHidden(true)) {
                    Text("Confirm your offer")
                        .font(Font.custom("Nunito", size: 17))
                }
                .frame(maxWidth: 230, minHeight: 25)
                .padding(10)
                .foregroundColor(Color.black)
                .background(Color("CremeBrulee"))
                .cornerRadius(20)
                Spacer()
                
                
                
            }.padding(15)
        }
    }
    
    struct InputOffer_Previews: PreviewProvider {
        static var previews: some View {
            InputOffer()
        }
    }
}
