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
		guard let pw = get(account.keychainAccountName, service: account.keychainServiceName, label: account.keychainLabelName) else {
			return migratePassword(account.keychainAccountName, service: account.keychainServiceName, label: account.keychainLabelName)
		}
		return pw
	}
	
	func data(account: KeychainAccount) -> Data? {
		guard let data = getData(account.keychainAccountName, service: account.keychainServiceName, label: account.keychainLabelName) else {
			return migrateData(account.keychainAccountName, service: account.keychainServiceName, label: account.keychainLabelName)
		}
		return data
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
