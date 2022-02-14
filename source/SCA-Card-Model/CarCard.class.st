Class {
	#name : #CarCard,
	#superclass : #Object,
	#instVars : [
		'manufacturer',
		'model',
		'year',
		'specs'
	],
	#category : #'SCA-Card-Model'
}

{ #category : #Asserting }
CarCard class >> assertIsValidManufacturer: aPotentialManufacturer [

	AssertionChecker enforce: [ aPotentialManufacturer isA: Manufacturer ]
		because: 'A car card must have a manufacturer.'
		raising: InstanceCreationFailed
]

{ #category : #Asserting }
CarCard class >> assertIsValidModel: aPotentialModelName [

	AssertionChecker enforce: [ aPotentialModelName isNotEmpty ]
		because: 'A car card must have a model.'
		raising: InstanceCreationFailed
]

{ #category : #Asserting }
CarCard class >> assertIsValidProductionYear: aPotentialProductionYear [

	AssertionCheckerBuilder new
		raising: InstanceCreationFailed;
		checking: [ :asserter | 
			asserter
				enforce: [ aPotentialProductionYear isInteger ]
				because: 'A car card production year must be an integer.';
				enforce: [ self isGreaterThanFirstCarEverProduced: aPotentialProductionYear ]
				because: 'A car card production year must be greater or equal than 1886.'
			];
		buildAndCheck
]

{ #category : #Asserting }
CarCard class >> assertIsValidSpecification: aPotentialSpecification [

	AssertionChecker enforce: [ aPotentialSpecification isA: CarSpecification ]
		because: 'A car card must have a specification.'
		raising: InstanceCreationFailed
]

{ #category : #'private - testing' }
CarCard class >> isGreaterThanFirstCarEverProduced: aPotentialProductionYear [

	^ ( ArithmeticCondition toBeGreaterOrEqualThan: 1886 ) isSatisfiedBy: aPotentialProductionYear
]

{ #category : #'instance creation' }
CarCard class >> manufacturedBy: aManufacturer modelNamed: aModelName productionYear: aProductionYear specifiedBy: aCarSpecification [

	self
		assertIsValidManufacturer: aManufacturer;
		assertIsValidModel: aModelName;
		assertIsValidProductionYear: aProductionYear;
		assertIsValidSpecification: aCarSpecification.

	^ self new initializeManufacturedBy: aManufacturer
		  modelNamed: aModelName
		  productionYear: aProductionYear
		  specifiedBy: aCarSpecification
]

{ #category : #accessing }
CarCard >> acceleration [

	^ self specs acceleration
]

{ #category : #accessing }
CarCard >> brakeSystem [

	^ self specs brakeSystem
]

{ #category : #accessing }
CarCard >> cylinderCapacity [

	^ self specs cylinderCapacity
]

{ #category : #accessing }
CarCard >> fuelConsumption [

	^ self specs fuelConsumption
]

{ #category : #initialization }
CarCard >> initializeManufacturedBy: aManufacturer modelNamed: aModelName productionYear: aProductionYear specifiedBy: aCarSpecification [

	manufacturer := aManufacturer.
	model := aModelName.
	year := aProductionYear.
	specs := aCarSpecification
]

{ #category : #accessing }
CarCard >> maneuverability [

	^ self specs maneuverability
]

{ #category : #accessing }
CarCard >> manufacturer [

	^ manufacturer
]

{ #category : #accessing }
CarCard >> model [

	^ model
]

{ #category : #accessing }
CarCard >> power [

	^ self specs power
]

{ #category : #accessing }
CarCard >> rpm [

	^ self specs rpm
]

{ #category : #accessing }
CarCard >> specs [

	^ specs
]

{ #category : #accessing }
CarCard >> topSpeed [

	^ self specs topSpeed
]

{ #category : #accessing }
CarCard >> traction [

	^ self specs traction
]

{ #category : #accessing }
CarCard >> weight [

	^ self specs weight
]

{ #category : #accessing }
CarCard >> year [

	^ year
]
