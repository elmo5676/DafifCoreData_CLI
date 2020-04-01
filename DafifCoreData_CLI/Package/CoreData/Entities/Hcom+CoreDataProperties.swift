/*******************************************************
* Hcom+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension Hcom {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Hcom> {
        return NSFetchRequest<Hcom>(entityName: "Hcom")
    }

    @NSManaged public var comFreq1: String?
    @NSManaged public var comFreq2: String?
    @NSManaged public var comFreq3: String?
    @NSManaged public var comFreq4: String?
    @NSManaged public var comFreq5: String?
    @NSManaged public var commName: String?
    @NSManaged public var commType: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var freq1: String?
    @NSManaged public var freq2: String?
    @NSManaged public var freq3: String?
    @NSManaged public var freq4: String?
    @NSManaged public var freq5: String?
    @NSManaged public var freqMulti: String?
    @NSManaged public var freqUnit1: String?
    @NSManaged public var freqUnit2: String?
    @NSManaged public var freqUnit3: String?
    @NSManaged public var freqUnit4: String?
    @NSManaged public var freqUnit5: String?
    @NSManaged public var heliIdent: String?
    @NSManaged public var multi: String?
    @NSManaged public var sec: String?
    @NSManaged public var sOprH: String?
    @NSManaged public var sym: String?

}
