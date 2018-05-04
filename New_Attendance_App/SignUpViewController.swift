//
//  SignUpViewController.swift
//  New_Attendance_App
//
//  Created by Robert Miller on 4/10/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "app-background-images.png")!)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitButton(_ sender:Any){
        guard let username = usernameField.text else { return }
        guard let email = emailField.text else { return }
        guard let pass = passwordField.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: pass) { user, error in
            if error == nil && user != nil {
                print("User created!")
                
                //Auth.auth().currentUser.
                /*
                if email.range(of:"mail") != nil {
                    let professor = InstructorModel(username: username, email: email, password: pass, attStatus: false, radius: 100)
                    mainInstance.instructors.append(professor)
                    print("Successfully created landlord with the following attributes: \n")
                    dump(mainInstance.instructors)
                }
                else {
                    let student = StudentModel(username: username, email: email, password: pass)
                    mainInstance.students.append(student)
                    print("Successfully created tenant with the following attributes: \n")
                    dump(mainInstance.students)
                }
                */
                
                if(username == "landlordTest8"){
                    let landlordTest = LandlordModel(username: username, email: email, password: pass)
                    mainInstance.currentLandlord = landlordTest
                    mainInstance.landlords.append(landlordTest)
                    
                    let landlord2 = LandlordModel(username: "landlord2", email: "landlord2@yahoo.com", password: "password")
                    mainInstance.landlords.append(landlord2)
                    
                    let landlord3 = LandlordModel(username: "landlord3", email: "landlord3@aol.com",password: "password")
                    mainInstance.landlords.append(landlord3)
                    
                    let landlord4 = LandlordModel(username: "landlord4", email: "landlord4@email.org", password: "password")
                    mainInstance.landlords.append(landlord4)
                    
                    let tenant2 = TenantModel(username: "tenant2", email: "tenant2@gmail.com", password: "password", address: "111 University ave")
                    mainInstance.tenants.append(tenant2)
                    
                    let tenant3 = TenantModel(username: "tenant3", email: "tenant3@aol.com", password: "password", address: "21 jump st")
                    mainInstance.tenants.append(tenant3)
                    
                    let tenant4 = TenantModel(username: "tenant4", email: "tenant4@gmail.com", password: "password", address: "90 high st")
                    mainInstance.tenants.append(tenant4)
                }
                else if(username == "tenantTest7"){
                    let tenantTest = TenantModel(username: username, email: email, password: "password", address: "55 Beechurst ave")
                    mainInstance.currentTenant = tenantTest
                    mainInstance.tenants.append(tenantTest)
                }
                
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = username
                
                changeRequest?.commitChanges { error in
                    if error == nil {
                        print("User display name changed!")
                        self.dismiss(animated: false, completion: nil)
                    } else {
                        print("Error: \(error!.localizedDescription)")
                        //self.sendAlert(self, message: "Invalid Account Credentials")
                    }
                }
                
                
                //self.performSegue(withIdentifier: "toHomeScreen", sender:self)
                
            }
            
            else {
                print("Error: \(error!.localizedDescription)")
                self.sendAlert(self, message: "Invalid Account Credentials")
            }
            
        }
       
    }
    
    @IBAction func backButton(_ sender:Any){
        self.performSegue(withIdentifier: "backToHome", sender:self)
    }
    
    func sendAlert(_ sender: Any, message: String){
        let alert = UIAlertController(title: "Error!", message: message, preferredStyle: UIAlertControllerStyle.alert)
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
