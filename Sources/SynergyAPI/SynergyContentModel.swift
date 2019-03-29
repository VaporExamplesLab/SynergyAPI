//
//  SynergyContentModel.swift
//  SynergyAPI
//
//  Created by marc on 2019.03.27.
//

import Foundation
import SynergySQLiteFramework

/// Handles Create Read Update Delete (CRUD) for one or more item records.
public struct SynergyContentModel {

    public unowned let api: SynergyApi
    public init(api: SynergyApi) {
        self.api = api
    }
    
    public func create(_ r: SynergyContentRecord) {
        var sqlPartA = "INSERT INTO synergy_table("
        var sqlPartB = "VALUES ("
        
        sqlPartA.append(" synergy_puid")
        sqlPartB.append(" '\(r.synergy_puid.rfc4122String)'")

        sqlPartA.append(", synergy_content")
        sqlPartB.append(",'\(r.synergy_content)'")
        
        sqlPartA.append(", synergy_time_created")
        sqlPartB.append(",\(r.synergy_time_created)")
        
        sqlPartA.append(", synergy_time_modified")
        sqlPartB.append(",\(r.synergy_time_modified)")

        sqlPartA.append(" ) ")
        sqlPartB.append(" );")
        
        let query = SynergySQLiteQuery(sql: sqlPartA + sqlPartB, db: api.db)
        if query.getStatus().type != .noError {
            print("FAIL: SynergyContentModel create(_ item: SynergyContentRecord))")
        }
    }

}
