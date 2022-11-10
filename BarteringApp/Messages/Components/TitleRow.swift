//
//  TitleRow.swift
//  BarteringApp
//
//  Created by Fazil Raja on 11/6/22.
//

import SwiftUI

struct TitleRow: View {
    var image = Image("Charlese")
    var name = "Charlese"
    
    var body: some View {
        
            HStack(spacing: 20) {
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                 
                
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title).bold()
                    
                    Text("Online")
                        .font(.caption)
                        .foregroundColor(Color("turquoise"))
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                NavigationLink(destination: BarterInitiated()) {
                    Image("InitiateBarter")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .shadow(color: .yellow, radius: 10)
                        .padding(15)
                }
            }
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(.white)
    }
}
