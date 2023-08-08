import Foundation
#if canImport(silentauth_sdk_ios)
import silentauth_sdk_ios
#else
import SilentAuthSDK
#endif

open class VGSilentAuthClient {
    private let sdk: SilentAuthSDK
    
    public init() {
        sdk = SilentAuthSDK()
    }
    
    /// This method perform open a given a URL over a data cellular connectivity
    /// - Parameters:
    ///   - url: URL of the Vonage Verify API
    ///   - debug A flag to include or not the url trace in the response
    ///   - completion: closure to report the URL response. Note that, this closure will be called on the Main Thread.
    public func openWithDataCellular(url: URL, debug: Bool, completion: @escaping ([String : Any]) -> Void) {
        sdk.openWithDataCellular(url: url, debug: debug, completion: completion)
    }

    /// This method perform open a given a URL over a data cellular connectivity
    /// - Parameters:
    ///   - url: URL of the Vonage Verify API
    ///   - accessToken Optional Access Token to be added in the Authorization header (Bearer)
    ///   - debug A flag to include or not the url trace in the response
    ///   - completion: closure to report the URL response. Note that, this closure will be called on the Main Thread.
    public func openWithDataCellularAndAccessToken(url: URL, accessToken: String?, debug: Bool, completion: @escaping ([String : Any]) -> Void) {
        sdk.openWithDataCellularAndAccessToken(url: url, accessToken: accessToken, debug: debug, completion: completion)
    }
}
