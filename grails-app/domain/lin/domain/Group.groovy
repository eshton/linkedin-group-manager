package lin.domain

class Group {

	String id
	String name
	String shortDescription
	String description
	Date updated
	boolean seen
	
    static constraints = {
		shortDescription nullable:true, blank:true
		description nullable:true, blank:true
    }
	
	static mapping = {
		table 'lkdn_group'
		id sqlType:'varchar', generator:'assigned'
		shortDescription sqlType:'text'
		description sqlType:'text'
		version false 
	}
}
