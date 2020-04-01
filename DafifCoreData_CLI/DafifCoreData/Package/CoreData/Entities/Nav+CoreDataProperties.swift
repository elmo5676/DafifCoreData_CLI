/*******************************************************
* Nav+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Nav {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Nav> {
        return NSFetchRequest<Nav>(entityName: "Nav")
    }

    @NSManaged public var arptIcao: String?
    @NSManaged public var chan: String?
    @NSManaged public var ctry: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var dmeElev: String?
    @NSManaged public var dmeWgsDlat: NSDecimalNumber?
    @NSManaged public var dmeWgsDlong: NSDecimalNumber?
    @NSManaged public var dmeWgsLat: String?
    @NSManaged public var dmeWgsLong: String?
    @NSManaged public var elev: NSDecimalNumber?
    @NSManaged public var freq: String?
    @NSManaged public var freqProt: String?
    @NSManaged public var icao: String?
    @NSManaged public var locHdatum: String?
    @NSManaged public var magVar: NSDecimalNumber?
    @NSManaged public var name: String?
    @NSManaged public var navIdent: String?
    @NSManaged public var navKeyCd: String?
    @NSManaged public var navRange: String?
    @NSManaged public var os: String?
    @NSManaged public var power: String?
    @NSManaged public var rcc: String?
    @NSManaged public var slavedVar: String?
    @NSManaged public var stateProv: String?
    @NSManaged public var type: String?
    @NSManaged public var usageCd: String?
    @NSManaged public var wac: String?
    @NSManaged public var wgsDatum: String?
    @NSManaged public var wgsDlat: NSDecimalNumber?
    @NSManaged public var wgsDlong: NSDecimalNumber?
    @NSManaged public var wgsLat: String?
    @NSManaged public var wgsLong: String?

}
