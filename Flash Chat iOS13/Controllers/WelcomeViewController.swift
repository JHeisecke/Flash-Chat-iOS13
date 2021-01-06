//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    let chatTitle = "⚡️FlashChat"
    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.main.async {
            self.titleLabel.text = ""
            for (index, character) in self.chatTitle.enumerated() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 * Double(index)) {
                    self.titleLabel.text?.append(character)
                }
            }
        }
    }
    

}
