/*******************************************************
* TrmMsaH+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension TrmMsaH {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmMsaH> {
        return NSFetchRequest<TrmMsaH>(entityName: "TrmMsaH")
    }

    @NSManaged public var cycleDate: String?
    @NSManaged public var heliIdent: String?
    @NSManaged public var icao: String?
    @NSManaged public var navCtry: String?
    @NSManaged public var navIdent: String?
    @NSManaged public var navKeyCd: String?
    @NSManaged public var navType: String?
    @NSManaged public var proc: String?
    @NSManaged public var secAlt: NSDecimalNumber?
    @NSManaged public var secBear1: NSDecimalNumber?
    @NSManaged public var secBear2: NSDecimalNumber?
    @NSManaged public var secMile1: NSDecimalNumber?
    @NSManaged public var secMile2: NSDecimalNumber?
    @NSManaged public var secNbr: String?
    @NSManaged public var trmIdent: String?
    @NSManaged public var wgsDlat: NSDecimalNumber?
    @NSManaged public var wgsDlong: NSDecimalNumber?
    @NSManaged public var wgsLat: String?
    @NSManaged public var wgsLong: String?
    @NSManaged public var wptCtry: String?
    @NSManaged public var wptIdent: String?

}
