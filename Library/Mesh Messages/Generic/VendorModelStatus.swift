// Created by Joseph Lindemuth
import Foundation

public struct VendorModelStatus: MeshResponse {
    

    // public static let opCode: UInt32 = 0xC35900 // TODO
    public var opCode: UInt32 {
        return self.myOpCode
    }
    public var parameters: Data? {
        return self.myParameters
    }

    public let myParameters: Data
    public let myOpCode: UInt32
    
    public init(parameters: Data, opCode: UInt32, modelId: Int, companyIdentifier: Int) {
        self.myParameters = parameters
        self.myOpCode = opCode;
        // print("Opcode is \(self.myOpCode)")
    }

    public init?(parameters: Data) {
        print("Should never reach here")
        return nil
    }
}
