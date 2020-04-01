/*******************************************************
* VfrRteRmk+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension VfrRteRmk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VfrRteRmk> {
        return NSFetchRequest<VfrRteRmk>(entityName: "VfrRteRmk")
    }

    @NSManaged public var cycleDate: String?
    @NSManaged public var heliIdent: String?
    @NSManaged public var remarks: String?
    @NSManaged public var rmkSeq: String?

}
