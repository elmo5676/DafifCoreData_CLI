/*******************************************************
* TrmClb+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension TrmClb {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmClb> {
        return NSFetchRequest<TrmClb>(entityName: "TrmClb")
    }

    @NSManaged public var alt: NSDecimalNumber?
    @NSManaged public var arptIdent: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var desig: String?
    @NSManaged public var ftnote: String?
    @NSManaged public var icao: String?
    @NSManaged public var knots: NSDecimalNumber?
    @NSManaged public var occNo: String?
    @NSManaged public var proc: String?
    @NSManaged public var rateDesc: String?
    @NSManaged public var rwyId: String?
    @NSManaged public var trmIdent: String?

}
