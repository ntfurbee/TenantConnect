//
//  InstructorModel.swift
//  New_Attendance_App
//
//  Created by Michael Gable on 4/18/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//

import Foundation
class LandlordModel{
    var username: String
    var email: String
    var tenants = [TenantModel]()
    var loggedIn = false
    var password: String
    var workOrders = [WorkOrderModel]()
    var utilityReports = [UtilityReportModel]()
    
    init(username: String, email: String, password: String){
        self.username = username
        self.password = password
        self.email = email
    }
    
    func getUsername() -> String {
        return username
    }
    
    func getTenants() -> Array<TenantModel> {
        return tenants
    }
    
    func setUsername(user: String) {
        username = user
    }
    
    func removeWorkOrder(id: String) -> Bool{
        var count = 0
        for i in workOrders{
            if i.workOrderID == id{
                workOrders.remove(at:count)
                return true
            }
            count = count + 1
        }
        return false
    }
    
    func getEmail() -> String {
        return email
    }
    
    func login() {
        loggedIn = true
    }
    
    func logout() {
        loggedIn = false
    }
    
}

