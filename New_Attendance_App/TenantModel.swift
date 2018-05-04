//
//  StudentModel.swift
//  New_Attendance_App
//
//  Created by Michael Gable on 4/18/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//
import Foundation
class TenantModel {
    var username: String
    var email: String
    var password: String
    var address: String
    var landlord: LandlordModel?
    var workOrder = [WorkOrderModel]()
    var loggedIn = false
    var utilityReport: UtilityReportModel?
    var lease: String?
    
    init(username: String, email: String, password: String, address: String) {
        self.username = username
        self.password = password
        self.email = email
        self.address = address
    }
    
    func getUsername() -> String {
        return username
    }
    
    func getPassword() -> String {
        return password
    }
    
    func getLandlord() -> LandlordModel {
        if(landlord != nil){
            return landlord!
        }
        else {
            let placeholder = LandlordModel(username: "nil", email: "nil", password: "nil")
            return placeholder
        }
    }
    /* Look into maybe a getWorkOrder function
     func getSections() -> Array<SectionModel> {
     return sections
     }
     */
    
    func getEmail() -> String {
        return email
    }
    
    func setUsername(user: String) {
        username = user
    }
    
    func setPassword(pass: String) {
        password = pass
    }
    
    func login() {
        loggedIn = true
    }
    
    func logout() {
        loggedIn = false
    }
}

