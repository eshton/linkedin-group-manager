package lin.controller

import lin.domain.Group

class GroupController {

    def list() {
		[groups: Group.list()]
	}
	
	def show() {
		
	}
}
