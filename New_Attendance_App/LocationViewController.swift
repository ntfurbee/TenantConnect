//
//  LocationViewController.swift
//  New_Attendance_App
//
//  Created by Nicholas Furbee on 4/18/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//

import UIKit
import CoreLocation



class LocationViewController: UIViewController {
    
    @IBOutlet weak var radiusField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "app-background-images.png")!)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Create and Add MapView to our main view
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

    }
   
    
    @IBAction func handleBackButton(_ sender: Any) {
        self.performSegue(withIdentifier: "backToInstructor", sender: self)
    }
    
    @IBAction func submitRadius(_ sender: Any){
        sendAlert(self, message: "Location Radius Set")
    }
    
    func sendAlert(_ sender: Any, message: String){
        let alert = UIAlertController(title: "Success!", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    
}
