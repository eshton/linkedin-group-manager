/**
 * GENERAL CONFIGURATION
 */
linkedin.api.key="75tuf0t7wye6vg" //75vycwviydmy86
 
/**
 * DATABASE CONFIGURATION
 */
dataSource {
	driverClassName = "com.mysql.jdbc.Driver"
	dialect = 'org.hibernate.dialect.MySQL5InnoDBDialect'
	
	dbCreate = "validate"
	url = "jdbc:mysql://localhost:3306/mylinkedinapp?characterEncoding=UTF-8&zeroDateTimeBehavior=convertToNull"
	username = "root"
	password = ""
}

/**
 * LOGGING CONFIGURATION
 */
log4j.main = {
	appenders {
		rollingFile name: 'tomcatRollingFile', file: '/opt/tomcat/logs/mylinkedin.log', maxFileSize: '50MB', maxBackupIndex: 20
		rollingFile name: "stacktrace", maxFileSize: 1024, file: '/opt/tomcat/logs/mylinkedin-stacktrace.log'
	}

	info 'fac'
	
	error  'org.codehaus.groovy.grails.web.servlet',        // controllers
		   'org.codehaus.groovy.grails.web.pages',          // GSP
		   'org.codehaus.groovy.grails.web.sitemesh',       // layouts
		   'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
		   'org.codehaus.groovy.grails.web.mapping',        // URL mapping
		   'org.codehaus.groovy.grails.commons',            // core / classloading
		   'org.codehaus.groovy.grails.plugins',            // plugins
		   'org.codehaus.groovy.grails.orm.hibernate',      // hibernate integration
		   'org.springframework',
		   'org.hibernate',
		   'net.sf.ehcache.hibernate'
}