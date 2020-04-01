/*******************************************************
* ArfPar+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension ArfPar {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ArfPar> {
        return NSFetchRequest<ArfPar>(entityName: "ArfPar")
    }

    @NSManaged public var alt1Desc: String?
    @NSManaged public var alt2Desc: String?
    @NSManaged public var alt3Desc: String?
    @NSManaged public var apnCode: String?
    @NSManaged public var apxCode: String?
    @NSManaged public var arfIdent: String?
    @NSManaged public var bkpFreq: String?
    @NSManaged public var ctry: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var direction: String?
    @NSManaged public var icao: String?
    @NSManaged public var locHdatum: String?
    @NSManaged public var priFreq: String?
    @NSManaged public var receiver: String?
    @NSManaged public var refuel1Alt1: String?
    @NSManaged public var refuel1Alt2: String?
    @NSManaged public var refuel2Alt1: String?
    @NSManaged public var refuel2Alt2: String?
    @NSManaged public var refuel3Alt1: String?
    @NSManaged public var refuel3Alt2: String?
    @NSManaged public var tanker: String?
    @NSManaged public var type: String?
    @NSManaged public var wgsDatum: String?

}
