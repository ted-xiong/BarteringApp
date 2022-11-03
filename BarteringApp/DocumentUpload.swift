//
//  DocumentUpload.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 10/12/22.
//

import SwiftUI

    
struct DocumentUpload: View {

    var body: some View {
        VStack {
            
            Text("Optional File Upload").multilineTextAlignment(.center).font(.title.bold())
            Spacer(minLength: 10)
            VStack{
                Text(" • Articles of incorporation").multilineTextAlignment(.leading).foregroundColor(Color.gray).frame(maxWidth: .infinity, alignment: .leading)
                Text(" • Business bank statement").multilineTextAlignment(.leading).foregroundColor(Color.gray).frame(maxWidth: .infinity, alignment: .leading)
                Text(" • Business license").multilineTextAlignment(.leading).foregroundColor(Color.gray).frame(maxWidth: .infinity, alignment: .leading)
                Text(" • IRS SS-4").multilineTextAlignment(.leading).foregroundColor(Color.gray).frame(maxWidth: .infinity, alignment: .leading)
                Text(" • IRS 147c").multilineTextAlignment(.leading).foregroundColor(Color.gray).frame(maxWidth: .infinity, alignment: .leading)
                Text(" • Taxpayer identification number").multilineTextAlignment(.leading).foregroundColor(Color.gray).frame(maxWidth: .infinity, alignment: .leading)
            }.padding(15)
            Spacer(minLength: 10)
            NavigationLink(destination: CompanyPage()){
                Button (action: {print("pressed")}) {
                    VStack{
                        Text("Upload Documents")
                            .font(Font.custom("Nunito", size: 20))
                        Image(systemName: "square.and.arrow.up.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                }
            }
            
            
            .frame(maxWidth: 250, minHeight: 150)
            .padding(10)
            .foregroundColor(Color.black.opacity(0.5))
            .background(Color.gray.opacity(0.25))
            .border(Color.gray, width: 2)
            .cornerRadius(20)
            Spacer(minLength: 10)
                    
            
            Button (action: {print("pressed")}) {
                Text("Skip")
                    .font(Font.custom("Nunito", size: 20))
            }
            .frame(maxWidth: 230, minHeight: 25)
            .padding(10)
            .foregroundColor(Color.white)
            .background(Color("Turquoise"))
            .cornerRadius(20)
            
            

        }.padding(15)
    }
}

struct DocumentUpload_Previews: PreviewProvider {
    static var previews: some View {
        DocumentUpload()
    }
}
