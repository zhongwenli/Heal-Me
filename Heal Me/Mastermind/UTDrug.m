/**
 * UTDrug.m
 * AUTH: TJIONGAN, Christopher
 * Unit test for Drug class
 */

#import <DataStruct/Drug.m>

int main (int argc, const char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	// Test 1: Constructor
	NSLog (@"Test 1: Constructor");
	
	Drug *drug;
	drug = [[Drug alloc] init];
	NSLog (@"--Test: init");	
	
	NSLog (@"Complete");
	NSLog (@"--------");
		
	// Test 2: Accessor	
	NSLog (@"Test 2: Accessor");
	
	Dose *testDose = [[Dose alloc] init];
	[drug setDose: testDose];
	NSLog (@"--Test: setDose");
	
	[testDose setDose: 100];
	NSLog (@"----Test: setDose-setDose-%@", [NSString stringWithFormat:@"%f", drug.dose.dose]);
	
	[testDose setRemaining: 100];
	NSLog (@"----Test: setDose-setRemaining-%@", [NSString stringWithFormat:@"%f", drug.dose.remaining]);
	
	[testDose setForm: @"----Test: setDose-setForm"];
	NSLog (drug.dose.form);
	
	[testDose setInstruction: @"----Test: setDose-setInstruction"];
	NSLog (drug.dose.instruction);
	
	[testDose setRemark: @"----Test: setDose-setRemark"];
	NSLog (drug.dose.remark);
	
	[drug setName: @"--Test: setName"];
	NSLog (drug.name);
	
	NSMutableArray *testArrayAlarm = [[NSMutableArray alloc] init];
	NSDate *testArrayAlarmEntry = [NSDate date];
	[testArrayAlarm addObject: testArrayAlarmEntry];
	[drug setArrayAlarm: testArrayAlarm];
	NSLog (@"--Test: setAlarm-%@", [drug.arrayAlarm objectAtIndex: 0]);

	[drug setDrugID: 100];
	NSLog (@"--Test: setDrugID-%@", [NSString stringWithFormat:@"%f", drug.drugID]);

	NSLog (@"Complete");
	NSLog (@"--------");

	[pool drain];
	return 0;
}
