//
//  2fa.swift
//  BarteringApp
//
//  Created by Karan Peo on 11/3/22.
import SwiftUI

struct _fa: View {
    @State var code: String = ""
    
    var body: some View {
        VStack{
            Text("Two-Factor Authentication")
                .font(.system(size: 25))
                .position(x: 185, y:50)
                

            TextField("Enter 2FA Code:", text: $code)
                .position(x:310, y:-40)
                .font(.headline)

            
            Button(action: {
                
            }, label:{
                Text("Confirm")
                    .position(x:185, y:-200)
            })
        }
    }
}

struct _fa_Previews: PreviewProvider {
    static var previews: some View {
        _fa()
    }
}
