<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>Linkedin Group Manager - <g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<link href="${resource(type:'css', dir:'bootstrap/css', file:'bootstrap.min.css')}" rel="stylesheet" type="text/css"/>
		<link href="${resource(type:'css', dir:'css', file:'dashboard.css')}" rel="stylesheet">
		<link href="${resource(type:'css', dir:'css', file:'style.css')}" rel="stylesheet" type="text/css"/>
		
		<script src="${resource(type:'js', dir:'js', file:'underscore-1.6.0.js')}"></script>
		<script src="${resource(type:'js', dir:'js', file:'jquery-1.10.2.min.js')}"></script>
		<script src="${resource(type:'js', dir:'js', file:'backbone-1.1.2.js')}"></script>
		<script src="${resource(type:'js', dir:'js', file:'jquery-ui.min.js')}"></script>
		<script src="${resource(type:'js', dir:'bootstrap/js', file:'bootstrap.min.js')}"></script>
			
		<g:layoutHead/>
	</head>
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">LinkedIn Quickview</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="#">Dashboard</a>
						</li>
						<li>
							<a href="#">Settings</a>
						</li>
						<li>
							<a href="#">Profile</a>
						</li>
						<li>
							<a href="#">Help</a>
						</li>
					</ul>
					<form class="navbar-form navbar-right">
						<input type="text" class="form-control" placeholder="Search...">
					</form>
				</div>
			</div>
		</nav>

		<div class="container-fluid">
			<div class="row">
				<div class="col-sm-3 col-md-2 sidebar">
					<ul class="nav nav-sidebar">
						<li class="active">
							<g:link controller="home" action="index">Home</g:link>
						</li>
						<li>
							<g:link controller="group" action="list">List of Groups</g:link>
						</li>
						<li>
							<g:link controller="person" action="list">List of People</g:link>
						</li>
					</ul>
					<ul class="nav nav-sidebar">
						<li>
							<g:link controller="data" action="index">Download new data</g:link>
						</li>
						<li>
							<a href="">Email addresses</a>
						</li>
						<li>
							<a href="">Statistics</a>
						</li>
					</ul>
				</div>
				<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
					<g:layoutBody/>
				</div>
			</div>
		</div>
	</body>
</html>
