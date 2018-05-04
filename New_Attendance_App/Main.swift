//
//  global.swift
//  New_Attendance_App
//
//  Created by Michael Gable on 4/18/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//
import Foundation
class Main{
    
    var landlords = [LandlordModel]()
    var tenants = [TenantModel]()
    var currentLandlord: LandlordModel?
    var currentTenant: TenantModel?
    
    
    
}
var mainInstance = Main()

let landlordTest = LandlordModel(username: "landlordTest", email: "landlordTest,@gmail.com", password: "password")
let tenantTest = TenantModel(username: "tenantTest", email: "tenantTest,@gmail.com", password: "password", address: "52 Beechurst ave, Morgantown")




