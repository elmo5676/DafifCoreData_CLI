/*******************************************************
* Mtr+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Mtr {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Mtr> {
        return NSFetchRequest<Mtr>(entityName: "Mtr")
    }

    @NSManaged public var addInfo: String?
    @NSManaged public var bearing: NSDecimalNumber?
    @NSManaged public var crsAlt1: NSDecimalNumber?
    @NSManaged public var crsAlt2: NSDecimalNumber?
    @NSManaged public var crsaltDesc: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var distance: NSDecimalNumber?
    @NSManaged public var enrAlt1: String?
    @NSManaged public var enrAlt2: String?
    @NSManaged public var enraltDesc: String?
    @NSManaged public var icaoRegion: String?
    @NSManaged public var mtrIdent: String?
    @NSManaged public var mtrWidthL: NSDecimalNumber?
    @NSManaged public var mtrWidthR: NSDecimalNumber?
    @NSManaged public var navCtry: String?
    @NSManaged public var navIdent: String?
    @NSManaged public var navKeyCd: String?
    @NSManaged public var navType: String?
    @NSManaged public var nxPoint: String?
    @NSManaged public var ptIdent: String?
    @NSManaged public var ptNavFlag: String?
    @NSManaged public var turnDir: String?
    @NSManaged public var turnRad: String?
    @NSManaged public var usageCd: String?
    @NSManaged public var wgsDlat: NSDecimalNumber?
    @NSManaged public var wgsDlong: NSDecimalNumber?
    @NSManaged public var wgsLat: String?
    @NSManaged public var wgsLong: String?

}
