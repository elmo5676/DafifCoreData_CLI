/*******************************************************
* AppcComFreqUnit+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcComFreqUnit {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcComFreqUnit> {
        return NSFetchRequest<AppcComFreqUnit>(entityName: "AppcComFreqUnit")
    }

    @NSManaged public var description_: String?
    @NSManaged public var freqUnit: String?

}
