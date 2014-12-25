package lin.domain

class Comment {

	static belongsTo = [post:Post, creator:Person]
	
	String id
	Date creation
	String text
	String email
	boolean seen
	
    static constraints = {
		text nullable:true, blank:true
		email nullable:true, blank:true
    }
	
	static mapping = {
		table 'lkdn_comment'
		id sqlType:'varchar', generator:'assigned'
		text sqlType:'text'
		version false
	}
}
