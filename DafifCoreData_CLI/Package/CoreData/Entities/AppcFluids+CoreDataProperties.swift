/*******************************************************
* AppcFluids+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcFluids {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcFluids> {
        return NSFetchRequest<AppcFluids>(entityName: "AppcFluids")
    }

    @NSManaged public var description_: String?
    @NSManaged public var flip: String?
    @NSManaged public var fluidCode: String?

}
