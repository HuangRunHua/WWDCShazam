//
//  CatalogProvider.swift
//  WWDC21Shazam
//
//  Created by Runhua Huang on 2021/6/17.
//

import ShazamKit


struct CatalogProvider {
    
    static func catalog() throws -> SHCustomCatalog? {
        let allMediaItems = [
            SHMediaItem(properties: [.title: "WWDC21", .subtitle: "Introducing iOS 15, iPadOS 15,macOS Monterey, and watchOS 8.", .session: 1, .speaker: "Apple Engineers"])
        ]
        let customCatalog = SHCustomCatalog()
        for item in allMediaItems {
            if let signature = try getSignatureFile(fileResource: item.title!) {
                try customCatalog.addReferenceSignature(signature, representing: [item])
            }
        }
        return customCatalog
    }
    
    
    static func getSignatureFile(fileResource: String) throws ->SHSignature? {
        guard let signaturePath = Bundle.main.url(forResource: fileResource, withExtension: "shazamsignature") else {
            print("No .shazamsignature File Found")
            return nil
        }
        let signatureData = try Data(contentsOf: signaturePath)
        let signature = try SHSignature(dataRepresentation: signatureData)
        return signature
    }
    
}
