//
//  SynergyContentRecord.swift
//  SynergyAPI
//
//  Created by marc on 2019.03.27.
//

import Foundation

public struct SynergyContentRecord: Codable {
    // synergy_table
    /// synergy_puid TEXT -- Item UPPERCASED UUID. PRIMARY KEY. NOT NULL
    public let synergy_puid:         UUID
    /// synergy_content      TEXT -- NOT NULL
    public var synergy_content:      String
    /// synergy_time_created REAL -- NOT NULL
    public var synergy_time_created: Double  // Epoch Unix Seconds since 1970
    /// synergy_time_modified REAL -- NOT NULL
    public var synergy_time_modified: Double // Epoch Unix Seconds since 1970
}
