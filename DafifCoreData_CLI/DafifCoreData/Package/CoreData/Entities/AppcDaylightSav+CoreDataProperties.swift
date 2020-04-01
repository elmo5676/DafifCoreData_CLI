/*******************************************************
* AppcDaylightSav+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcDaylightSav {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcDaylightSav> {
        return NSFetchRequest<AppcDaylightSav>(entityName: "AppcDaylightSav")
    }

    @NSManaged public var timeCode: String?
    @NSManaged public var times: String?

}
