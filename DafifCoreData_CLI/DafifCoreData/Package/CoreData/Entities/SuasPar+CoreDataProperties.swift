/*******************************************************
* SuasPar+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension SuasPar {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SuasPar> {
        return NSFetchRequest<SuasPar>(entityName: "SuasPar")
    }

    @NSManaged public var commName: String?
    @NSManaged public var conAgcy: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var effDate: String?
    @NSManaged public var effTimes: String?
    @NSManaged public var freq1: String?
    @NSManaged public var freq2: String?
    @NSManaged public var icao: String?
    @NSManaged public var level: String?
    @NSManaged public var locHdatum: String?
    @NSManaged public var lowerAlt: String?
    @NSManaged public var name: String?
    @NSManaged public var sector: String?
    @NSManaged public var suasIdent: String?
    @NSManaged public var type: String?
    @NSManaged public var upperAlt: String?
    @NSManaged public var wgsDatum: String?
    @NSManaged public var wx: String?

}
