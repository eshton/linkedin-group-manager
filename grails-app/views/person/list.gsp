<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>List of People</title>
	</head>
	<body>
		<h1 class="page-header">List of People</h1>
		<div class="table-responsive">
			<table class="table table-condensed">
				<thead>
					<tr>
						<th>Name</th>
						<th>Profile</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody id="postsTableBody">
				<g:each in="${people}" var="person">
					<tr>
						<td>
							<b>${person.fullName}</b><br/>
							<i>${person.title }</i>
						</td>
						<td></td>
						<td></td>
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
