/*******************************************************
* AppcCcIcao+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcCcIcao {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcCcIcao> {
        return NSFetchRequest<AppcCcIcao>(entityName: "AppcCcIcao")
    }

    @NSManaged public var country: String?
    @NSManaged public var countryName: String?
    @NSManaged public var icaoRgn: String?
    @NSManaged public var usage: String?

}
