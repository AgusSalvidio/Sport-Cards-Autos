Extension { #name : #CarSpecificationTest }

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> acceleration [ 

	^ SCAUnits acceleration with: 4.79
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> brakeSystem [     

	^ 'ABS'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> carSpecificationWithTopSpeedBeing: aTopSpeed [

	^ self 
		customCarSpecificationWithTopSpeed: (SCAUnits topSpeed with:aTopSpeed) 
		rpm: self rpm 
		acceleration: self acceleration  
		power: self power 
		maneuverability: self maneuverability  
		traction: self traction  
		fuelConsumption: self fuelConsumption  
		cylinderCapacity: self cylinderCapacity  
		weight: self weight 
		brakeSystem: self brakeSystem 
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> customCarSpecificationWithTopSpeed: aTopSpeed rpm: theRPM acceleration: anAccelerationAmount power: aPowerAmount maneuverability: aManeuverabilityAmount traction: aTractionAmount fuelConsumption: aFuelCosumptionAmount cylinderCapacity: theCylinderCapacityAmount weight: aWeightAmount brakeSystem: aBrakeSystem [
	
	^ CarSpecification 
			topSpeed: aTopSpeed 
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

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> cylinderCapacity [     

	^ SCAUnits cylinderCapacity with: 3795
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> fuelConsumption [    

	^ SCAUnits fuelConsumption with: 7.3
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> maneuverability [  

	^ 73
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> power [ 

	^ SCAUnits power with: 340
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> rpm [

	^ SCAUnits rpm with: 6900
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardAccelerationNumberMustBeAFloat [

	self
		should: [ self carSpecificationWithAccelerationBeing: 20 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card acceleration amount must be a float.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardAccelerationNumberMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithAccelerationBeing: -2.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card acceleration amount must be greater or equal than 1.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardCylinderCapacityNumberMustBeAnInteger [

	self
		should: [ self carSpecificationWithCylinderCapacityBeing: 12.5 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card cylinder capacity amount must be an integer.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardCylinderCapacityNumberMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithCylinderCapacityBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card cylinder capacity amount must be greater or equal than 1.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardFuelConsumptionAmountMustBeAFloat [

	self
		should: [ self carSpecificationWithFuelConsumptionBeing: 4 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card fuel consumption amount must be a float.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardFuelConsumptionAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithFuelConsumptionBeing: -2.45 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card fuel consumption amount must be greater or equal than 1.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardManeuverabilityAmountMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithManeuverabilityBeing: -2 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card maneuverability number must be greater or equal than 1.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardTopSpeedNumberMustBeAnInteger [

	self
		should: [ self carSpecificationWithTopSpeedBeing: 95.6 ]
		raise: InstanceCreationFailed
		withMessageText: 'A car card top speed must be an integer.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> testCarCardTopSpeedNumberMustBeGreaterOrEqualThanOne [

	self
		should: [ self carSpecificationWithTopSpeedBeing: -2	]
		raise: InstanceCreationFailed
		withMessageText: 'A car card top speed must be greater or equal than 1.'
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> topSpeed [

	^ SCAUnits topSpeed with: 250
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> traction [   

	^ 37
]

{ #category : #'*SCA-Car-Specification-Model-Tests' }
CarSpecificationTest >> weight [     

	^ SCAUnits weight with: 1725
]
