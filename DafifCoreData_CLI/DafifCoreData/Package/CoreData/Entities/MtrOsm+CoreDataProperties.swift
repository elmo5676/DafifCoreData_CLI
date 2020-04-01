/*******************************************************
* MtrOsm+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension MtrOsm {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MtrOsm> {
        return NSFetchRequest<MtrOsm>(entityName: "MtrOsm")
    }

    @NSManaged public var cycleDate: String?
    @NSManaged public var mtrIdent: String?
    @NSManaged public var nxPoint: String?
    @NSManaged public var ptIdent: String?
    @NSManaged public var sector: String?
    @NSManaged public var segNbr: String?
    @NSManaged public var seqNbr: String?
    @NSManaged public var suasMoaId: String?

}
