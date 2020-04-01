/*******************************************************
* MtrOv+CoreDataProperties
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/
//

import Foundation
import CoreData


extension MtrOv {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MtrOv> {
        return NSFetchRequest<MtrOv>(entityName: "MtrOv")
    }

    @NSManaged public var cycleDate: String?
    @NSManaged public var mtrIdent: String?
    @NSManaged public var nxBiSec: NSDecimalNumber?
    @NSManaged public var nxDlat: NSDecimalNumber?
    @NSManaged public var nxDlong: NSDecimalNumber?
    @NSManaged public var nxLat: String?
    @NSManaged public var nxLong: String?
    @NSManaged public var nxPoint: String?
    @NSManaged public var nxTrnDir: String?
    @NSManaged public var nxTrnRad: String?
    @NSManaged public var nxUsage: String?
    @NSManaged public var nxWdthL: NSDecimalNumber?
    @NSManaged public var nxWdthR: NSDecimalNumber?
    @NSManaged public var ptBiSec: String?
    @NSManaged public var ptDlat: NSDecimalNumber?
    @NSManaged public var ptDlong: NSDecimalNumber?
    @NSManaged public var ptIdent: String?
    @NSManaged public var ptLat: String?
    @NSManaged public var ptLong: String?
    @NSManaged public var ptTrnDir: String?
    @NSManaged public var ptTrnRad: String?
    @NSManaged public var ptUsage: String?
    @NSManaged public var ptWdthL: NSDecimalNumber?
    @NSManaged public var ptWdthR: NSDecimalNumber?
    @NSManaged public var segNbr: String?

}
