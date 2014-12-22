package lin.controller

import lin.domain.Person

class PersonController {

    def list() {
		[people: Person.list()]
	}
}
