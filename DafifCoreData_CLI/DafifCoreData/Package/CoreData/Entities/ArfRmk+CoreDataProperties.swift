/*******************************************************
* ArfRmk+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension ArfRmk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ArfRmk> {
        return NSFetchRequest<ArfRmk>(entityName: "ArfRmk")
    }

    @NSManaged public var arfIdent: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var direction: String?
    @NSManaged public var icao: String?
    @NSManaged public var remarks: String?
    @NSManaged public var rmkSeq: String?

}
