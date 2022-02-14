Class {
	#name : #Manufacturer,
	#superclass : #Object,
	#instVars : [
		'name',
		'countryOfOrigin'
	],
	#category : #'SCA-Manufacturer-Model'
}

{ #category : #Asserting }
Manufacturer class >> asserIsValidName: aPotentialManufacturerName [

	AssertionChecker enforce: [ aPotentialManufacturerName isNotEmpty ]
		because: 'A manufacturer must have a name.'
		raising: InstanceCreationFailed
]

{ #category : #Asserting }
Manufacturer class >> assertIsValidCountryOfOrigin: aPotentialManufacturerCountryOfOrigin [

	AssertionChecker enforce: [ aPotentialManufacturerCountryOfOrigin isNotEmpty ]
		because: 'A manufacturer must have a country of origin.'
		raising: InstanceCreationFailed
]

{ #category : #'instance creation' }
Manufacturer class >> named: aManufacturerName from: aManufacturerCountryOfOrigin [

	self
		asserIsValidName: aManufacturerName;
		assertIsValidCountryOfOrigin: aManufacturerCountryOfOrigin.

	^ self new initializeNamed: aManufacturerName from: aManufacturerCountryOfOrigin
]

{ #category : #initialization }
Manufacturer >> initializeNamed: aManufacturerName from: aManufacturerCountryOfOrigin [

	name := aManufacturerName.
	countryOfOrigin := aManufacturerCountryOfOrigin
]
