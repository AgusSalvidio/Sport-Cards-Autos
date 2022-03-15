Class {
	#name : #CarSpecification,
	#superclass : #Object,
	#instVars : [
		'topSpeed',
		'rpm',
		'acceleration',
		'power',
		'maneuverability',
		'traction',
		'fuelConsumption',
		'cylinderCapacity',
		'weight',
		'brakeSystem'
	],
	#category : #'SCA-Car-Specification-Model'
}

{ #category : #asserting }
CarSpecification class >> assertIsValidAcceleration: anAccelerationAmount [

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				enforce: [ anAccelerationAmount amount isFloat  ]
				because: 'A car card acceleration amount must be a float.';
				enforce: [ self isGreaterThanOne: anAccelerationAmount ]
				because: 'A car card acceleration amount must be greater or equal than 1.'
			];
		buildAndCheck
]

{ #category : #asserting }
CarSpecification class >> assertIsValidCylinderCapacity: theCylinderCapacityAmount [

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				enforce: [ theCylinderCapacityAmount amount isInteger ]
				because: 'A car card cylinder capacity amount must be an integer.';
				enforce: [ self isGreaterThanOne: theCylinderCapacityAmount ]
				because: 'A car card cylinder capacity amount must be greater or equal than 1.'
			];
		buildAndCheck
]

{ #category : #asserting }
CarSpecification class >> assertIsValidFuelConsumption: aFuelCosumptionAmount [

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				enforce: [ aFuelCosumptionAmount amount isFloat ]
				because: 'A car card fuel consumption amount must be a float.';
				enforce: [ self isGreaterThanOne: aFuelCosumptionAmount ]
				because: 'A car card fuel consumption amount must be greater or equal than 1.'
			];
		buildAndCheck
]

{ #category : #asserting }
CarSpecification class >> assertIsValidManeuverability: aManeuverabilityAmount [

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				enforce: [ aManeuverabilityAmount isInteger ]
				because: 'A car card maneuverability number must be an integer.';
				enforce: [ self isGreaterThanOne: aManeuverabilityAmount ]
				because: 'A car card maneuverability number must be greater or equal than 1.'
			];
		buildAndCheck
]

{ #category : #asserting }
CarSpecification class >> assertIsValidPower: aPowerAmount [

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				enforce: [ aPowerAmount amount isInteger ]
				because: 'A car card horsepower must be an integer.';
				enforce: [ self isGreaterThanOne: aPowerAmount ]
				because: 'A car card horsepower must be greater or equal than 1.'
			];
		buildAndCheck
]

{ #category : #asserting }
CarSpecification class >> assertIsValidRPM: theRPM [

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				enforce: [ theRPM amount isInteger ]
				because: 'A car card RPM must be an integer.';
				enforce: [ self isGreaterThanOne: theRPM ]
				because: 'A car card RPM must be greater or equal than 1.'
			];
		buildAndCheck
]

{ #category : #asserting }
CarSpecification class >> assertIsValidTopSpeed: aTopSpeed [

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				enforce: [ aTopSpeed amount isInteger ]
				because: 'A car card top speed must be an integer.';
				enforce: [ self isGreaterThanOne: aTopSpeed ]
				because: 'A car card top speed must be greater or equal than 1.'
			];
		buildAndCheck
]

{ #category : #asserting }
CarSpecification class >> assertIsValidTraction: aTractionAmount [

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				enforce: [ aTractionAmount isInteger ]
				because: 'A car card traction number must be an integer.';
				enforce: [ self isGreaterThanOne: aTractionAmount ]
				because: 'A car card traction number must be greater or equal than 1.'
			];
		buildAndCheck
]

{ #category : #asserting }
CarSpecification class >> assertIsValidWeight: aWeightAmount [

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				enforce: [ aWeightAmount amount isInteger ]
				because: 'A car card weight amount must be an integer.';
				enforce: [ self isGreaterThanOne: aWeightAmount ]
				because: 'A car card weight amount must be greater or equal than 1.'
			];
		buildAndCheck
]

{ #category : #asserting }
CarSpecification class >> isGreaterThanOne: aPotentialCarSpecificationUnit [

	| oneCarSpecificationUnit |
	
	oneCarSpecificationUnit := aPotentialCarSpecificationUnit unit with: 1.
	^ (ArithmeticCondition toBeGreaterOrEqualThan: oneCarSpecificationUnit) isSatisfiedBy: aPotentialCarSpecificationUnit
]

{ #category : #'instance creation' }
CarSpecification class >> topSpeed: aTopSpeed rpm: theRPM acceleration: anAccelerationAmount power: aPowerAmount maneuverability: aManeuverabilityAmount traction: aTractionAmount fuelConsumption: aFuelCosumptionAmount cylinderCapacity: theCylinderCapacityAmount weight: aWeightAmount brakeSystem: aBrakeSystem [

	self 
		assertIsValidTopSpeed: aTopSpeed;
		assertIsValidRPM: theRPM;
		assertIsValidAcceleration: anAccelerationAmount;
		assertIsValidPower: aPowerAmount;
		assertIsValidFuelConsumption: aFuelCosumptionAmount;
		assertIsValidCylinderCapacity: theCylinderCapacityAmount;
		assertIsValidWeight: aWeightAmount;
		assertIsValidManeuverability: aManeuverabilityAmount;
		assertIsValidTraction: aTractionAmount.
		 
	^ self new initializeTopSpeed: aTopSpeed
		  rpm: theRPM
		  acceleration: anAccelerationAmount
		  power: aPowerAmount
		  maneuverability: aManeuverabilityAmount
		  traction: aTractionAmount
		  fuelConsumption: aFuelCosumptionAmount
		  cylinderCapacity: theCylinderCapacityAmount
		  weight: aWeightAmount
		  brakeSystem: aBrakeSystem
]

{ #category : #accessing }
CarSpecification >> acceleration [

	^ acceleration
]

{ #category : #accessing }
CarSpecification >> brakeSystem [

	^ brakeSystem
]

{ #category : #accessing }
CarSpecification >> cylinderCapacity [

	^ cylinderCapacity
]

{ #category : #accessing }
CarSpecification >> fuelConsumption [

	^ fuelConsumption
]

{ #category : #initialization }
CarSpecification >> initializeTopSpeed: aTopSpeed rpm: theRPM acceleration: anAcceleration power: aPowerAmount maneuverability: aManeuverabilityAmount traction: aTractionAmount fuelConsumption: aFuelConsumption cylinderCapacity: aCylinderCapacityAmount weight: aWeightAmount brakeSystem: aBrakeSystem [

	topSpeed := aTopSpeed.
	rpm := theRPM.
	acceleration := anAcceleration.
	power := aPowerAmount.
	maneuverability := aManeuverabilityAmount.
	traction := aTractionAmount.
	fuelConsumption := aFuelConsumption.
	cylinderCapacity := aCylinderCapacityAmount.
	weight := aWeightAmount.
	brakeSystem := aBrakeSystem
]

{ #category : #accessing }
CarSpecification >> maneuverability [

	^ maneuverability
]

{ #category : #accessing }
CarSpecification >> power [

	^ power
]

{ #category : #accessing }
CarSpecification >> rpm [

	^ rpm
]

{ #category : #accessing }
CarSpecification >> topSpeed [

	^ topSpeed
]

{ #category : #accessing }
CarSpecification >> traction [

	^ traction
]

{ #category : #accessing }
CarSpecification >> weight [

	^ weight
]
