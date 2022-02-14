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

{ #category : #'instance creation' }
CarSpecification class >> topSpeed: aTopSpeed rpm: theRPM acceleration: anAccelerationAmount power: aPowerAmount maneuverability: aManeuverabilityAmount traction: aTractionAmount fuelConsumption: aFuelCosumptionAmount cylinderCapacity: theCylinderCapacityAmount weight: aWeightAmount brakeSystem: aBrakeSystem [

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
