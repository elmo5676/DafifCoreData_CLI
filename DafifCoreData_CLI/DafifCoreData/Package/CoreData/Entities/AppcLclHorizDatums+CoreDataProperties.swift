/*******************************************************
* AppcLclHorizDatums+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcLclHorizDatums {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcLclHorizDatums> {
        return NSFetchRequest<AppcLclHorizDatums>(entityName: "AppcLclHorizDatums")
    }

    @NSManaged public var country: String?
    @NSManaged public var datum: String?
    @NSManaged public var datumCode: String?

}
