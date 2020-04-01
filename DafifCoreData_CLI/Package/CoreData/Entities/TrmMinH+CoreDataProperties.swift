/*******************************************************
* TrmMinH+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension TrmMinH {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmMinH> {
        return NSFetchRequest<TrmMinH>(entityName: "TrmMinH")
    }

    @NSManaged public var appType: String?
    @NSManaged public var catADh: NSDecimalNumber?
    @NSManaged public var catAHa: NSDecimalNumber?
    @NSManaged public var catARv: NSDecimalNumber?
    @NSManaged public var catAWxCl: NSDecimalNumber?
    @NSManaged public var catAWxPv: NSDecimalNumber?
    @NSManaged public var catBDh: NSDecimalNumber?
    @NSManaged public var catBHa: NSDecimalNumber?
    @NSManaged public var catBRv: NSDecimalNumber?
    @NSManaged public var catBWxCl: NSDecimalNumber?
    @NSManaged public var catBWxPv: NSDecimalNumber?
    @NSManaged public var catCDh: NSDecimalNumber?
    @NSManaged public var catCHa: NSDecimalNumber?
    @NSManaged public var catCRv: NSDecimalNumber?
    @NSManaged public var catCWxCl: NSDecimalNumber?
    @NSManaged public var catCWxPv: NSDecimalNumber?
    @NSManaged public var catDDh: NSDecimalNumber?
    @NSManaged public var catDHa: NSDecimalNumber?
    @NSManaged public var catDRv: NSDecimalNumber?
    @NSManaged public var catDWxCl: NSDecimalNumber?
    @NSManaged public var catDWxPv: NSDecimalNumber?
    @NSManaged public var catEDh: NSDecimalNumber?
    @NSManaged public var catEHa: NSDecimalNumber?
    @NSManaged public var catERv: NSDecimalNumber?
    @NSManaged public var catEWxCl: NSDecimalNumber?
    @NSManaged public var catEWxPv: NSDecimalNumber?
    @NSManaged public var cycleDate: String?
    @NSManaged public var heliIdent: String?
    @NSManaged public var icao: String?
    @NSManaged public var minRmk: String?
    @NSManaged public var proc: String?
    @NSManaged public var trmIdent: String?

}
