//
//  MiscServices.swift
//  BarterApp
//
//  Created by Karan Peo on 9/26/22.
//

import SwiftUI

struct MiscServices: View {
    
    let data: [String] = ["The Restoration Station", "Monsters Inc.", "Joe's Exotics", "iFix it", "Timmy's Barbershop", "Amour Salon", "Green Concepts LTD.", "RAW Personal Trainers", "Walt Disney", "iBreak it", "Bob's Bikeshop", "Toys 4 Us", "Good Buy", "Mediocre Market"]
    
    var body: some View {
        NavigationView{
            VStack{
                Rectangle()
                    .fill(Color("custom yellow"))
                    .frame(width: 800, height: 250)
                    .position(x: 0, y: 0)
                    .overlay(Text("Miscellaneous\nServices")
                        .frame(width: 120, height: 70)
                        .font(.headline)
                        .position(x: 80, y:40))
                
                Image("misc")
                    .resizable()
                    .frame(width: 170, height:130)
                    .position(x:275, y: -13)
                
                ScrollView(.vertical, showsIndicators: true, content: {
                    VStack(alignment: .center, spacing: 1, content:{
                        ForEach(data, id: \.self){ data in
                            Rectangle()
                                .fill(Color.clear)
                                .frame(width: 370, height: 70)
                                .overlay(Image(systemName: "star").position(x: 35, y: 35))
                                .overlay(NavigationLink("\(data)", destination: CompanyPage()))
                                .border(Color.gray, width: 0.25)
                        }
                    })
                }).frame(height: 520)

            }
        }
    }
}

struct MiscServices_Previews: PreviewProvider {
    static var previews: some View {
        MiscServices()
    }
}
