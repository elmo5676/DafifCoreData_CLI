/*******************************************************
* AppcAtsFreqClass+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcAtsFreqClass {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcAtsFreqClass> {
        return NSFetchRequest<AppcAtsFreqClass>(entityName: "AppcAtsFreqClass")
    }

    @NSManaged public var description_: String?
    @NSManaged public var freqClass: String?

}
