/*******************************************************
* ArfFt+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension ArfFt {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ArfFt> {
        return NSFetchRequest<ArfFt>(entityName: "ArfFt")
    }

    @NSManaged public var arfIdent: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var direction: String?
    @NSManaged public var ftNo: String?
    @NSManaged public var ftType: String?
    @NSManaged public var icao: String?
    @NSManaged public var remarks: String?
    @NSManaged public var rmkSeq: String?

}
