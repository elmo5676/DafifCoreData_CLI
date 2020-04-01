/*******************************************************
* AtsRmk+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AtsRmk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AtsRmk> {
        return NSFetchRequest<AtsRmk>(entityName: "AtsRmk")
    }

    @NSManaged public var atsIdent: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var direction: String?
    @NSManaged public var icao: String?
    @NSManaged public var remark: String?
    @NSManaged public var rmkSeq: String?
    @NSManaged public var seqNbr: String?
    @NSManaged public var type: String?

}
