/*******************************************************
* TrmRmk+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension TrmRmk {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TrmRmk> {
        return NSFetchRequest<TrmRmk>(entityName: "TrmRmk")
    }

    @NSManaged public var appType: String?
    @NSManaged public var arptIdent: String?
    @NSManaged public var cycleDate: String?
    @NSManaged public var icao: String?
    @NSManaged public var proc: String?
    @NSManaged public var remarks: String?
    @NSManaged public var rmkSeq: String?
    @NSManaged public var rmkType: String?
    @NSManaged public var trmIdent: String?

}
