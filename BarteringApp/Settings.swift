//
    //  Settings.swift
    //  BarteringApp
    //
    //  Created by Fazil Raja on 10/27/22.
    //
import SwiftUI

//struct to create the a new row in a list
struct SettingRowView : View {
    var title : String
    var systemImageName : String

    var body : some View {
        HStack (spacing : 15) {
            Image(systemName: systemImageName)
            Text (title)
        }
    }
}

struct Settings: View {

    var body: some View {
        NavigationView{
            
            VStack{
                HStack {
                    NavigationLink(destination: ProfilePage()) {
                        Image(systemName: "chevron.left")
                    }
                    Text("Settings").font(.title).bold()
                }
                
                List {
                    NavigationLink(destination: EmptyView(), label: {
                                 SettingRowView(title: "General",
                                 systemImageName: "gear")
                              })
                    NavigationLink(destination: EmptyView(), label: {
                                 SettingRowView(title: "Notifications",
                                 systemImageName: "bell")
                              })
                    NavigationLink(destination: EmptyView(), label: {
                                 SettingRowView(title: "Security",
                                 systemImageName: "lock")
                              })
                    NavigationLink(destination: EmptyView(), label: {
                                 SettingRowView(title: "Privacy Policy",
                                 systemImageName: "shield")
                              })
                    NavigationLink(destination: EmptyView(), label: {
                                 SettingRowView(title: "Support",
                                 systemImageName: "person.fill.questionmark")
                              })
                    NavigationLink(destination: EmptyView(), label: {
                                 SettingRowView(title: "Two-Factor Authentication",
                                 systemImageName: "lock.circle")
                              })
                }


                Button(action:{print("Log out")}){
                            SettingRowView(title: "Sign out", systemImageName: "rectangle.portrait.and.arrow.right")
                                .foregroundColor(.black)
                                .padding(10)
                                .background(Color.red)
                                .cornerRadius(10)
                }
                .frame(maxWidth: .infinity)

            }//.navigationTitle("Settings")
        }
    }

    struct Settings_Previews: PreviewProvider {
        static var previews: some View {
            Settings()
        }
    }
}
