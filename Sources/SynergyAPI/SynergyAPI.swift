import Foundation
import SynergySQLiteFramework

/// NOTE: `deinit` can only be implemented in a class
public class SynergyApi {

    // Phase 1 initialization
    public let db: SynergySQLiteDatabase
    
    public init(dbUrl: URL) {
        // Phase 1 initialization
        self.db = SynergySQLiteDatabase(url: dbUrl)
        
        // DATABASE OPEN
        let openedOk: Bool = db.open()
        if !openedOk {
            // :NYI: add error message to log
        }
    }
    
    /// Close opened databases.
    deinit {
        let _ = db.close() // :NYI: handle return result
    }

}
