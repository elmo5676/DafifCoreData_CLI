/*******************************************************
* PrPar+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension PrPar {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PrPar> {
        return NSFetchRequest<PrPar>(entityName: "PrPar")
    }

    @NSManaged public var acftSpeed: String?
    @NSManaged public var acftType: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var destIcao: String?
    @NSManaged public var destName: String?
    @NSManaged public var effeTime1: String?
    @NSManaged public var effeTime2: String?
    @NSManaged public var effeTime3: String?
    @NSManaged public var icaoRegion: String?
    @NSManaged public var level: String?
    @NSManaged public var lowerAlt: String?
    @NSManaged public var prIdent: String?
    @NSManaged public var startName: String?
    @NSManaged public var strtIcao: String?
    @NSManaged public var upperAlt: String?

}
