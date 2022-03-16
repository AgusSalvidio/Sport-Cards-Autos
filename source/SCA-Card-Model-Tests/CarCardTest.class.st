Class {
	#name : #CarCardTest,
	#superclass : #TestCase,
	#category : #'SCA-Card-Model-Tests'
}

{ #category : #'private - accessing' }
CarCardTest >> bmwManufacturer [

	^ Manufacturer named: 'BMW' from: 'Germany'
]

{ #category : #'private - accessing' }
CarCardTest >> defaultCarSpecification [
	
	^ CarSpecification 
			topSpeed: (SCAUnits topSpeed with: 250)
			rpm: (SCAUnits rpm with: 6900)
			acceleration: (SCAUnits acceleration with: 4.79) 
			power: (SCAUnits power with: 340)
			maneuverability: 73
			traction: 37 
			fuelConsumption: (SCAUnits fuelConsumption with: 7.3)
			cylinderCapacity: (SCAUnits cylinderCapacity with: 3795) 
			weight: (SCAUnits weight with: 1725) 
			brakeSystem: 'ABS'
]

{ #category : #'private - accessing' }
CarCardTest >> defaultManufacturer [

	^ self bmwManufacturer
]

{ #category : #tests }
CarCardTest >> testCarCardMustHaveAManufacturer [

	self
		should: [ 
			CarCard manufacturedBy: ''
				modelNamed: 'M5'
				productionYear: 1994
				specifiedBy: self defaultCarSpecification
			]
		raise: InstanceCreationFailed
		withMessageText: 'A car card must have a manufacturer.'
]

{ #category : #tests }
CarCardTest >> testCarCardMustHaveAModel [

	self
		should: [ 
			CarCard manufacturedBy: self defaultManufacturer
				modelNamed: ''
				productionYear: 1994
				specifiedBy: self defaultCarSpecification
			]
		raise: InstanceCreationFailed
		withMessageText: 'A car card must have a model.'
]

{ #category : #tests }
CarCardTest >> testCarCardMustHaveASpecification [

	self
		should: [ 
			CarCard manufacturedBy: self defaultManufacturer
				modelNamed: 'M5'
				productionYear: 1994
				specifiedBy: ''
			]
		raise: InstanceCreationFailed
		withMessageText: 'A car card must have a specification.'
]

{ #category : #tests }
CarCardTest >> testCarCardProductionYearMustBeAnInteger [

	self
		should: [ 
			CarCard manufacturedBy: self defaultManufacturer
				modelNamed: 'M5'
				productionYear: 1994.6
				specifiedBy: self defaultCarSpecification
			]
		raise: InstanceCreationFailed
		withMessageText: 'A car card production year must be an integer.'
]

{ #category : #tests }
CarCardTest >> testCarCardProductionYearMustBeGreaterOrEqualThan1886 [

	self
		should: [ 
			CarCard manufacturedBy: self defaultManufacturer
				modelNamed: 'M5'
				productionYear: 1800
				specifiedBy: self defaultCarSpecification
			]
		raise: InstanceCreationFailed
		withMessageText: 'A car card production year must be greater or equal than 1886.'
]
