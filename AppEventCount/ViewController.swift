//
//  ViewController.swift
//  AppEventCount
//
//  Created by Илья Осотов on 08.09.2021.
//

import UIKit

class ViewController: UIViewController {
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    
    @IBOutlet var didFinishLaunchingLabel: UILabel!
    
    @IBOutlet var configurationForConnectingLabel: UILabel!
    
    @IBOutlet var willConnectToLabel: UILabel!
    var willConnectToCount = 0
    
    @IBOutlet var sceneDidBecomeActiveLabel: UILabel!
    var sceneDidBecomeActiveCount = 0
    
    @IBOutlet var sceneWillResignActiveLabel: UILabel!
    var sceneWillResignActiveCount = 0
    
    @IBOutlet var sceneWillEnterForegroundLabel: UILabel!
    var sceneWillEnterForegroundCount = 0
    
    @IBOutlet var sceneDidEnterBackgroundLabel: UILabel!
    var sceneDidEnterBackgroundCount = 0
    
    func updateView() {
        didFinishLaunchingLabel.text = "The app has launched \(appDelegate.launchCount) times"
        configurationForConnectingLabel.text = "The app has configured for connection \(appDelegate.configForConnectingCount) times"
        willConnectToLabel.text = "The scene connected \(String(describing: willConnectToCount)) times"
        sceneDidBecomeActiveLabel.text = "The scene became active \(String(describing: sceneDidBecomeActiveCount)) times"
        sceneWillResignActiveLabel.text = "The scene resigned active \(String(describing: sceneWillResignActiveCount)) times"
        sceneWillEnterForegroundLabel.text = "The scene entered foreground \(String(describing: sceneWillEnterForegroundCount)) times"
        sceneDidEnterBackgroundLabel.text = "The scene entered background \(String(describing: sceneDidEnterBackgroundCount)) times"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

