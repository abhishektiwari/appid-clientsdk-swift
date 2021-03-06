/* *     Copyright 2016, 2017, 2018 IBM Corp.
 *     Licensed under the Apache License, Version 2.0 (the "License");
 *     you may not use this file except in compliance with the License.
 *     You may obtain a copy of the License at
 *     http://www.apache.org/licenses/LICENSE-2.0
 *     Unless required by applicable law or agreed to in writing, software
 *     distributed under the License is distributed on an "AS IS" BASIS,
 *     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *     See the License for the specific language governing permissions and
 *     limitations under the License.
 */

import Foundation

public protocol UserProfileManager {

    func setAttribute(key: String, value: String, completionHandler: @escaping(Error?, [String:Any]?) -> Void)
    func setAttribute(key: String, value: String, accessTokenString: String, completionHandler: @escaping(Error?, [String:Any]?) -> Void)
    func getAttribute(key: String, completionHandler: @escaping(Error?, [String:Any]?) -> Void)
    func getAttribute(key: String, accessTokenString: String, completionHandler: @escaping(Error?, [String:Any]?) -> Void)
    func getAttributes(completionHandler: @escaping(Error?, [String:Any]?) -> Void)
    func getAttributes(accessTokenString: String, completionHandler: @escaping(Error?, [String:Any]?) -> Void)
    func deleteAttribute(key: String, completionHandler: @escaping(Error?, [String:Any]?) -> Void)
    func deleteAttribute(key: String, accessTokenString: String, completionHandler: @escaping(Error?, [String:Any]?) -> Void)
    func getUserInfo(completionHandler: @escaping (Error?, [String: Any]?) -> Void)
    func getUserInfo(accessTokenString: String, identityTokenString: String?, completionHandler: @escaping (Error?, [String: Any]?) -> Void)

}
