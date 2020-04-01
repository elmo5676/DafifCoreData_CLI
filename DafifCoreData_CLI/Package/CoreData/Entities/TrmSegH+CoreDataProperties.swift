/*******************************************************
* TrmSegH+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension TrmSegH {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmSegH> {
        return NSFetchRequest<TrmSegH>(entityName: "TrmSegH")
    }

    @NSManaged public var altDesc: String?
    @NSManaged public var altOne: String?
    @NSManaged public var altTwo: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var distance: NSDecimalNumber?
    @NSManaged public var heliIdent: String?
    @NSManaged public var icao: String?
    @NSManaged public var magCrs: NSDecimalNumber?
    @NSManaged public var nav1Bear: NSDecimalNumber?
    @NSManaged public var nav1Ctry: String?
    @NSManaged public var nav1Dist: NSDecimalNumber?
    @NSManaged public var nav1DmeWgsDlat: NSDecimalNumber?
    @NSManaged public var nav1DmeWgsDlong: NSDecimalNumber?
    @NSManaged public var nav1DmeWgsLat: String?
    @NSManaged public var nav1DmeWgsLong: String?
    @NSManaged public var nav1Ident: String?
    @NSManaged public var nav1KeyCd: String?
    @NSManaged public var nav1Mvar: String?
    @NSManaged public var nav1Type: String?
    @NSManaged public var nav1WgsDlat: NSDecimalNumber?
    @NSManaged public var nav1WgsDlong: NSDecimalNumber?
    @NSManaged public var nav1WgsLat: String?
    @NSManaged public var nav1WgsLong: String?
    @NSManaged public var nav2Bear: NSDecimalNumber?
    @NSManaged public var nav2Ctry: String?
    @NSManaged public var nav2Dist: NSDecimalNumber?
    @NSManaged public var nav2DmeWgsDlat: NSDecimalNumber?
    @NSManaged public var nav2DmeWgsDlong: NSDecimalNumber?
    @NSManaged public var nav2DmeWgsLat: String?
    @NSManaged public var nav2DmeWgsLong: String?
    @NSManaged public var nav2Ident: String?
    @NSManaged public var nav2KeyCd: String?
    @NSManaged public var nav2Mvar: String?
    @NSManaged public var nav2Type: String?
    @NSManaged public var nav2WgsDlat: NSDecimalNumber?
    @NSManaged public var nav2WgsDlong: NSDecimalNumber?
    @NSManaged public var nav2WgsLat: String?
    @NSManaged public var nav2WgsLong: String?
    @NSManaged public var proc: String?
    @NSManaged public var rnp: String?
    @NSManaged public var seqNbr: String?
    @NSManaged public var speed: String?
    @NSManaged public var speed2: String?
    @NSManaged public var speedAc: String?
    @NSManaged public var speedAc2: String?
    @NSManaged public var speedAlt: String?
    @NSManaged public var speedAlt2: String?
    @NSManaged public var tch: String?
    @NSManaged public var trackCd: String?
    @NSManaged public var transition: String?
    @NSManaged public var trmIdent: String?
    @NSManaged public var turnDir: String?
    @NSManaged public var type: String?
    @NSManaged public var vnav: String?
    @NSManaged public var wptCtry: String?
    @NSManaged public var wptDesc1: String?
    @NSManaged public var wptDesc2: String?
    @NSManaged public var wptDesc3: String?
    @NSManaged public var wptDesc4: String?
    @NSManaged public var wptId: String?
    @NSManaged public var wptMvar: NSDecimalNumber?
    @NSManaged public var wptWgsDlat: NSDecimalNumber?
    @NSManaged public var wptWgsDlong: NSDecimalNumber?
    @NSManaged public var wptWgsLat: String?
    @NSManaged public var wptWgsLong: String?

}
