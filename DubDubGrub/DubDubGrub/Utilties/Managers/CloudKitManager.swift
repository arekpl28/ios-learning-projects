//
//  CloudKitManager.swift
//  DubDubGrub
//
//  Created by Arkadiusz Plumbaum on 03/09/2023.
//

import CloudKit

struct CloudKitManager {
    
    static func getLocations(completed: @escaping (Result<[DDGLocation], Error>) -> Void) {
        let sortDescriptor = NSSortDescriptor(key: DDGLocation.kName, ascending: true)
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        query.sortDescriptors = [sortDescriptor]
        
        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            guard error == nil else {
                completed(.failure(error!))
                return
            }
            
            guard let records = records else { return }
            
//            var locations: [DDGLocation] = []
//
//            for record in records {
//                let location = DDGLocation(record: record)
//                locations.append(location)
//            }
            let locations = records.map { $0.convertToDDGLocation() }
            
            completed(.success(locations))
        }
    }
}
