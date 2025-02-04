Class {
	#name : #DynabookDB,
	#superclass : #SpFileDatabase,
	#category : #'Dynabook-Persistence'
}

{ #category : #accessing }
DynabookDB class >> backupDirectoryParent [
	
	^ FileLocator dynabookData / 'Dynabook'
]

{ #category : #'loading/saving' }
DynabookDB class >> schema [
	^ {BabySignLanguageDB.
		ComputerWorldDB.
		DbMsalApp.
		FlashcardsStDB.
		IdeasDB.
		LivingLibraryDB.
		SmallWorldDB.
		TheProjectProjectDB.
		UkuleleDB.
		VirtualStashDB}
]
