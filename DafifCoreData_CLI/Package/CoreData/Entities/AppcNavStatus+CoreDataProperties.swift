/*******************************************************
* AppcNavStatus+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcNavStatus {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcNavStatus> {
        return NSFetchRequest<AppcNavStatus>(entityName: "AppcNavStatus")
    }

    @NSManaged public var description_: String?
    @NSManaged public var status: String?

}
