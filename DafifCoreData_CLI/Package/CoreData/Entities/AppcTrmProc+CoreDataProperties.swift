/*******************************************************
* AppcTrmProc+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension AppcTrmProc {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AppcTrmProc> {
        return NSFetchRequest<AppcTrmProc>(entityName: "AppcTrmProc")
    }

    @NSManaged public var description_: String?
    @NSManaged public var proc: String?

}
