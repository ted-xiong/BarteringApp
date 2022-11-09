//
//  Message.swift
//  BarteringApp
//
//  Created by Fazil Raja on 11/6/22.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}


