/*******************************************************
* ArfSeg+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension ArfSeg {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ArfSeg> {
        return NSFetchRequest<ArfSeg>(entityName: "ArfSeg")
    }

    @NSManaged public var arfIdent: String?
    @NSManaged public var bearing1: NSDecimalNumber?
    @NSManaged public var bearing2: NSDecimalNumber?
    @NSManaged public var cycleDate: String?
    @NSManaged public var derivation: String?
    @NSManaged public var direction: String?
    @NSManaged public var icao: String?
    @NSManaged public var navCtry: String?
    @NSManaged public var navIdent: String?
    @NSManaged public var navKeyCd: String?
    @NSManaged public var navType: String?
    @NSManaged public var radius1: String?
    @NSManaged public var radius2: String?
    @NSManaged public var segNbr: String?
    @NSManaged public var shap: String?
    @NSManaged public var wgsDlat0: NSDecimalNumber?
    @NSManaged public var wgsDlat1: NSDecimalNumber?
    @NSManaged public var wgsDlat2: NSDecimalNumber?
    @NSManaged public var wgsDlong0: String?
    @NSManaged public var wgsDlong1: NSDecimalNumber?
    @NSManaged public var wgsDlong2: NSDecimalNumber?
    @NSManaged public var wgsLat0: String?
    @NSManaged public var wgsLat1: String?
    @NSManaged public var wgsLat2: String?
    @NSManaged public var wgsLong0: String?
    @NSManaged public var wgsLong1: String?
    @NSManaged public var wgsLong2: String?

}
