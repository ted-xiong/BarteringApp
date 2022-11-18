//
//  BarterSpecializedServices.swift
//  BarterApp
//
//  Created by Karan Peo on 9/12/22.
//

import SwiftUI

struct BarterSpecializedServices: View {
    
    let data: [String] = ["The Restoration Station", "Monsters Inc.", "Joe's Exotics", "iFix it", "Timmy's Barbershop", "Amour Salon", "Green Concepts LTD.", "RAW Personal Trainers", "Walt Disney", "iBreak it", "Bob's Bikeshop", "Toys 4 Us", "Good Buy", "Mediocre Market"]
    
    var body: some View {
        NavigationView{
            VStack{
                Rectangle()
                    .fill(Color("custom cyan"))
                    .frame(width: 800, height: 250)
                    .position(x: 0, y: 0)
                    .overlay(Text("Specialized\nSkills\nServices")
                        .frame(width: 100, height: 70)
                        .font(.headline)
                        .position(x: 80, y:40))
                
                Image("skills")
                    .resizable()
                    .frame(width: 200, height:150)
                    .position(x:275, y: -13)
                
                ScrollView(.vertical, showsIndicators: true, content: {
                    VStack(alignment: .center, spacing: 1, content:{
                        ForEach(data, id: \.self){ data in
                            Rectangle()
                                .fill(Color.clear)
                                .frame(width: 370, height: 70)
                                .overlay(Image(systemName: "star").position(x: 35, y: 35))
                                .overlay(NavigationLink("\(data)", destination: CompanyPage().navigationBarBackButtonHidden(true)))
                                .border(Color.gray, width: 0.25)
                        }
                    })
                }).frame(height: 520)
            }
        }
    }
}

struct BarterSpecializedServices_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BarterSpecializedServices()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
