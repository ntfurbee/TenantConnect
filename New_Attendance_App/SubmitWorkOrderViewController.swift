//
//  SubmitWorkOrderViewController.swift
//  New_Attendance_App
//
//  Created by Michael Gable on 5/4/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//

import UIKit

class SubmitWorkOrderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "app-background-images.png")!)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toTenantHome", sender: self)
    }
    
    @IBAction func submitButton(_ sender: Any) {
        sendAlert(self, alert: "Success", message: "Work Order Submitted")
    }
    
    func sendAlert(_ sender: Any, alert: String, message: String){
        let alert = UIAlertController(title: alert, message: message, preferredStyle: UIAlertControllerStyle.alert)
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
