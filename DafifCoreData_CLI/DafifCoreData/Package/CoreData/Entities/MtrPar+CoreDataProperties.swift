/*******************************************************
* MtrPar+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension MtrPar {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MtrPar> {
        return NSFetchRequest<MtrPar>(entityName: "MtrPar")
    }

    @NSManaged public var ctry: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var effTimes: String?
    @NSManaged public var icaoRegion: String?
    @NSManaged public var locHdatum: String?
    @NSManaged public var mtrIdent: String?
    @NSManaged public var origAct: String?
    @NSManaged public var schAct: String?
    @NSManaged public var wgsDatum: String?

}
