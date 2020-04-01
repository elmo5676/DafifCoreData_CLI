/*******************************************************
* AppcTrmWptDesc2+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcTrmWptDesc2 {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcTrmWptDesc2> {
        return NSFetchRequest<AppcTrmWptDesc2>(entityName: "AppcTrmWptDesc2")
    }

    @NSManaged public var description_: String?
    @NSManaged public var wptDesc2: String?

}
