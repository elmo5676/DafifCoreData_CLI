/*******************************************************
* Ortca+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Ortca {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Ortca> {
        return NSFetchRequest<Ortca>(entityName: "Ortca")
    }

    @NSManaged public var alt: NSDecimalNumber?
    @NSManaged public var cycleDate: String?
    @NSManaged public var neDlat: NSDecimalNumber?
    @NSManaged public var neDlong: NSDecimalNumber?
    @NSManaged public var neLat: String?
    @NSManaged public var neLong: String?
    @NSManaged public var nwDlat: NSDecimalNumber?
    @NSManaged public var nwDlong: NSDecimalNumber?
    @NSManaged public var nwLat: String?
    @NSManaged public var nwLong: String?
    @NSManaged public var ortcaId: String?
    @NSManaged public var ortcaIdent: String?
    @NSManaged public var seDlat: NSDecimalNumber?
    @NSManaged public var seDlong: NSDecimalNumber?
    @NSManaged public var seLat: String?
    @NSManaged public var seLong: String?
    @NSManaged public var swDlat: NSDecimalNumber?
    @NSManaged public var swDlong: NSDecimalNumber?
    @NSManaged public var swLat: String?
    @NSManaged public var swLong: String?

}
