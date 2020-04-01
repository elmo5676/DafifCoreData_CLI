/*******************************************************
* <#here#>
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/

import SwiftUI
import CoreData

public enum Directory: CaseIterable {
    case dafifCloud
    case dafifZipped
    case dafif_T_Zipped
    case documents
    case dafifT
    case arpt
    case nav
    case ats
    case pr
    case supp
    case bdry
    case wpt
    case papp
    case supph
    case trm
    case tz
    case trmh
    case mtr
    case arf
    case ortca
    case hlpt
    case appc
    case suas
    case pja
    case ir
    case vfr
    case hold
}

/// A Conglomerate of useful items that can be used accross the app. From folder and file utilities to App/SceneDelgate items.
protocol BundleHelper {}

extension BundleHelper {
    
    // MARK: - Debugging and TroubleShooting
    public func printContentsOf(_ dir: Directory) {
        do {
            print(try FileManager.default.contentsOfDirectory(at: getUrl(dir), includingPropertiesForKeys: nil, options: []))
        } catch { print(error) }}
    
    public func printEverything() {
        for i in Directory.allCases {
            printContentsOf(i)
        }}
    
    //MARK: - File Handling
    public func getData(from: String, inDir: Directory) -> [[String]] {
        var contents: String = ""
        var result: [[String]] = []
        do {
            contents = try String(contentsOf: getUrl(inDir).appendingPathComponent(from))
        } catch {
            do {
                contents = try String(contentsOf: getUrl(inDir).appendingPathComponent(from), encoding: .iso2022JP)
            } catch {
                print("*************::NGA WINS! YOU LOSE!!!")
            }
            print("DAMMIT NGA! GET YOUR SHIT TOGETHER!!!")
        }
        let records = contents.components(separatedBy: "\n")
        for i in 0..<records.count {
            if i >= 1 {
                let properties = records[i].components(separatedBy: "\t")
                result.append(properties)
            }}
        return result
    }
    
    public func deleteAllFilesExcept(_ name: String) {
        do {
            let listOfFiles = try FileManager.default.contentsOfDirectory(at: getUrl(.documents), includingPropertiesForKeys: nil, options: [])
            for url in listOfFiles {
                if url.lastPathComponent != name {
                    try FileManager.default.removeItem(at: url)
                }}} catch { print(error) }}
    
    
    public var listOfDafiftFolders: [String] {
        ["HOLD", "ATS", "PR", "NAV", "SUPP", "BDRY", "WPT", "PAPP", "SUPPH", "TRM", "TZ", "TRMH", "ARPT", "MTR", "ARF", "ORTCA", "HLPT", "APPC", "SUAS", "PJA", "IR", "VFR"]
    }
    
    public func getUrl(_ forLoc: Directory) -> URL {
        let fm = FileManager.default
        let documents = fm.urls(for:.documentDirectory, in: .userDomainMask)[0]
        switch forLoc {
        case .dafifCloud:
            return URL(string: "https://s3-us-west-2.amazonaws.com/9ogv-filestorage/DAFIF/DAFIF8.zip") ?? documents
        case .dafifZipped:
            return fm.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("DAFIF8.zip") ?? documents
        case .dafif_T_Zipped:
            return fm.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("DAFIFT.zip") ?? documents
        case .documents:
            return documents
        case .dafifT:
            return documents.appendingPathComponent("DAFIFT")
        case .arpt:
            return documents.appendingPathComponent("DAFIFT/ARPT")
        case .nav:
            return documents.appendingPathComponent("DAFIFT/NAV")
        case .ats:
            return documents.appendingPathComponent("DAFIFT/ATS")
        case .pr:
            return documents.appendingPathComponent("DAFIFT/PR")
        case .supp:
            return documents.appendingPathComponent("DAFIFT/SUPP")
        case .bdry:
            return documents.appendingPathComponent("DAFIFT/BDRY")
        case .wpt:
            return documents.appendingPathComponent("DAFIFT/WPT")
        case .papp:
            return documents.appendingPathComponent("DAFIFT/PAPP")
        case .supph:
            return documents.appendingPathComponent("DAFIFT/SUPPH")
        case .trm:
            return documents.appendingPathComponent("DAFIFT/TRM")
        case .tz:
            return documents.appendingPathComponent("DAFIFT/TZ")
        case .trmh:
            return documents.appendingPathComponent("DAFIFT/TRMH")
        case .mtr:
            return documents.appendingPathComponent("DAFIFT/MTR")
        case .arf:
            return documents.appendingPathComponent("DAFIFT/ARF")
        case .ortca:
            return documents.appendingPathComponent("DAFIFT/ORTCA")
        case .hlpt:
            return documents.appendingPathComponent("DAFIFT/HLPT")
        case .appc:
            return documents.appendingPathComponent("DAFIFT/APPC")
        case .suas:
            return documents.appendingPathComponent("DAFIFT/SUAS")
        case .pja:
            return documents.appendingPathComponent("DAFIFT/PJA")
        case .ir:
            return documents.appendingPathComponent("DAFIFT/IS")
        case .vfr:
            return documents.appendingPathComponent("DAFIFT/VFR")
        case .hold:
            return documents.appendingPathComponent("DAFIFT/HOLD")
        }}
}


















