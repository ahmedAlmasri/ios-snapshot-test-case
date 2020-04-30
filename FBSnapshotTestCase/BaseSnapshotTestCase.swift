//
//  BaseSnapshotTestCase.swift
//  FBSnapshotTestCase iOS
//
//  Created by Ahmad Almasri on 5/1/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation

open class BaseSnapshotTestCase: FBSnapshotTestCase {
	
	var rootPath: String {
		guard let root = Bundle(for: Self.self).object(forInfoDictionaryKey: "ROOT") as? String
			else {
				fatalError("the `ROOT` key not added to info.plist")
		}
		return "\(root)\(Self.self)"
	}
	
	public override func getReferenceImageDirectory(withDefault dir: String?) -> String {
		
		return "\(rootPath)/ReferenceImages"
	}
	
	public override func getImageDiffDirectory(withDefault dir: String?) -> String {
				
		return "\(rootPath)/FailureDiffs"
	}
}
