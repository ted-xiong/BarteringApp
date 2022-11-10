//
//  Congratulations.swift
//  CongratulationsPage
//
//  Created by Willie Zeng on 11/9/22.
//

import SwiftUI


struct Congratulations: View {
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                Image("party")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Spacer()
                Text("It's a Deal!").font(.system(size: 50))    ;           Spacer()
                Spacer()
                Spacer()
                
                NavigationLink(destination: ChatPage().navigationBarBackButtonHidden(true)) {
                    Text("Back to chat")
                        .font(Font.custom("Nunito", size: 17))
                }.frame(maxWidth: 230, minHeight: 25)
                    .padding(10)
                    .foregroundColor(Color.white)
                    .background(Color(.systemGreen))
                    .cornerRadius(20)
                Spacer()
            }
        }
    }
}
struct Congratulations_Previews: PreviewProvider {
    static var previews: some View {
        Congratulations()
    }
}
