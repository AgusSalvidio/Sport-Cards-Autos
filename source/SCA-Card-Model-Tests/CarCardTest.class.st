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
			topSpeed: 250
			rpm: 6900
			acceleration: 4.79
			power: 340
			maneuverability: 73
			traction: 37
			fuelConsumption: 7.3
			cylinderCapacity: 3795
			weight: 1725
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
