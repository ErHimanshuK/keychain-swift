import Foundation
import Security

/// Constants used by the library
public struct KeychainSwiftConstants {
	/// Specifies a Keychain access group. Used for sharing Keychain items between apps.
	public static var accessGroup: String { return toString(kSecAttrAccessGroup) }
	
	/**
	 
	 A value that indicates when your app needs access to the data in a keychain item. The default value is AccessibleWhenUnlocked. For a list of possible values, see KeychainSwiftAccessOptions.
	 
	 */
	public static var accessible: String { return toString(kSecAttrAccessible) }
	
	/// Used for specifying a String key when setting/getting a Keychain value.
	public static var attrAccount: String { return toString(kSecAttrAccount) }
	
	/// Used for specifying a String label when setting/getting a Keychain value.
	public static var attrLabel: String { return toString(kSecAttrLabel) }
	
	/// Used for specifying a String service name when setting/getting a Keychain value.
	public static var attrService: String { return toString(kSecAttrService) }
	
	/// Used for specifying synchronization of keychain items between devices.
	public static var attrSynchronizable: String { return toString(kSecAttrSynchronizable) }
	
	/// Used for specifying data protection type (non file-based keychain) of keychain items.
    @available(macOS 10.15, *)
    public static var attrUseDataProtection: String { return toString(kSecUseDataProtectionKeychain) }
	
	/// An item class key used to construct a Keychain search dictionary.
	public static var klass: String { return toString(kSecClass) }
	
	/// Specifies the number of values returned from the keychain. The library only supports single values.
	public static var matchLimit: String { return toString(kSecMatchLimit) }
	
	/// A return data type used to get the data from the Keychain.
	public static var returnData: String { return toString(kSecReturnData) }
	
	/// Used for specifying a value when setting a Keychain value.
	public static var valueData: String { return toString(kSecValueData) }
	
	/// Used for returning a reference to the data from the keychain
	public static var returnReference: String { return toString(kSecReturnPersistentRef) }
	
	/// A key whose value is a Boolean indicating whether or not to return item attributes
	public static var returnAttributes : String { return toString(kSecReturnAttributes) }
	
	/// A value that corresponds to matching an unlimited number of items
	public static var secMatchLimitAll : String { return toString(kSecMatchLimitAll) }
	
	static func toString(_ value: CFString) -> String {
		return value as String
	}
	
}


