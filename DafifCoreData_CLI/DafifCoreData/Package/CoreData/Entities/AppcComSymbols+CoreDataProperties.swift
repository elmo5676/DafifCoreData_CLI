/*******************************************************
* AppcComSymbols+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcComSymbols {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcComSymbols> {
        return NSFetchRequest<AppcComSymbols>(entityName: "AppcComSymbols")
    }

    @NSManaged public var description_: String?
    @NSManaged public var sym: String?

}
