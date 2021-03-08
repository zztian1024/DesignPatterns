//
//  Log.swift
//  Factory Method
//
//  Created by Tian on 2021/2/24.
//

import Foundation

protocol Logger {
    func logMessage(_ message: String?)
}

protocol LoggerFactory {
    static func logger() -> Logger
}

class FileLoggerFactory: LoggerFactory {
    static func logger() -> Logger {
        return FileLogger()
    }
}

class TerminalLoggerFactory: LoggerFactory {
    static func logger() -> Logger {
        return TerminalLogger()
    }
}

class FileLogger : Logger {
    func logMessage(_ message: String?) {
        print("FileLog: \(message ?? "")")
    }
}

class TerminalLogger : Logger {
    func logMessage(_ message: String?) {
        print("TerminalLog: \(message ?? "")")
    }
}
