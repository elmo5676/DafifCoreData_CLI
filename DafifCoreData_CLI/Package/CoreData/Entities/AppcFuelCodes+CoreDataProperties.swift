/*******************************************************
* AppcFuelCodes+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcFuelCodes {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcFuelCodes> {
        return NSFetchRequest<AppcFuelCodes>(entityName: "AppcFuelCodes")
    }

    @NSManaged public var aka: String?
    @NSManaged public var description_: String?
    @NSManaged public var eefc: String?
    @NSManaged public var flip: String?
    @NSManaged public var fuelCode: String?
    @NSManaged public var nato: String?

}
