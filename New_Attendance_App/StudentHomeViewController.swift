//
//  StudentHomeViewController.swift
//  New_Attendance_App
//
//  Created by Robert Miller on 4/10/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//

import UIKit
import Firebase
import CoreLocation


class StudentHomeViewController: UIViewController, UIPickerViewDelegate  {
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var attendanceButton: UIButton!
    
    
        
    var didAttend = false
    
    override func viewDidLoad() {
        //pickerView.isHidden = false
        //pickerView.delegate = self
       // pickerView.dataSource = self
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "app-background-images.png")!)
        
    }
    
    @IBAction func handleLogout(_ sender: Any) {
        try! Auth.auth().signOut()
        self.performSegue(withIdentifier: "backToHomeScreen", sender: self)
    }
    
    @IBAction func addClass(_ sender: Any){
        self.performSegue(withIdentifier: "toAddClass", sender: self)
    }
    
    @IBAction func viewLease(_ sender: UIButton){
        self.performSegue(withIdentifier: "toViewLease", sender: self)
    }
    
    @IBAction func tenantUtility(_ sender: Any){
        self.performSegue(withIdentifier: "toTenantUtility", sender: self)
        
    }
    
    @IBAction func submitWorkOrder(_ sender: UIButton){
        self.performSegue(withIdentifier: "toWorkOrder", sender: self)
    }
    

    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    /*
    // returns the # of rows in each component..
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return sections!.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sections![row].getSectionID()
    }
 
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

    }
 */
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    

}
