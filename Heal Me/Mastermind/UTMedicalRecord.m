/**
 * UTMedicalRecord.m
 * AUTH: TJIONGAN, Christopher
 * Unit test for MedicalRecord class
 */

#import <DataStruct/MedicalRecord.m>

#import <DataStruct/Drug.m>
#import <DataStruct/Multimedia.m>

int main (int argc, const char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// Test 1: Constructor
	NSLog (@"Test 1: Constructor");
	
	MedicalRecord *medicalRecord;
	medicalRecord = [[MedicalRecord alloc] init];
	NSLog (@"--Test: init");	
	
	NSLog (@"Complete");
	NSLog (@"--------");
		
	// Test 2: Accessor	
	NSLog (@"Test 2: Accessor");
	
	// medicalRecord.appointment

	Appointment *testAppointment = [[Appointment alloc] init];
	[medicalRecord setAppointment: testAppointment];
	NSLog (@"--Test: setAppointment");
	
	Doctor *testDoctor = [[Doctor alloc] init];
	[testAppointment setDoctor: testDoctor];
	NSLog (@"----Test: setAppointment-setDoctor");
	
	[testDoctor setName: @"------Test: setAppointment-setDoctor-setName"];
	NSLog (medicalRecord.appointment.doctor.name);
	
	[testDoctor setDepartment: @"------Test: setAppointment-setDoctor-setDepartment"];
	NSLog (medicalRecord.appointment.doctor.department);
	
	NSDate *testDate = [NSDate date];
	[testAppointment setDate: testDate];
	NSLog (@"----Test: setAppointment-setDate-%@", medicalRecord.appointment.date);

	[testAppointment setRemark: @"----Test: setAppointment-setRemark"];
	NSLog (medicalRecord.appointment.remark);

	[testAppointment setPrecaution: @"----Test: setAppointment-setPrecaution"];	
	NSLog (medicalRecord.appointment.precaution);
	
	[testAppointment setStatus: 100];
	NSLog (@"----Test: setAppointment-setStatus-%@", [NSString stringWithFormat:@"%d", medicalRecord.appointment.status]);

	[testAppointment setAppointmentID: 100];
	NSLog (@"----Test: setAppointment-setAppointmentID-%@", [NSString stringWithFormat:@"%d", medicalRecord.appointment.appointmentID]);	
	
	// medicalRecrd.test
	
	Test *testTest = [[Test alloc] init];
	[medicalRecord setTest: testTest];
	NSLog (@"--Test: setTest");

	[testTest setType: @"----Test: setTest-setType"];
	NSLog (medicalRecord.test.type);

	[testTest setResult: @"----Test: setTest-setResult"];
	NSLog (medicalRecord.test.result);

	[testTest setIsSelf: 100];
	NSLog (@"----Test: setTest-setIsSelf-%@", [NSString stringWithFormat:@"%d", medicalRecord.test.isSelf]);

	[testTest setTestID: 100];
	NSLog (@"----Test: setTest-setTestID-%@", [NSString stringWithFormat:@"%d", medicalRecord.test.testID]);
	
	// medicalRecord.arrayDrug
	
	NSMutableArray *testArrayDrug = [[NSMutableArray alloc] init];
	Drug *testArrayDrugEntry = [[Drug alloc] init];
	[testArrayDrug addObject: testArrayDrugEntry];
	[medicalRecord setArrayDrug: testArrayDrug];
	NSLog (@"--Test: setArrayDrug");	
	
	Dose *testDose = [[Dose alloc] init];
	[testArrayDrugEntry setDose: testDose];
	NSLog (@"----Test: setArrayDrug-setDose");
	
	Drug *testDrugEntry = [medicalRecord.arrayDrug objectAtIndex: 0];

	[testDose setDose: 100];
	NSLog (@"------Test: setArrayDrug-setDose-setDose-%@", [NSString stringWithFormat:@"%f", testDrugEntry.dose.dose]);
	
	[testDose setRemaining: 100];
	NSLog (@"------Test: setArrayDrug-setDose-setRemaining-%@", [NSString stringWithFormat:@"%f", testDrugEntry.dose.remaining]);
	
	[testDose setForm: @"------Test: setArrayDrug-setDose-setForm"];
	NSLog (testDrugEntry.dose.form);
	
	[testDose setInstruction: @"------Test: setArrayDrug-setDose-setInstruction"];
	NSLog (testDrugEntry.dose.instruction);
	
	[testDose setRemark: @"------Test: setArrayDrug-setDose-setRemark"];
	NSLog (testDrugEntry.dose.remark);
	
	[testArrayDrugEntry setName: @"----Test: setArrayDrug-setName"];
	NSLog (testDrugEntry.name);
	
	NSMutableArray *testArrayAlarm = [[NSMutableArray alloc] init];
	NSDate *testArrayAlarmEntry = [NSDate date];
	[testArrayAlarm addObject: testArrayAlarmEntry];
	[testArrayDrugEntry setArrayAlarm: testArrayAlarm];
	NSLog (@"----Test: setArrayDrug-setAlarm-%@", [testDrugEntry.arrayAlarm objectAtIndex: 0]);

	[testArrayDrugEntry setDrugID: 100];
	NSLog (@"----Test: setArrayDrug-setDrugID-%@", [NSString stringWithFormat:@"%f", testDrugEntry.drugID]);
	
	// medicalRecord.arrayMultimedia

	NSMutableArray *testArrayMultimedia = [[NSMutableArray alloc] init];
	Multimedia *testArrayMultimediaEntry = [[Multimedia alloc] init];
	[testArrayMultimedia addObject: testArrayMultimediaEntry];
	[medicalRecord setArrayMultimedia: testArrayMultimedia];
	NSLog (@"--Test: setArrayMultimedia");
	
	Multimedia *testMultimediaEntry = [medicalRecord.arrayMultimedia objectAtIndex: 0];

	[testArrayMultimediaEntry setUrl: @"----Test: setArrayMultimedia-setUrl"];
	NSLog (testMultimediaEntry.url);
	
	[testArrayMultimediaEntry setType: @"----Test: setArrayMultimedia-setType"];
	NSLog (testMultimediaEntry.type);
	
	[testArrayMultimediaEntry setMultimediaID: 100];
	NSLog (@"----Test: setArrayMultimedia-setMultimediaID-%@", [NSString stringWithFormat:@"%d", testMultimediaEntry.multimediaID]);

	// medicalRecord.doctorNote

	[medicalRecord setDoctorNote: @"--Test: setDoctorNote"];
	NSLog (medicalRecord.doctorNote);

	// medicalRecord.patientRemark

	[medicalRecord setPatientRemark: @"--Test: setPatientRemark"];
	NSLog (medicalRecord.patientRemark);

	// medicalRecord.medicalRecordID

	[medicalRecord setMedicalRecordID: 100];
	NSLog (@"--Test: setMedicalRecordID-%@", [NSString stringWithFormat:@"%d", medicalRecord.medicalRecordID]);
	
	NSLog (@"Complete");
	NSLog (@"--------");

	[pool drain];
	return 0;
}
