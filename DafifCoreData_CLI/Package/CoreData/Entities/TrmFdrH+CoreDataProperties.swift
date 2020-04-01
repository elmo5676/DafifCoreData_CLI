/*******************************************************
* TrmFdrH+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension TrmFdrH {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmFdrH> {
        return NSFetchRequest<TrmFdrH>(entityName: "TrmFdrH")
    }

    @NSManaged public var alt: NSDecimalNumber?
    @NSManaged public var cycleDate: String?
    @NSManaged public var distance: NSDecimalNumber?
    @NSManaged public var fdrRteIdent: String?
    @NSManaged public var heliIdent: String?
    @NSManaged public var icao: String?
    @NSManaged public var magCrs: NSDecimalNumber?
    @NSManaged public var proc: String?
    @NSManaged public var seqNbr: String?
    @NSManaged public var trmIdent: String?
    @NSManaged public var wpt1Ctry: String?
    @NSManaged public var wpt1Ident: String?
    @NSManaged public var wpt1WgsDlat: NSDecimalNumber?
    @NSManaged public var wpt1WgsDlong: NSDecimalNumber?
    @NSManaged public var wpt1WgsLat: String?
    @NSManaged public var wpt1WgsLong: String?
    @NSManaged public var wpt2Ctry: String?
    @NSManaged public var wpt2Ident: String?
    @NSManaged public var wpt2WgsDlat: NSDecimalNumber?
    @NSManaged public var wpt2WgsDlong: NSDecimalNumber?
    @NSManaged public var wpt2WgsLat: String?
    @NSManaged public var wpt2WgsLong: String?

}
