//
//  UtilityReportModel.swift
//  New_Attendance_App
//
//  Created by Michael Gable on 5/4/18.
//  Copyright © 2018 Robert Miller. All rights reserved.
//

import Foundation
class UtilityReportModel{
    var tenant: TenantModel
    var landlord: LandlordModel
    var heat: String
    var water: String
    var electric: String
    
    init(tenant: TenantModel, landlord: LandlordModel, heat: String, water: String, electric: String){
        self.tenant = tenant
        self.landlord = landlord
        self.heat = heat
        self.water = water
        self.electric = electric
        
    }
    
    func getTenant() -> TenantModel{
        return tenant
    }
    
    func getLandlord() -> LandlordModel{
        return landlord
    }
    
    func getHeat() -> String{
        return heat
    }
    
    func getWater() -> String{
        return water
    }
    
    func getElectric() -> String{
        return electric
    }
    
}
