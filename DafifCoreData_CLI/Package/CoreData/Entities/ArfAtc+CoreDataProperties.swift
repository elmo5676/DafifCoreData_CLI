/*******************************************************
* ArfAtc+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension ArfAtc {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ArfAtc> {
        return NSFetchRequest<ArfAtc>(entityName: "ArfAtc")
    }

    @NSManaged public var arfIdent: String?
    @NSManaged public var atcRmk: String?
    @NSManaged public var center: String?
    @NSManaged public var cntrMult: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var direction: String?
    @NSManaged public var eW1: String?
    @NSManaged public var eW2: String?
    @NSManaged public var eW3: String?
    @NSManaged public var eW4: String?
    @NSManaged public var eW5: String?
    @NSManaged public var freq1: String?
    @NSManaged public var freq2: String?
    @NSManaged public var freq3: String?
    @NSManaged public var freq4: String?
    @NSManaged public var freq5: String?
    @NSManaged public var icao: String?
    @NSManaged public var usage: String?

}
