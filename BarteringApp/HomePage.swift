//
//  HomePage.swift
//  NavigationBar
//
//  Created by Nima $wagaram on 9/15/22.
//

import SwiftUI


struct SecondContentView: View {
   var body: some View {
      LaborServices()
   }
}
struct FoodView: View {
   var body: some View {
      FoodServices()
   }
}
struct BusinessView: View {
   var body: some View {
      BusinessServices()
   }
}
struct MiscView: View {
   var body: some View {
      MiscServices()
   }
}
struct ProgrammingView: View {
   var body: some View {
      ProgrammingServices()
   }
}




struct Home: View{
    @State private var searchText = ""
    var body: some View{
        NavigationView {
            
            HStack(){
                VStack(){
                    NavigationLink(destination: SecondContentView()) {
                        Image("SpecialServ")
                            .resizable()
                            .frame(width: 180, height: 230)
                            .clipShape(Rectangle())
                            .shadow(color: .white, radius: 10).cornerRadius(30)
                        
                    }
                    
                    NavigationLink(destination: FoodView()) {
                        Image("FoodServ")
                            .resizable()
                            .frame(width: 180, height: 160)
                            .clipShape(Rectangle())
                            .shadow(color: .white, radius: 10).cornerRadius(30)
                    }
                    NavigationLink(destination: BusinessView()) {
                        Image("BussServ")
                            .resizable()
                            .frame(width: 180, height: 130)
                            .clipShape(Rectangle())
                            .shadow(color: .white, radius: 10).cornerRadius(30)
                    }
                }.offset(x:-4,y:80)
                    
                    VStack{
                        NavigationLink(destination: MiscView()) {
                            Image("MiscServ")
                                .resizable()
                                .frame(width: 180, height: 130)
                                .clipShape(Rectangle())
                                .shadow(color: .white, radius: 10).cornerRadius(30)
                        }
                        
                        NavigationLink(destination: SecondContentView()) {
                            Image("PhysServ")
                                .resizable()
                                .frame(width: 180, height: 220)
                                .clipShape(Rectangle())
                                .shadow(color: .white, radius: 10).cornerRadius(30)
                        }
                        NavigationLink(destination: ProgrammingView()) {
                            Image("ProgramServ")
                                .resizable()
                                .frame(width: 180, height: 170)
                                .clipShape(Rectangle())
                                .shadow(color: .white, radius: 10).cornerRadius(30)
                        }
                    }.offset(x:0,y:80)
            }.overlay(SearchBar(text: $searchText).offset(y:-230)).overlay(Text("Search").font(.system(size:44)).bold().offset(x:-110,y:-290))
            }
            
        }
    }
    struct HomePage: View {
        var body: some View {
            Home()
        }
    }
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
