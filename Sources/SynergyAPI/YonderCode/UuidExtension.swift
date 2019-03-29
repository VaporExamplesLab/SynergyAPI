//
//  UuidExtension.swift
//  SynergyAPI
//
//  Created by marc on 2019.03.27.
//

import Foundation

public let UUID_NULL = UUID(uuidString: "00000000-0000-0000-0000-000000000000")!
public let UUID_NULL_STR = UUID_NULL.uuidString

public extension UUID {
    /// lowercased string per RFC 4122 section 3 guidelines
    public var rfc4122String: String {
        return self.uuidString.lowercased()
    }
}
