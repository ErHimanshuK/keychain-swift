//
//  KeychainSwift+Account.swift
//
//
//  Created by Scott Little on 11/09/2023.
//

import Foundation
import KeychainBase

extension KeychainSwift {
	
	func password(account: KeychainAccount) -> String? {
		return get(account.keychainAccountName, service: account.keychainServiceName, label: account.keychainLabelName)
	}
	
	func data(account: KeychainAccount) -> Data? {
		return getData(account.keychainAccountName, service: account.keychainServiceName, label: account.keychainLabelName)
	}
	
	func deletePassword(account: KeychainAccount) -> Bool {
		return delete(account.keychainAccountName, service: account.keychainServiceName)
	}
	
	func set(_ password: String, account: KeychainAccount) -> Bool {
		return set(password, forKey: account.keychainAccountName, service: account.keychainServiceName, label: account.keychainLabelName)
	}
	
	func set(_ passwordData: Data, account: KeychainAccount) -> Bool {
		return set(passwordData, forKey: account.keychainAccountName, service: account.keychainServiceName, label: account.keychainLabelName)
	}
	
}
