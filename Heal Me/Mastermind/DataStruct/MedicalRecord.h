/**
 * MedicalRecord.h
 * AUTH: TJIONGAN, Christopher
 */

#import <Foundation/Foundation.h>
#import <DataStruct/Appointment.m>
#import <DataStruct/Test.m>

@interface MedicalRecord: NSObject
{
	Appointment *appointment;
	
	Test *test;

	NSMutableArray *arrayDrug;
	NSMutableArray *arrayMultimedia;
	
	NSString *doctorNote;
    	NSString *patientRemark;

    	int medicalRecordID;
}

@property (retain) Appointment *appointment;

@property (retain) Test *test;

@property (retain) NSMutableArray *arrayDrug;
@property (retain) NSMutableArray *arrayMultimedia;

@property (retain) NSString *doctorNote;
@property (retain) NSString *patientRemark;
	    	
@property int medicalRecordID;

@end
