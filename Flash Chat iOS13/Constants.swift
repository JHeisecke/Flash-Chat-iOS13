//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Javier Heisecke  Echeverria on 2021-04-26.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import Foundation

struct Constants {
    static let registerSegue = "registerToChat"
    static let loginSegue = "loginToChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
