/*******************************************************
* BdryPar+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension BdryPar {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BdryPar> {
        return NSFetchRequest<BdryPar>(entityName: "BdryPar")
    }

    @NSManaged public var bdryIdent: String?
    @NSManaged public var class_: String?
    @NSManaged public var classExc: String?
    @NSManaged public var classExRmk: String?
    @NSManaged public var commFreq1: String?
    @NSManaged public var commFreq2: String?
    @NSManaged public var commName: String?
    @NSManaged public var conAuth: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var icao: String?
    @NSManaged public var level: String?
    @NSManaged public var locHdatum: String?
    @NSManaged public var loRvsm: String?
    @NSManaged public var lowerAlt: String?
    @NSManaged public var name: String?
    @NSManaged public var rnp: String?
    @NSManaged public var type: String?
    @NSManaged public var upperAlt: String?
    @NSManaged public var upRvsm: String?
    @NSManaged public var wgsDatum: String?

}
