//
//  SectionModel.swift
//  New_Attendance_App
//
//  Created by Michael Gable on 4/18/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//
import Foundation

class WorkOrderModel{
    var tenant: TenantModel
    var landlord: LandlordModel
    var workOrderID: String
    var description: String
    var completed: Bool
    
    init(tenant: TenantModel, landlord: LandlordModel, workOrderID: String, description: String, completed: Bool){
        self.tenant = tenant
        self.landlord = landlord
        self.workOrderID = workOrderID
        self.description = description
        self.completed = completed
        
    }
    
    func getTenant() -> TenantModel{
        return tenant
    }
    
    func getLandlord() -> LandlordModel{
        return landlord
    }
    
    func getWorkOrderID() -> String{
        return workOrderID
    }
    
    func getDescription() -> String{
        return description
    }
    
}

