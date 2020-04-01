/*******************************************************
* Rwy+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Rwy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Rwy> {
        return NSFetchRequest<Rwy>(entityName: "Rwy")
    }

    @NSManaged public var arptIdent: String?
    @NSManaged public var cldRwy: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var heDt: NSDecimalNumber?
    @NSManaged public var heDtElev: NSDecimalNumber?
    @NSManaged public var heElev: NSDecimalNumber?
    @NSManaged public var helandDis: String?
    @NSManaged public var heSlope: NSDecimalNumber?
    @NSManaged public var heTakeoff: String?
    @NSManaged public var heTdze: NSDecimalNumber?
    @NSManaged public var heTrueHdg: NSDecimalNumber?
    @NSManaged public var heWgsDlat: NSDecimalNumber?
    @NSManaged public var heWgsDlong: NSDecimalNumber?
    @NSManaged public var heWgsLat: String?
    @NSManaged public var heWgsLong: String?
    @NSManaged public var highHdg: NSDecimalNumber?
    @NSManaged public var highIdent: String?
    @NSManaged public var hlgtSys1: String?
    @NSManaged public var hlgtSys2: String?
    @NSManaged public var hlgtSys3: String?
    @NSManaged public var hlgtSys4: String?
    @NSManaged public var hlgtSys5: String?
    @NSManaged public var hlgtSys6: String?
    @NSManaged public var hlgtSys7: String?
    @NSManaged public var hlgtSys8: String?
    @NSManaged public var leDt: String?
    @NSManaged public var leDtElev: NSDecimalNumber?
    @NSManaged public var leElev: NSDecimalNumber?
    @NSManaged public var lelandDis: String?
    @NSManaged public var length: NSDecimalNumber?
    @NSManaged public var leSlope: NSDecimalNumber?
    @NSManaged public var leTakeoff: String?
    @NSManaged public var leTdze: NSDecimalNumber?
    @NSManaged public var leTrueHdg: NSDecimalNumber?
    @NSManaged public var leWgsDlat: NSDecimalNumber?
    @NSManaged public var leWgsDlong: NSDecimalNumber?
    @NSManaged public var leWgsLat: String?
    @NSManaged public var leWgsLong: String?
    @NSManaged public var llgtSys1: String?
    @NSManaged public var llgtSys2: String?
    @NSManaged public var llgtSys3: String?
    @NSManaged public var llgtSys4: String?
    @NSManaged public var llgtSys5: String?
    @NSManaged public var llgtSys6: String?
    @NSManaged public var llgtSys7: String?
    @NSManaged public var llgtSys8: String?
    @NSManaged public var lowHdg: NSDecimalNumber?
    @NSManaged public var lowIdent: String?
    @NSManaged public var pcn: String?
    @NSManaged public var rwyWidth: NSDecimalNumber?
    @NSManaged public var surface: String?

}
