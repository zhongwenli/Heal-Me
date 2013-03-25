/**
 * UTAppointment.m
 * AUTH: TJIONGAN, Christopher
 * Unit test for Appointment class
 */

#import <DataStruct/Appointment.m>

int main (int argc, const char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// Test 1: Constructor
	NSLog (@"Test 1: Constructor");
	
	Appointment *appointment;
	appointment = [[Appointment alloc] init];
	NSLog (@"--Test: init");	
	
	NSLog (@"Complete");
	NSLog (@"--------");
	
	// Test 2: Accessor	
	NSLog (@"Test 2: Accessor");
	
	Doctor *testDoctor = [[Doctor alloc] init];
	[appointment setDoctor: testDoctor];
	NSLog (@"--Test: setDoctor");
	
	[testDoctor setName: @"----Test: setDoctor-setName"];
	NSLog (appointment.doctor.name);
	
	[testDoctor setDepartment: @"----Test: setDoctor-setDepartment"];
	NSLog (appointment.doctor.department);
	
	NSDate *testDate = [NSDate date];
	[appointment setDate: testDate];
	NSLog (@"--Test: setDate-%@", testDate);

	[appointment setRemark: @"--Test: setRemark"];
	NSLog (appointment.remark);

	[appointment setPrecaution: @"--Test: setPrecaution"];	
	NSLog (appointment.precaution);
	
	[appointment setStatus: 100];
	NSLog (@"--Test: setStatus-%@", [NSString stringWithFormat:@"%d", appointment.status]);

	[appointment setAppointmentID: 100];
	NSLog (@"--Test: setAppointmentID-%@", [NSString stringWithFormat:@"%d", appointment.appointmentID]);
	
	NSLog (@"Complete");
	NSLog (@"--------");

	[pool drain];
	return 0;
}
