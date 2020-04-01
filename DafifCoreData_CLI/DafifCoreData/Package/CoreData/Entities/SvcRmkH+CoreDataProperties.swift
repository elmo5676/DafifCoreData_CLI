/*******************************************************
* SvcRmkH+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension SvcRmkH {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SvcRmkH> {
        return NSFetchRequest<SvcRmkH>(entityName: "SvcRmkH")
    }

    @NSManaged public var cycleDate: String?
    @NSManaged public var heliIdent: String?
    @NSManaged public var icao: String?
    @NSManaged public var remarks: String?
    @NSManaged public var rmkSeq: String?
    @NSManaged public var type: String?

}
