//
//  Data.swift
//  zip-git
//
//  Created by Tia King on 1/22/18.
//  Copyright © 2018 Tia King. All rights reserved.
//

import Foundation

struct Data {
    let collectionName: String
    let zippedImagesUrl: String
}
extension Data: Decodable {
    enum decoderKeys: String, CodingKey {
        case collectionName = "collection_name"
        case zippedImagesUrl = "zipped_images_url"
}
    init(from decoder:Decoder) throws {
        let container = try? decoder.container(keyedBy: decoderKeys.self)
        collectionName = (try container?.decodeIfPresent(String.self, forKey: .collectionName))!
        zippedImagesUrl = (try container?.decodeIfPresent(String.self, forKey: .zippedImagesUrl))!
    }

}
