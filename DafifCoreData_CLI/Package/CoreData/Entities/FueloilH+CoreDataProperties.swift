/*******************************************************
* FueloilH+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension FueloilH {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FueloilH> {
        return NSFetchRequest<FueloilH>(entityName: "FueloilH")
    }

    @NSManaged public var cycleDate: String?
    @NSManaged public var fuel: String?
    @NSManaged public var heliIdent: String?
    @NSManaged public var icao: String?
    @NSManaged public var jasu: String?
    @NSManaged public var oil: String?
    @NSManaged public var supFluids: String?

}
