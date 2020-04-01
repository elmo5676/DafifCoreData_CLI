/*******************************************************
* Pr+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Pr {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pr> {
        return NSFetchRequest<Pr>(entityName: "Pr")
    }

    @NSManaged public var cycleDate: String?
    @NSManaged public var prIdent: String?
    @NSManaged public var ptAtsIcao1: String?
    @NSManaged public var ptAtsIcao2: String?
    @NSManaged public var ptCtry1: String?
    @NSManaged public var ptCtry2: String?
    @NSManaged public var ptKeyCd1: String?
    @NSManaged public var ptKeyCd2: String?
    @NSManaged public var ptNameId1: String?
    @NSManaged public var ptNameId2: String?
    @NSManaged public var ptNaTy1: String?
    @NSManaged public var ptNaTy2: String?
    @NSManaged public var ptTy1: String?
    @NSManaged public var ptTy2: String?
    @NSManaged public var segNbr: String?

}
