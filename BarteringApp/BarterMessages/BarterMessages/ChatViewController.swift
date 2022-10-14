//
//  ChatViewController.swift
//  BarterMessages
//
//  Created by I-CCEW on 9/15/22.
//

import UIKit
import MessageKit

struct Sender: SenderType {
    var senderId: String
    var displayName: String
}

struct Message: MessageType {
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKind
}

class ChatViewController: MessagesViewController, MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {

    let currentUser = Sender(senderId: "self", displayName: "Bob")
    let otherUser = Sender(senderId: "other", displayName: "John Smith")
    
    var messages = [MessageType]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        messages.append(Message(sender: currentUser,
                                messageId: "1",
                                sentDate: Date().addingTimeInterval(-86400),
                                kind: .text("Hi Charlese. I want a cool hairstylist to save my ugly hair ASAP. Can you help?")))
        
        messages.append(Message(sender: otherUser,
                                messageId: "2",
                                sentDate: Date().addingTimeInterval(-70000),
                                kind: .text("Sure! Anytime to service!")))
        
        messages.append(Message(sender: currentUser,
                                messageId: "3",
                                sentDate: Date().addingTimeInterval(-60000),
                                kind: .text("I see you're near me right now on the map, are you free right now?")))
        
        messages.append(Message(sender: otherUser,
                                messageId: "4",
                                sentDate: Date().addingTimeInterval(-40000),
                                kind: .text("I have work right now can you wait for me at 5pm?")))
        
        messages.append(Message(sender: currentUser,
                                messageId: "5",
                                sentDate: Date().addingTimeInterval(-30000),
                                kind: .text("Of course!")))
        
        messages.append(Message(sender: otherUser,
                                messageId: "6",
                                sentDate: Date().addingTimeInterval(-20000),
                                kind: .text("Thank you!")))
        
        messages.append(Message(sender: currentUser,
                                messageId: "7",
                                sentDate: Date().addingTimeInterval(-10000),
                                kind: .text("You can come to my house anytime with your equipment.")))
        
        messages.append(Message(sender: otherUser,
                                messageId: "8",
                                sentDate: Date().addingTimeInterval(-5000),
                                kind: .text("Sounds like a plan!")))
        
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
        
    }

    func currentSender() -> SenderType {
        return currentUser
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
    }
}
