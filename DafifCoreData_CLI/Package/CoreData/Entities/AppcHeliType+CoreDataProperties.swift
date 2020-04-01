/*******************************************************
* AppcHeliType+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcHeliType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcHeliType> {
        return NSFetchRequest<AppcHeliType>(entityName: "AppcHeliType")
    }

    @NSManaged public var description_: String?
    @NSManaged public var type: String?

}
