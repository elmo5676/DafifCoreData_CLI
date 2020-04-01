/*******************************************************
* AppcOils+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcOils {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcOils> {
        return NSFetchRequest<AppcOils>(entityName: "AppcOils")
    }

    @NSManaged public var flipNato: String?
    @NSManaged public var gradeType: String?
    @NSManaged public var oilCode: String?

}
