//
//  UserInfo.swift
//  SheetSurfer
//
//  Created by Connor Marsh (student LM) on 2/10/21.
//  Copyright © 2021 Connor Marsh (student LM). All rights reserved.
//

import Foundation
import FirebaseAuth

class UserInfo: ObservableObject {
    enum FBAuthState {
        case undefined, signedOut, signedIn
    }
    @Published var isUserAuthenticated: FBAuthState = .undefined
    
    func configureFirebaseStateDidChange() {
        if let _ = Auth.auth().currentUser {
            self.isUserAuthenticated = .signedIn
        }
        else {
            self.isUserAuthenticated = .signedOut
        }
    }
}
