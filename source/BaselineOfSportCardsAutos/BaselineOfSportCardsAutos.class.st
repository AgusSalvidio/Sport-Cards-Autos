Class {
	#name : #BaselineOfSportCardsAutos,
	#superclass : #BaselineOf,
	#category : #BaselineOfSportCardsAutos
}

{ #category : #baselines }
BaselineOfSportCardsAutos >> baseline: spec [

	<baseline>
	spec for: #pharo do: [ 
		self
			setUpDependenciesIn: spec;
			setUpPackagesIn: spec;
			setUpGroupsIn: spec
		]
]

{ #category : #'private - dependencies set up' }
BaselineOfSportCardsAutos >> baselineNameOf: aDependencyRepresentation [

	^ aDependencyRepresentation at: #baselineName
]

{ #category : #'private - dependencies accessing' }
BaselineOfSportCardsAutos >> buoyDependency [

	^ self dependencyTo: 'Buoy' hostedIn: 'github://ba-st/Buoy:v6/source'
]

{ #category : #'private - model package accessing' }
BaselineOfSportCardsAutos >> carSpecificationModelPackage [

	^ self
		  packageNamed: 'SCA-Car-Specification-Model'
		  requiring: 'SCA-Manufacturer-Model'
]

{ #category : #'private - test package accessing' }
BaselineOfSportCardsAutos >> carSpecificationTestPackage [

	^ self
		  packageNamed: 'SCA-Car-Specification-Model-Tests'
		  requiring: 'SCA-Car-Specification-Model'
]

{ #category : #'private - model package accessing' }
BaselineOfSportCardsAutos >> cardModelPackage [

	^ self
		  packageNamed: 'SCA-Card-Model'
		  requiring: 'SCA-Car-Specification-Model'
]

{ #category : #'private - test package accessing' }
BaselineOfSportCardsAutos >> cardTestPackage [

	^ self
		  packageNamed: 'SCA-Card-Model-Tests'
		  requiring: 'SCA-Card-Model'
]

{ #category : #'private - dependencies set up' }
BaselineOfSportCardsAutos >> configure: aDependency asDependencyIn: aSpec [

	aSpec
		baseline: (self baselineNameOf: aDependency)
		with: [ aSpec repository: (self repositoryOf: aDependency) ]
]

{ #category : #'private - packages set up' }
BaselineOfSportCardsAutos >> configure: aPackage asPackageIn: aSpec [

	aSpec
		package: (self packageNameOf: aPackage)
		with: [ aSpec requires: (self requirementNamesOf: aPackage) ]
]

{ #category : #'private - dependencies set up' }
BaselineOfSportCardsAutos >> dependencies [

	^ OrderedCollection new
		  add: self buoyDependency;
		  yourself
]

{ #category : #'private - dependencies set up' }
BaselineOfSportCardsAutos >> dependencyTo: aBaselineName hostedIn: aRepository [

	^ Dictionary new
		  at: #baselineName put: aBaselineName;
		  at: #repository put: aRepository;
		  yourself
]

{ #category : #'private - model package accessing' }
BaselineOfSportCardsAutos >> developmentSupportPackage [

	^ self
		  packageNamed: 'SCA-Development-Support'
		  requiring: 'SCA-Card-Model'
]

{ #category : #'private - test package accessing' }
BaselineOfSportCardsAutos >> developmentSupportTestPackage [

	^ self
		  packageNamed: 'SCA-Development-Support-Tests'
		  requiring: 'SCA-Development-Support'
]

{ #category : #'private - model package accessing' }
BaselineOfSportCardsAutos >> manufacturerModelPackage [

	^ self packageNamed: 'SCA-Manufacturer-Model' requiring: 'Buoy'
]

{ #category : #'private - test package accessing' }
BaselineOfSportCardsAutos >> manufacturerTestPackage [

	^ self
		  packageNamed: 'SCA-Manufacturer-Model-Tests'
		  requiring: 'SCA-Manufacturer-Model'
]

{ #category : #'private - groups set up' }
BaselineOfSportCardsAutos >> modelPackageNames [

	^ self packageNamesFrom: self modelPackages
]

{ #category : #'private - accessing' }
BaselineOfSportCardsAutos >> modelPackages [

	^ OrderedCollection new
		  add: self manufacturerModelPackage;
		  add: self carSpecificationModelPackage;
		  add: self cardModelPackage;
		  add: self developmentSupportPackage;
		  yourself
]

{ #category : #'private - packages set up' }
BaselineOfSportCardsAutos >> packageNameOf: aPackageRepresentation [

	^ aPackageRepresentation at: #packageName
]

{ #category : #'private - packages set up' }
BaselineOfSportCardsAutos >> packageNamed: aPackageName requiring: aRequirementNameCollection [

	^ Dictionary new
		  at: #packageName put: aPackageName;
		  at: #requirementNames put: aRequirementNameCollection;
		  yourself
]

{ #category : #'private - groups set up' }
BaselineOfSportCardsAutos >> packageNamesFrom: aPackageRepresentationCollection [

	^ aPackageRepresentationCollection collect: [ :aPackageRepresentation | 
		  self packageNameOf: aPackageRepresentation ]
]

{ #category : #'private - accessing' }
BaselineOfSportCardsAutos >> packages [

	^ OrderedCollection new
		  addAll: self modelPackages;
		  addAll: self testPackages;
		  yourself
]

{ #category : #baselines }
BaselineOfSportCardsAutos >> projectClass [

	^ MetacelloCypressBaselineProject
]

{ #category : #'private - dependencies set up' }
BaselineOfSportCardsAutos >> repositoryOf: aDependency [

	^ aDependency at: #repository
]

{ #category : #'private - packages set up' }
BaselineOfSportCardsAutos >> requirementNamesOf: aPackageRepresentation [

	^ aPackageRepresentation at: #requirementNames
]

{ #category : #'private - dependencies set up' }
BaselineOfSportCardsAutos >> setUpDependenciesIn: spec [

	self dependencies do: [ :dependency | 
		self configure: dependency asDependencyIn: spec ]
]

{ #category : #'private - groups set up' }
BaselineOfSportCardsAutos >> setUpGroupsIn: spec [

	spec
		group: 'Deployment' with: self modelPackageNames;
		group: 'Tests' with: self testPackageNames;
		group: 'CI' with: 'Tests';
		group: 'Tools' with: #(  );
		group: 'Dependent-SUnit-Extensions' with: #(  );
		group: 'Development' with: #( 'Tools' 'Tests' )
]

{ #category : #'private - packages set up' }
BaselineOfSportCardsAutos >> setUpPackagesIn: aSpec [

	self packages do: [ :package | 
		self configure: package asPackageIn: aSpec ]
]

{ #category : #'private - groups set up' }
BaselineOfSportCardsAutos >> testPackageNames [

	^ self packageNamesFrom: self testPackages
]

{ #category : #'private - accessing' }
BaselineOfSportCardsAutos >> testPackages [

	^ OrderedCollection new
		  add: self manufacturerTestPackage;
		  add: self carSpecificationTestPackage;
		  add: self cardTestPackage;
		  add: self developmentSupportTestPackage;
		  yourself
]
