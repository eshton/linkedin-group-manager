package lin.domain

class Post {

	static belongsTo = [group:Group, creator:Person]
	static hasMany = [comments:Comment]
	
	String id
	Date creation
	String summary
	String title
	String type
	Date updated
	boolean seen
	
    static constraints = {
		summary nullable:true, blank:true
		title nullable:true, blank:true
		type nullable:true, blank:true
    }
	
	static mapping = {
		table 'lkdn_post'
		id sqlType:'varchar', generator:'assigned'
		summary sqlType:'text'
		title sqlType:'text'
	}
}
