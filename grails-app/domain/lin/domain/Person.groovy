package lin.domain

class Person {

	String id
	String firstName
	String lastName
	String publicProfile
	String apiProfile
	String headline
	
    static constraints = {
		publicProfile nullable:true, blank:true
		apiProfile nullable:true, blank:true
    }
	
	static mapping = {
		table 'lkdn_person'
		id sqlType:'varchar', generator:'assigned'
		headline sqlType:'text'
		version false
	}
	
	String getFullName() {"${firstName} ${lastName}"}
}
