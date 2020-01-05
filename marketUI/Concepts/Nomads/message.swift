//
//  message.swift
//  marketUI
//
//  Created by Mihai Moldovan on 15/10/2019.
//  Copyright © 2019 Mihai Moldovan. All rights reserved.
//

import Foundation


struct message{
    
    var people:[user]
    var title:String
    var header:String?
    var body:String
    
    
    var lights:[Bool] = [ false, false, false ]
    
    let createdBy:UUID
    let createdAt:Date
    
    var receivedAt:Date?
    var seenAt:Date?
    var repliedAt:Date?
    
    
    
    mutating func send(){
        
        people[1].event(.messsage, [self])
        
    }
    
    
    init(_ people: [user], _ title: String, _ header: String?, _ body: String) {
        self.people = people
        self.title = title
        
        if let h = header{
            self.header = h
        }
        
        self.body = body
        
        self.createdBy = people[0].id
        self.createdAt = Date.init(timeIntervalSinceNow: 0.0)
    }
    
    
    
}
