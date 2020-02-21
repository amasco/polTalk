import Foundation
import GRDB

/// A type responsible for initializing the application database.
///
/// See AppDelegate.setupDatabase()
struct AppDatabase {
    
    /// Creates a fully initialized database at path
    static func openDatabase(atPath path: String) throws -> DatabaseQueue {
        // Connect to the database
        // See https://github.com/groue/GRDB.swift/blob/master/README.md#database-connections
        let dbQueue = try DatabaseQueue(path: path)
        
        try dbQueue.write{ db in
            try db.execute(sql: "DROP TABLE IF EXISTS voter")
            
            try db.execute(sql: "CREATE TABLE voter (id INTEGER PRIMARY KEY AUTOINCREMENT, "
                                + "first_name TEXT NOT NULL, last_name TEXT NOT NULL, "
                                + "age INT, state TEXT, party TEXT)")

            try db.execute(sql: "INSERT INTO voter (first_name, last_name, age, state, party)"
                                + " VALUES (?, ?, ?, ?, ?)", arguments: ["Adrian", "Mascorro", 26, "Texas", "Independent"])
            try db.execute(sql: "INSERT INTO voter (first_name, last_name, age, state, party)"
                                + " VALUES (?, ?, ?, ?, ?)", arguments: ["Ursula", "Gutierrez", 36, "Nevada", "Green Party"])
        }
        
        try dbQueue.read{ db in
            if let row = try Row.fetchOne(db, sql: "SELECT * FROM voter WHERE state = 'California'"){
                let first_name: String = row["first_name"]
                let last_name: String = row["last_name"]
                let age: Int = row["age"]
                let party: String = row["party"]
                let state: String = row["state"]
                let id: Int = row["id"]
                
                print(first_name, last_name, age, party, state, id)
                
            }
        }
        
        
        
        try migrator.migrate(dbQueue)
        
        return dbQueue
    }
    
      /// The DatabaseMigrator that defines the database schema.
        ///
        /// See https://github.com/groue/GRDB.swift/blob/master/README.md#migrations
        static var migrator: DatabaseMigrator {
            print("in migrator")
            var migrator = DatabaseMigrator()
            
            migrator.registerMigration("createVoter") { db in
                print("in registerMigration")
                // Create a table
                // See https://github.com/groue/GRDB.swift#create-tables
                try db.create(table: "voter_table") { t in
                    t.autoIncrementedPrimaryKey("id")
                    print("in try db.create")
                    // Sort player names in a localized case insensitive fashion by default
                    // See https://github.com/groue/GRDB.swift/blob/master/README.md#unicode
                    t.column("First_Name", .text).notNull().collate(.localizedCaseInsensitiveCompare)
                    t.column("Last_Name", .text).notNull().collate(.localizedCaseInsensitiveCompare)
                    t.column("Age", .integer).notNull()
                    t.column("Party", .text).notNull().collate(.localizedCaseInsensitiveCompare)
                    t.column("State", .text).notNull().collate(.localizedCaseInsensitiveCompare)
                    print("Migration migrator")
                    
                }
                
            }
            return migrator
            
        }
}
