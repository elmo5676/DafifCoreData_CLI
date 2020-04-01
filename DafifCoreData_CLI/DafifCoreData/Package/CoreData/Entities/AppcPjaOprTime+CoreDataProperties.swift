/*******************************************************
* AppcPjaOprTime+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcPjaOprTime {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcPjaOprTime> {
        return NSFetchRequest<AppcPjaOprTime>(entityName: "AppcPjaOprTime")
    }

    @NSManaged public var description_: String?
    @NSManaged public var oprTime: String?

}
