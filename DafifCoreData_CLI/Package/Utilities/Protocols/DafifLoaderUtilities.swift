/*******************************************************
* <#here#>
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/

import SwiftUI

protocol DafifLoaderUtilities: BundleHelper {
    
//    var percentComplete: CGFloat { get set }
    
    var fileNames: [String] { get set }
    
    func getData(from: String, inDir: Directory) -> [[String]]
}

