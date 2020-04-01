/*******************************************************
* Pad+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Pad {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pad> {
        return NSFetchRequest<Pad>(entityName: "Pad")
    }

    @NSManaged public var acType: String?
    @NSManaged public var cldRwy: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var heElev: NSDecimalNumber?
    @NSManaged public var heliIdent: String?
    @NSManaged public var heSlope: NSDecimalNumber?
    @NSManaged public var heWgsDlat: NSDecimalNumber?
    @NSManaged public var heWgsDlong: NSDecimalNumber?
    @NSManaged public var heWgsLat: String?
    @NSManaged public var heWgsLong: String?
    @NSManaged public var highHdg: NSDecimalNumber?
    @NSManaged public var highIdent: String?
    @NSManaged public var highTrue: String?
    @NSManaged public var hlgtSys1: String?
    @NSManaged public var hlgtSys2: String?
    @NSManaged public var hlgtSys3: String?
    @NSManaged public var leElev: NSDecimalNumber?
    @NSManaged public var length: NSDecimalNumber?
    @NSManaged public var leSlope: NSDecimalNumber?
    @NSManaged public var leWgsDlat: NSDecimalNumber?
    @NSManaged public var leWgsDlong: NSDecimalNumber?
    @NSManaged public var leWgsLat: String?
    @NSManaged public var leWgsLong: String?
    @NSManaged public var lgtSys1: String?
    @NSManaged public var lgtSys2: String?
    @NSManaged public var lgtSys3: String?
    @NSManaged public var llgtSys1: String?
    @NSManaged public var llgtSys2: String?
    @NSManaged public var llgtSys3: String?
    @NSManaged public var lowHdg: NSDecimalNumber?
    @NSManaged public var lowIdent: String?
    @NSManaged public var lowTrue: String?
    @NSManaged public var padId: String?
    @NSManaged public var seqNbr: String?
    @NSManaged public var surface: String?
    @NSManaged public var wgsDlat: NSDecimalNumber?
    @NSManaged public var wgsDlong: NSDecimalNumber?
    @NSManaged public var wgsLat: String?
    @NSManaged public var wgsLong: String?
    @NSManaged public var width: NSDecimalNumber?

}
