/*******************************************************
* AtsCtry+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AtsCtry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AtsCtry> {
        return NSFetchRequest<AtsCtry>(entityName: "AtsCtry")
    }

    @NSManaged public var atsIdent: String?
    @NSManaged public var ctry: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var direction: String?
    @NSManaged public var icao: String?
    @NSManaged public var seqNbr: String?
    @NSManaged public var stateProv: String?
    @NSManaged public var type: String?

}
