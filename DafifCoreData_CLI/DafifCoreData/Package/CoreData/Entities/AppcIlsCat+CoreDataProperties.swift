/*******************************************************
* AppcIlsCat+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcIlsCat {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcIlsCat> {
        return NSFetchRequest<AppcIlsCat>(entityName: "AppcIlsCat")
    }

    @NSManaged public var cat: String?
    @NSManaged public var description_: String?

}
