/*******************************************************
* Ats+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Ats {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ats> {
        return NSFetchRequest<Ats>(entityName: "Ats")
    }

    @NSManaged public var atsIdent: String?
    @NSManaged public var bidirect: String?
    @NSManaged public var cruiseLevel: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var direction: String?
    @NSManaged public var distance: NSDecimalNumber?
    @NSManaged public var fixTurn1: String?
    @NSManaged public var fixTurn2: String?
    @NSManaged public var freqClass: String?
    @NSManaged public var icao: String?
    @NSManaged public var inbdCrs: NSDecimalNumber?
    @NSManaged public var level: String?
    @NSManaged public var lowerLimit: String?
    @NSManaged public var maa: String?
    @NSManaged public var minAlt: NSDecimalNumber?
    @NSManaged public var outbdCrs: NSDecimalNumber?
    @NSManaged public var rnp: String?
    @NSManaged public var rvsm: String?
    @NSManaged public var seqNbr: String?
    @NSManaged public var status: String?
    @NSManaged public var type: String?
    @NSManaged public var upperLimit: String?
    @NSManaged public var wpt1Ctry: String?
    @NSManaged public var wpt1Desc1: String?
    @NSManaged public var wpt1Desc2: String?
    @NSManaged public var wpt1Desc3: String?
    @NSManaged public var wpt1Desc4: String?
    @NSManaged public var wpt1Icao: String?
    @NSManaged public var wpt1Ident: String?
    @NSManaged public var wpt1NavType: String?
    @NSManaged public var wpt1WgsDlat: NSDecimalNumber?
    @NSManaged public var wpt1WgsDlong: NSDecimalNumber?
    @NSManaged public var wpt1WgsLat: String?
    @NSManaged public var wpt1WgsLong: String?
    @NSManaged public var wpt2Ctry: String?
    @NSManaged public var wpt2Desc1: String?
    @NSManaged public var wpt2Desc2: String?
    @NSManaged public var wpt2Desc3: String?
    @NSManaged public var wpt2Desc4: String?
    @NSManaged public var wpt2Icao: String?
    @NSManaged public var wpt2Ident: String?
    @NSManaged public var wpt2NavType: String?
    @NSManaged public var wpt2WgsDlat: NSDecimalNumber?
    @NSManaged public var wpt2WgsDlong: NSDecimalNumber?
    @NSManaged public var wpt2WgsLat: String?
    @NSManaged public var wpt2WgsLong: String?

}
