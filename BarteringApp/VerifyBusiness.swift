//
//  VerifyBusiness.swift
//  BarteringApp
//
//  Created by Tina Nguyen on 9/28/22.
//

import SwiftUI

struct VerifyBusiness: View {
    
    @State var username: String = ""
    @State var emailAddress: String = ""
    @State var password: String = ""
    @State var passwordConfirm: String = ""
    @State var showSheet: Bool = false
    var body: some View {
        NavigationView{
            VStack {
                Text("Verify your business").font(.largeTitle.bold())
                Spacer(minLength: 40)
                Group{
                    Group{
                        HStack {
                            Image(systemName: "person").foregroundColor(Color.gray)
                            VStack {
                                TextField("First Name", text: $username).textFieldStyle(DefaultTextFieldStyle())
                                Divider()
                                    .frame(height: 1)
                                    .padding(.horizontal, 30)
                                    .background(Color.gray)
                            }
                        }
                        
                    }
                    Group{
                        Spacer(minLength: 20)
                        HStack {
                            Image(systemName: "person").foregroundColor(Color.gray)
                            VStack {
                                TextField("Last Name", text: $emailAddress).textFieldStyle(DefaultTextFieldStyle())
                                Divider()
                                    .frame(height: 1)
                                    .padding(.horizontal, 30)
                                    .background(Color.gray)
                            }
                        }
                    }
                    
                    Group{
                        Spacer(minLength: 20)
                        HStack {
                            Image(systemName: "building.2").foregroundColor(Color.gray)
                            VStack {
                                HStack {
                                    TextField("Name of business", text: $password).textFieldStyle(DefaultTextFieldStyle())
                                }
                                Divider()
                                    .frame(height: 1)
                                    .padding(.horizontal, 30)
                                    .background(Color.gray)
                            }
                        }
                    }
                    Group{
                        Spacer(minLength: 20)
                        HStack {
                            Image(systemName: "house").foregroundColor(Color.gray)
                            VStack {
                                HStack {
                                    TextField("Address", text: $passwordConfirm).textFieldStyle(DefaultTextFieldStyle())
                                }
                                Divider()
                                    .frame(height: 1)
                                    .padding(.horizontal, 30)
                                    .background(Color.gray)
                            }
                        }
                    }
                    Group{
                        Spacer(minLength: 20)
                        Button(action: {
                            showSheet.toggle()
                        }, label: {
                            Text("Services")
                                .foregroundColor(.white)
                                .font(.headline)
                                .background(Color.gray.cornerRadius(3))
                                .padding(30)
                                .frame(width: 350, height: 50, alignment: .leading)
                        })
                        .sheet(isPresented: $showSheet, content: {
                            SecondScreen()
                        })
                    }
                    Group{
                        Spacer(minLength: 20)
                        HStack {
                            Image(systemName: "number.square").foregroundColor(Color.gray)
                            VStack {
                                HStack {
                                    TextField("EIN Number", text: $passwordConfirm).textFieldStyle(DefaultTextFieldStyle())
                                }
                                Divider()
                                    .frame(height: 1)
                                    .padding(.horizontal, 30)
                                    .background(Color.gray)
                            }
                        }
                    }
                }
                Spacer(minLength: 20)
                NavigationLink(destination: DocumentUpload().navigationBarBackButtonHidden(true)) {
                    Text("Upload Documents")
                        .font(Font.custom("Nunito", size: 17))
                }
                .frame(maxWidth: 230, minHeight: 25)
                .padding(10)
                .foregroundColor(Color.white)
                .background(Color("Turquoise"))
                .cornerRadius(20)
                .padding(10)
                
            }.padding(15)
        }
    }
}
struct SecondScreen: View{
    
    var body: some View{
        Text("Type of Service")
            .frame(width:200, height:100, alignment: .top)
            .padding(10)
        
        VStack{
            Button(action: {
                
            }, label: {
                Text("Miscellaneous Services")
            })
            .padding(20)
            Button(action: {
                
            }, label: {
                Text("Physical Labor Services")
            })
            .padding(20)
            Button(action: {
                
            }, label: {
                Text("Food and Hospitality Services")
            })
            .padding(20)
            Button(action: {
                
            }, label: {
                Text("Programming Services")
            })
            .padding(20)
            Button(action: {
                
            }, label: {
                Text("Business Services")
            })
            .padding(20)
        }
        .frame(width:300, height:450, alignment: .top)
    }
}

struct VerifyBusiness_Previews: PreviewProvider {
    static var previews: some View {
        VerifyBusiness()
    }
}

