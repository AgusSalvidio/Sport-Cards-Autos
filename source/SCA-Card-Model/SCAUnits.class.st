Class {
	#name : #SCAUnits,
	#superclass : #Object,
	#classInstVars : [
		'cylinderCapacity',
		'weight',
		'fuelConsumption',
		'power',
		'rpm',
		'acceleration',
		'topSpeed'
	],
	#category : #'SCA-Card-Model'
}

{ #category : #initialization }
SCAUnits class >> acceleration [

	^ acceleration
]

{ #category : #initialization }
SCAUnits class >> cylinderCapacity [

	^ cylinderCapacity
]

{ #category : #initialization }
SCAUnits class >> fuelConsumption [ 

	^ fuelConsumption
]

{ #category : #initialization }
SCAUnits class >> initialize [ 

	self 
		initializeRPM;
		initializeKilometersPerHour;
		initializeMeterPerSecondSquared;
		initializeHorsepower;
		initializeKilometersPerLiter;
		initializeKilograms;
		initializeCylinderCapacity
		
]

{ #category : #initialization }
SCAUnits class >> initializeCylinderCapacity [

	cylinderCapacity := BaseUnit named: 'CC'
]

{ #category : #initialization }
SCAUnits class >> initializeHorsepower [

	power := BaseUnit named: 'CV'
]

{ #category : #initialization }
SCAUnits class >> initializeKilograms [

	weight := BaseUnit named: 'KG'
]

{ #category : #initialization }
SCAUnits class >> initializeKilometersPerHour [

	topSpeed := BaseUnit named: 'KM/H'
]

{ #category : #initialization }
SCAUnits class >> initializeKilometersPerLiter [

	fuelConsumption := BaseUnit named: 'KM/L'
]

{ #category : #initialization }
SCAUnits class >> initializeMeterPerSecondSquared [

	acceleration := BaseUnit named: 'M/S²'
]

{ #category : #initialization }
SCAUnits class >> initializeRPM [

	rpm := BaseUnit named: 'RPM'
]

{ #category : #initialization }
SCAUnits class >> power [ 

	^ power
]

{ #category : #initialization }
SCAUnits class >> rpm [

	^ rpm
]

{ #category : #initialization }
SCAUnits class >> topSpeed [

	^ topSpeed
]

{ #category : #initialization }
SCAUnits class >> weight [

	^ weight
]
