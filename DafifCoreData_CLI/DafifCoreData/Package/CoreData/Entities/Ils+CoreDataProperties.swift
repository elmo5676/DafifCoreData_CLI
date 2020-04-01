/*******************************************************
* Ils+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Ils {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ils> {
        return NSFetchRequest<Ils>(entityName: "Ils")
    }

    @NSManaged public var arptIdent: String?
    @NSManaged public var chan: String?
    @NSManaged public var colctn: String?
    @NSManaged public var compType: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var dmeBias: String?
    @NSManaged public var dmeNP: String?
    @NSManaged public var elev: NSDecimalNumber?
    @NSManaged public var freq: String?
    @NSManaged public var gsAngle: String?
    @NSManaged public var ilsBrg: NSDecimalNumber?
    @NSManaged public var ilsCat: String?
    @NSManaged public var lczrGslctn: String?
    @NSManaged public var locHdatum: String?
    @NSManaged public var locMkrlctn: String?
    @NSManaged public var locWidth: String?
    @NSManaged public var magVar: NSDecimalNumber?
    @NSManaged public var name: String?
    @NSManaged public var navCtry: String?
    @NSManaged public var navIdent: String?
    @NSManaged public var navKeyCd: String?
    @NSManaged public var navType: String?
    @NSManaged public var rwyIdent: String?
    @NSManaged public var slaveVar: String?
    @NSManaged public var thdCrossingHgt: NSDecimalNumber?
    @NSManaged public var wgsDatum: String?
    @NSManaged public var wgsDlat: NSDecimalNumber?
    @NSManaged public var wgsDlong: NSDecimalNumber?
    @NSManaged public var wgsLat: String?
    @NSManaged public var wgsLong: String?

}
