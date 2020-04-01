/*******************************************************
* HlptRmk+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension HlptRmk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<HlptRmk> {
        return NSFetchRequest<HlptRmk>(entityName: "HlptRmk")
    }

    @NSManaged public var cycleDate: String?
    @NSManaged public var heliIdent: String?
    @NSManaged public var remark: String?
    @NSManaged public var rmkSeq: String?

}
