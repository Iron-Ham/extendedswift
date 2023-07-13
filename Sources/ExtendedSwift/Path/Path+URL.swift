//
//  File.swift
//  
//
//  Created by Dave DeLong on 4/2/23.
//

import Foundation

extension URL {
    
    public var absolutePath: Path { Path(fileSystemPath: self.path(percentEncoded: false)) }
    
}

extension URLComponents {
    
    public var absolutePath: Path {
        get { Path(fileSystemPath: self.path) }
        set { self.path = newValue.fileSystemPath }
    }
    
}
