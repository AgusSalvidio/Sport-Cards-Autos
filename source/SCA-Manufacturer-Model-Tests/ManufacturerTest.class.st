Class {
	#name : #ManufacturerTest,
	#superclass : #TestCase,
	#category : #'SCA-Manufacturer-Model-Tests'
}

{ #category : #tests }
ManufacturerTest >> testManufacturerMustHaveACountryOfOrigin [

	self should: [ Manufacturer named: 'BMW' from: '' ]
		raise: InstanceCreationFailed
		withMessageText: 'A manufacturer must have a country of origin.'
]

{ #category : #tests }
ManufacturerTest >> testManufacturerMustHaveAName [

	self should: [ Manufacturer named: '' from: 'Germany' ]
		raise: InstanceCreationFailed
		withMessageText: 'A manufacturer must have a name.'
]
