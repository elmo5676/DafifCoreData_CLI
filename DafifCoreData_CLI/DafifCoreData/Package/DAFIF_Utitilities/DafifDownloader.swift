/*******************************************************
* <#here#>
* Copyright © 4bitCrew, LLC - All Rights Reserved
* Created on 3/26/20, for DafifViewer
* Matthew Elmore <matt@4bitCrew.com>
* Unauthorized copying of this file is strictly prohibited
********************************************************/

import SwiftUI
import Combine

class DafifDownloader: NSObject, ObservableObject, URLSessionDelegate, URLSessionDownloadDelegate, URLSessionTaskDelegate, BundleHelper {
    
    public static var shared = DafifDownloader()
    
    @Published var downloadProgress: CGFloat = 0 
    @Published var errorDownloading: Bool = false
    
    func downloadDafif(from dafifUrl: URL?) {
        self.errorDownloading = false
        guard let dafifLocation = dafifUrl else { return }
        let urlSession: URLSession = {
            return URLSession(configuration: .default, delegate: self, delegateQueue: OperationQueue.main)
        }()
        let request = URLRequest(url: dafifLocation)
        let task = urlSession.downloadTask(with: request)
        task.resume()
    }
    
    //Delegate functions
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
        let written = Double(totalBytesWritten)
        let total = Double(totalBytesExpectedToWrite)
        self.downloadProgress = CGFloat(written/total)
    }

    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        do  {
            let dafifLocalLocation = getUrl(.dafifZipped)//self.dafifZippedLocalLocation else { return }
            if let _ = NSData(contentsOf: dafifLocalLocation) {
                try FileManager.default.removeItem(at: dafifLocalLocation)
            }
            try FileManager.default.copyItem(at: location, to: dafifLocalLocation)
        } catch {
            print(error)
        }
        DafifUnzipper.shared.unZipDafif()
    }
    
    func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?) {
        if error != nil {
            self.errorDownloading = true
        }
        print(error ?? "No error")
    }
}



