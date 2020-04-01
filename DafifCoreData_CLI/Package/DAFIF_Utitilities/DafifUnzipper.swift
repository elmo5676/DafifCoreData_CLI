/*******************************************************
* <#here#>
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/

import SwiftUI
import Zip
import Combine

class DafifUnzipper: ObservableObject, BundleHelper, CoreDataUtilities {
    
    public static var shared = DafifUnzipper()
    
    @Published var unzipProgress: CGFloat = 0.0
    @Published var errorUnzipping: Bool = false
    
    public func progressUnzip(_ perc: Double) {
        unzipProgress = CGFloat(perc)
    }
    
    public func unZipDafif() {
        unzipProgress = 0.0
        errorUnzipping = false
        do {
            let filePath = getUrl(.dafifZipped)
            try Zip.unzipFile(filePath, destination: getUrl(.documents), overwrite: true, password: nil, progress: progressUnzip(_:), fileOutputHandler: nil)
        } catch {
            errorUnzipping = true
            print(error)
        }
        
        do {
            unzipProgress = 0
            let filePath = getUrl(.dafif_T_Zipped)
            try Zip.unzipFile(filePath, destination: getUrl(.documents), overwrite: true, password: nil, progress: progressUnzip(_:), fileOutputHandler: nil)
        } catch {
            errorUnzipping = true
            print(error)
        }

        //Cleaning Up
        deleteAllFilesExcept("DAFIFT")
        DafifCoreDataLoader.loadData()
    }

}



