<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>List of Groups</title>
	</head>
	<body>		
		<h1 class="page-header">List of Groups</h1>
		<div class="table-responsive">
			<table class="table table-condensed">
				<thead>
					<tr>
						<th>Name</th>
						<th>Num Posts</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody id="postsTableBody">
				<g:each in="${groups}" var="group">
					<tr groupId="${group.id}" class="clickToGroup<g:if test="${!group.seen}"> success</g:if>">
						<td>
							<span style="font-size:1.2em;font-weight:bold;">${group.name}</span>
							<p style="opacity:0.8;font-size:0.9em;">${group.shortDescription}</p>
						</td>
						<td>${group.numPosts}</td>
						<td class="pactions">
							<g:link action="show" id="${group.id}"><span class="glyphicon glyphicon-zoom-in" aria-hidden="true"></span></g:link>
							<g:if test="${!group.seen}">
								<span id="${group.id}" class="glyphicon glyphicon-ok group-action-seen" aria-hidden="true"></span>
							</g:if>
						</td>								
					</tr>				
				</g:each>						
				</tbody>
			</table>
		</div>
		<style type="text/css">
		    .clickToGroup:hover td {
		    	background: #EBFFD6;
		    }
			.clickToGroup:hover {
				cursor:pointer;
			}
		</style>
		
		<script type="text/javascript">
			$('.clickToGroup').click(function(){
				var groupId = $(this).attr('groupId');
				location.href = '<g:createLink action="show"/>' + groupId;
			});
		
			$('.group-action-seen').click(function(){
				var that = this;
				$.get('<g:createLink controller="data" action="seen"/>?groupId=' + $(this).attr('id')).done(function(){
					$(that).parent().parent().removeClass('success');
					$(that).hide();
				});
			});
		</script>		
	</body>
</html>
