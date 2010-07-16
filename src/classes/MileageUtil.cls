public with sharing class MileageUtil {
	// 変更を加えた
	static final Integer MAX_MILES_PER_DAY = 500;
	public static void areMilesAllowed(Mileage__c[] miles){
		String createdbyId = Userinfo.getUserId();
		Double totalMiles = 0;
		for(Mileage__c mq:[SELECT miles__c FROM Mileage__c
			WHERE Date__c =TODAY
			AND Mileage__c.CreatedById = :createdbyId
			AND miles__c != null]) {
				totalMiles += mq.miles__c;
			}
	}
}