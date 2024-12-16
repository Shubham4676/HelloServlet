FROM tomcat
ADD deploy /usr/local/tomcat/webapps/


# Use the official Tomcat image as a base
# FROM tomcat:latest

# Copy the contents of the 'deploy' directory to the webapps directory in Tomcat
# Ensure 'deploy' exists in the build context
# ADD deploy /usr/local/tomcat/webapps/

# Expose port 8080 (default port for Tomcat)
# EXPOSE 8080

