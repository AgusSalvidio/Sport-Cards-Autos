Class {
	#name : #SCAUnitsTest,
	#superclass : #TestCase,
	#category : #'SCA-Card-Model-Tests'
}

{ #category : #tests }
SCAUnitsTest >> testUnitsAreInitializedAutomatically [

	| topSpeed rpm acceleration power fuelConsumption weight cylinderCapacity |
	topSpeed := SCAUnits topSpeed.
	rpm := SCAUnits rpm.
	acceleration := SCAUnits acceleration.
	power := SCAUnits power.
	fuelConsumption := SCAUnits fuelConsumption.
	weight := SCAUnits weight.
	cylinderCapacity := SCAUnits cylinderCapacity.

	self
		assert: topSpeed isNotNil;
		assert: rpm isNotNil;
		assert: acceleration isNotNil;
		assert: power isNotNil;
		assert: fuelConsumption isNotNil;
		assert: weight isNotNil;
		assert: cylinderCapacity isNotNil
]

{ #category : #tests }
SCAUnitsTest >> testUnitsAreInstantiatedOnlyOnce [

	SCAUnits initialize.
	
	self
		assert: SCAUnits topSpeed identicalTo: SCAUnits topSpeed ;
		assert: SCAUnits rpm identicalTo: SCAUnits rpm;
		assert: SCAUnits acceleration identicalTo: SCAUnits acceleration;
		assert: SCAUnits power identicalTo: SCAUnits power;
		assert: SCAUnits fuelConsumption identicalTo: SCAUnits fuelConsumption;
		assert: SCAUnits weight identicalTo: SCAUnits weight;
		assert: SCAUnits cylinderCapacity identicalTo: SCAUnits cylinderCapacity
]
