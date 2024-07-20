import Foundation

class MainViewModel {
    
    private let logger: Logger
    var logsList = [String]()
    
    init(logger: Logger) {
        self.logger = logger
    }
    
    func logData(className: String) {
        logsList.append(logger.logDebug(message: className))
        logsList.append(logger.logInfo(message: className))
        logsList.append(logger.logWarn(message: className))
        logsList.append(logger.logError(message: className))
    }
}
