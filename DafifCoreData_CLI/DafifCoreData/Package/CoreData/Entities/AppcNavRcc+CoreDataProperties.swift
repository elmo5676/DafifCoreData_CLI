/*******************************************************
* AppcNavRcc+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcNavRcc {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcNavRcc> {
        return NSFetchRequest<AppcNavRcc>(entityName: "AppcNavRcc")
    }

    @NSManaged public var description_: String?
    @NSManaged public var rcc: String?

}
