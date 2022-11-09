//
//  MessageView.swift
//  BarteringApp
//
//  Created by Fazil Raja on 11/6/22.
//

import SwiftUI

struct MessageView: View {
    @StateObject var messagesManager = MessagesManager()
    var messageArray = ["Hello", "How u doing fam", "I need some new kicks, looking for some Jordan 11s, willing to give my Jordan 8s for em"]
    
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollView {
                    ForEach(messagesManager.messages, id: \.id) { message in MessageBubble(message: message)
                        
                    }
                }
                .padding(.top, 10)
                .background(.white)
                .cornerRadiusMessages(30, corners: [.topLeft, .topRight])
            }
            .background(Color("beige"))
            
            MessageField()
        }
        
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
