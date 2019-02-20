//
//  Kula.swift
//  Kula
//
//  Created by Jason Beck on 2/19/19.
//  Copyright © 2019 Jason Beck. All rights reserved.
//

///Protocol that all Kula objects must conform to.
protocol KulaProtocol: class {
	///Initialize the Kula object with Netflix credentials
	init<T: NetflixCredentialProtocol>(withNetflixCredential netflixCredential: T)
	
	///The Credential used for API calls to Shakti
	var netflixCredential: NetflixCredential {get set}
}

final class Kula: KulaProtocol {
	public var netflixCredential: NetflixCredential
	
	public required init<T>(withNetflixCredential credential: T) where T : NetflixCredentialProtocol {
		netflixCredential = NetflixCredential(netflixID: credential.netflixID, secureNetflixID: credential.secureNetflixID)
	}
}
