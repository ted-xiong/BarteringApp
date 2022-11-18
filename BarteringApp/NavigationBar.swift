//
//  ContentView.swift
//  NavigationBar
//
//  Created by Nima $wagaram on 9/15/22.
//

import SwiftUI

struct HomeView: View {
    /*private var tagSearch = [ tagData(name: "Windows"),
                                 tagData(name: "Cleaning"),
                                 tagData(name: "Build"),
                                 tagData(name: "Design"),
                                 tagData(name: "DayCare")
                                   ]
       @State private var searchText = ""*/
    var body: some View{
        NavigationView{
            ZStack{
                Color.white
                HomePage()
            }
            }
    }
}
struct ExploreView: View {
    var body: some View{
        NavigationView{
            ZStack{
                Color.white
                Text("Interests").bold().font(.system(size: 34)).offset(x:-115,y:65)
                Text("Discuss").bold().font(.system(size: 34)).offset(x:-121,y:-180)
                ExplorePage()
            }
            .navigationTitle("Explore").font(.system(size:40)).navigationBarItems( trailing: Button(action: {
                print("Button Pressed")
                
            }){
                Image(systemName: "ellipsis.bubble")
                Image(systemName: "bell.badge")
            })
            
            }
        
            
        
        }
    }

struct InfoView: View {
    var body: some View{
        NavigationView{
            ZStack{
                Color.white
                Link(destination: URL(string: "https://www.canva.com/design/DAFRhlUgUm8/pWJM_4ukbBsVDbuY4HyXRQ/view?utm_content=DAFRhlUgUm8&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink")!) {
                    Image(systemName: "person.fill.questionmark")
                }
            }
            .navigationTitle("Help")
        }
    }
}

struct BarterView: View {
    var body: some View{
        NavigationView{
                ZStack{
                    Color.white
                    //here
                }
                .navigationTitle("Barterers Near You")
        }
    }
}
struct ProfileView: View {
    var body: some View{
        NavigationView{
            ZStack{
                Color.white
                ProfilePage()
            }
            .navigationTitle("")
        }
    }
}

struct NavigationBar: View {
    var body: some View {
        
        TabView{
            
            ExploreView().tabItem{
                Image(systemName: "globe.europe.africa.fill")
                Text("Explore")
            }
            HomeView().tabItem{
                Image(systemName: "magnifyingglass.circle.fill")
                Text("Search")
            }
            BarterView().tabItem{
                Image(systemName: "bubble.left.and.bubble.right.fill")
                Text("Barter Board")
            }
            ProfileView().tabItem{
                Image(systemName: "person.fill")
                Text("Profile")
            }
            
            InfoView().tabItem{
                NavigationView{
                        Image(systemName: "person.fill.questionmark")
                            .font(.largeTitle)
                        Text("Help")
                }
            }
        }
    }
}

struct SearchB: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}

