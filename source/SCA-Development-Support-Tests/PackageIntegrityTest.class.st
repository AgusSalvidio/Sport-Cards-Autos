Class {
	#name : #PackageIntegrityTest,
	#superclass : #DevelopmentTest,
	#instVars : [
		'baselinePackages',
		'baselineDependencies'
	],
	#category : #'SCA-Development-Support-Tests'
}

{ #category : #'private - testing' }
PackageIntegrityTest >> isMainRepository: anIceLibgitRepository [

	^ anIceLibgitRepository name = 'Sport-Cards-Autos'
]

{ #category : #'private - accessing' }
PackageIntegrityTest >> ownBaselineName [

	^ BaselineOfSportCardsAutos name
]

{ #category : #'private - accessing' }
PackageIntegrityTest >> ownedPackageNames [

	^ self ownedPackages collect: #name
]

{ #category : #'private - accessing' }
PackageIntegrityTest >> packageNameOf: aPackageRepresentation [

	^ aPackageRepresentation at: #packageName
]

{ #category : #running }
PackageIntegrityTest >> setUp [

	| baseline |
	
	super setUp.
	baseline := BaselineOfSportCardsAutos new.
	baselinePackages := baseline packages.
	baselineDependencies := baseline dependencies
]

{ #category : #tests }
PackageIntegrityTest >> testAllOwnedPackagesAreDeclaredInBaseline [

	| baselinePackageNames |

	baselinePackageNames := baselinePackages
		collect: [ :aPackageRepresentation | self packageNameOf: aPackageRepresentation ].
	self assertCollection: baselinePackageNames hasSameElements: self ownedPackageNames
]

{ #category : #tests }
PackageIntegrityTest >> testAllOwnedPackagesAreIncludedInRepository [

	| repositoryPackageNames ownedPackageNamesWithBaselinePackageName |

	repositoryPackageNames := IceRepository registry
		detect: [ :anIceLibgitRepository | self isMainRepository: anIceLibgitRepository ]
		ifFound: [ :anIceLibgitRepository | anIceLibgitRepository loadedPackages collect: #packageName ]
		ifNone: [ self skip: 'Skipped since it''s beign run in CI.' ].

	ownedPackageNamesWithBaselinePackageName := self ownedPackageNames copyWith: self ownBaselineName.

	self
		assertCollection: repositoryPackageNames
		hasSameElements: ownedPackageNamesWithBaselinePackageName
]
