//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel
import Firebase

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //Remote Config
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 30 //segundos que espera firebase para actualizar su configuracion
        let remoteConfig = RemoteConfig.remoteConfig()
        remoteConfig.configSettings = settings
        remoteConfig.setDefaults(fromPlist: "DefaultValues") //seteamos valores por defectos
        
        //fetch valores de la nube, si existe alguna pasa a ser vigente y sustituye los valores por defecto
        remoteConfig.fetchAndActivate { (status, error) in
            if status != .error {
                let title = remoteConfig.configValue(forKey: "title_text").stringValue
                let showRegister = remoteConfig.configValue(forKey: "show_register_button").boolValue
                DispatchQueue.main.async {
                    self.titleLabel.text = title
                    self.registerButton.isHidden = !showRegister
                }
            }
        }
    }


}
