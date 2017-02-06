/* *     Copyright 2016, 2017 IBM Corp.
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
import BMSCore

public class AuthorizationHeaderHelper {
    //TODO: handle optionals
    
    
    
    public static func isAuthorizationRequired(for httpResponse: Response) -> Bool {
        return AuthorizationHeaderHelper.isAuthorizationRequired(statusCode: httpResponse.statusCode, header: (httpResponse.headers?[AppIDConstants.WWW_AUTHENTICATE_HEADER] as? String)!)
    }
    
    
    public static func isAuthorizationRequired(statusCode: Int?, header: String) -> Bool {
        
        if(statusCode! == 401 || statusCode! == 403) {
            if header.lowercased().hasPrefix(AppIDConstants.BEARER.lowercased()) && header.lowercased().contains(AppIDConstants.AUTH_REALM.lowercased()) {
                return true
            }
        }
        return false
    }
}
