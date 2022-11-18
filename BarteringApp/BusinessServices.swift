//
//  BusinessServices.swift
//  BarterApp
//
//  Created by Karan Peo on 9/26/22.
//

import SwiftUI

struct BusinessServices: View {
    
    let data: [String] = ["The Restoration Station", "Monsters Inc.", "Joe's Exotics", "iFix it", "Timmy's Barbershop", "Amour Salon", "Green Concepts LTD.", "RAW Personal Trainers", "Walt Disney", "iBreak it", "Bob's Bikeshop", "Toys 4 Us", "Good Buy", "Mediocre Market"]
    
    var body: some View {
        NavigationView{
            VStack{
                Rectangle()
                    .fill(Color("custom salmon"))
                    .position(x:200, y:45)
                    .frame(width:400, height:130, alignment: .topTrailing)
                    .overlay(Text("Business \nServices")
                        .font(.headline)
                        .position(x:70, y:40))
                    .overlay(
                        Image("business")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width:150, height:140)
                        .position(x:320, y:40))
                
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
                })
            }
        }
        .navigationTitle("Business Services")
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct BusinessServices_Previews: PreviewProvider {
    static var previews: some View {
        BusinessServices()
    }
}
