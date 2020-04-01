/*******************************************************
* AppcIlsColctn+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcIlsColctn {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcIlsColctn> {
        return NSFetchRequest<AppcIlsColctn>(entityName: "AppcIlsColctn")
    }

    @NSManaged public var colctn: String?
    @NSManaged public var description_: String?

}
