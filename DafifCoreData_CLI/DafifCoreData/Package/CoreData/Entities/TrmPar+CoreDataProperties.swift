/*******************************************************
* TrmPar+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension TrmPar {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmPar> {
        return NSFetchRequest<TrmPar>(entityName: "TrmPar")
    }

    @NSManaged public var altMin: NSDecimalNumber?
    @NSManaged public var amdtNo: String?
    @NSManaged public var arptIdent: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var esAlt: String?
    @NSManaged public var hostCtryAuth: String?
    @NSManaged public var icao: String?
    @NSManaged public var julianDate: String?
    @NSManaged public var opr: String?
    @NSManaged public var proc: String?
    @NSManaged public var rteTypeQual: String?
    @NSManaged public var tranAlt: NSDecimalNumber?
    @NSManaged public var tranLvl: String?
    @NSManaged public var trmIdent: String?

}
