import Security
import Foundation

/**
 
 This file can be used in your ObjC project if you want to use KeychainSwift Swift library.
 Extend this file to add other functionality for your app.
 
 How to use
 ----------
 
 1. Import swift code in your ObjC file:
 
 #import "YOUR_PRODUCT_MODULE_NAME-Swift.h"
 
 2. Use KeychainSwift in your ObjC code:
 
 - (void)viewDidLoad {
 [super viewDidLoad];
 
 KeychainSwiftCBridge *keychain = [[KeychainSwiftCBridge alloc] init];
 [keychain set:@"Hello World" forKey:@"my key"];
 NSString *value = [keychain get:@"my key"];
 
 3. You might need to remove `import KeychainSwift` import from this file in your project.
 
*/
@objc (KeychainSwift)
public class KeychainSwiftCBridge: NSObject {
	let keychain = KeychainSwift()
	
	@objc
	open var lastResultCode: OSStatus {
		get { return keychain.lastResultCode }
	}
	
	@objc
	open var keyPrefix: String {
		set { keychain.keyPrefix = newValue }
		get { return keychain.keyPrefix }
	}
	
	@objc
	open var accessGroup: String? {
		set { keychain.accessGroup = newValue }
		get { return keychain.accessGroup }
	}
	
	@objc
	open var synchronizable: Bool {
		set { keychain.synchronizable = newValue }
		get { return keychain.synchronizable }
	}
	
	@objc
	open var useFileKeychain: Bool {
		set { keychain.useFileKeychain = newValue }
		get { return keychain.useFileKeychain }
	}
	
	@objc (set:forKey:)
	@discardableResult
	open func set(_ value: String, forKey key: String) -> Bool {
		return keychain.set(value, forKey: key)
	}
	
	@objc (set:forKey:service:)
	@discardableResult
	open func set(_ value: String, forKey key: String, service: String) -> Bool {
		return keychain.set(value, forKey: key, service: service)
	}
	
	@objc (set:forKey:service:label:)
	@discardableResult
	open func set(_ value: String, forKey key: String, service: String, label: String) -> Bool {
		return keychain.set(value, forKey: key, service: service, label: label)
	}
	
	@objc (setData:forKey:)
	@discardableResult
	open func setData(_ value: Data, forKey key: String) -> Bool {
		return keychain.set(value, forKey: key)
	}
	
	@objc (setData:forKey:service:)
	@discardableResult
	open func setData(_ value: Data, forKey key: String, service: String) -> Bool {
		return keychain.set(value, forKey: key, service: service)
	}
	
	@objc (setData:forKey:service:label:)
	@discardableResult
	open func setData(_ value: Data, forKey key: String, service: String, label: String) -> Bool {
		return keychain.set(value, forKey: key, service: service, label: label)
	}
	
	@objc (setBool:forKey:)
	@discardableResult
	open func setBool(_ value: Bool, forKey key: String) -> Bool {
		return keychain.set(value, forKey: key)
	}
	
	@objc (setBool:forKey:service:)
	@discardableResult
	open func setBool(_ value: Bool, forKey key: String, service: String) -> Bool {
		return keychain.set(value, forKey: key, service: service)
	}
	
	@objc (setBool:forKey:service:label:)
	@discardableResult
	open func setBool(_ value: Bool, forKey key: String, service: String, label: String) -> Bool {
		return keychain.set(value, forKey: key, service: service, label: label)
	}
	
	@objc (passwordForKey:)
	open func get(_ key: String) -> String? {
		return keychain.get(key)
	}
	
	@objc (passwordForKey:service:)
	open func get(_ key: String, service: String) -> String? {
		return keychain.get(key, service: service)
	}
	
	@objc (passwordForKey:service:label:)
	open func get(_ key: String, service: String, label: String) -> String? {
		return keychain.get(key, service: service, label: label)
	}
	
	@objc (dataForKey:)
	open func getData(_ key: String) -> Data? {
		return keychain.getData(key)
	}
	
	@objc (dataForKey:service:)
	open func getData(_ key: String, service: String) -> Data? {
		return keychain.getData(key, service: service)
	}
	
	@objc (dataForKey:service:label:)
	open func getData(_ key: String, service: String, label: String) -> Data? {
		return keychain.getData(key, service: service, label: label)
	}

	@objc (boolForKey:)
	open func getBool(_ key: String) -> Bool {
		return keychain.getBool(key) ?? false
	}
	
	@objc (boolForKey:service:)
	open func getBool(_ key: String, service: String) -> Bool {
		return keychain.getBool(key, service: service) ?? false
	}
	
	@objc (boolForKey:service:label:)
	open func getBool(_ key: String, service: String, label: String) -> Bool {
		return keychain.getBool(key, service: service, label: label) ?? false
	}
	
	@objc (deleteForKey:)
	@discardableResult
	open func delete(_ key: String) -> Bool {
		return keychain.delete(key);
	}
	
	@objc (deleteForKey:service:)
	@discardableResult
	open func delete(_ key: String, service: String) -> Bool {
		return keychain.delete(key, service: service);
	}
	
	@discardableResult
	open func clear() -> Bool {
		return keychain.clear()
	}
}
