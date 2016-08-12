# gvl.ansible.web_apollo
This is the ansible playbook to deploy Web Apollo version 2.0.4 as an add-on into a GVL instance.

## Role design
The layout of the role is as follows:

* **gvl.ansible.genomespace**

  * **defaults**

    * *main.yml* - file contains the global variables for the script.

  * **files**

    * *apollo.locations* - nginx config file for the nginx-tomcat connection

    * *chado-schema-with-ontologies.sql.gz* - tarball containing SQL schema for chado database. Sourced from [the Apollo repository](https://github.com/GMOD/Apollo/tree/2.0.4/scripts).

    * *load_chado_schema.sh* - Script to install chado schema into chado database. Sourced from [the Apollo repository](https://github.com/GMOD/Apollo/tree/2.0.4/scripts).

    * *setenv.sh* - Script used by tomcat7 to increase available memory.

    * *tomcat7* - Tomcat7 config file in which `JAVA_HOME` is set.

  * **tasks** - the set of yaml files that are executed by ansible during the build process for this role.

    * *main.yml* - sets the variables in defaults.yml, followed by installing dependencies, creating databases, and installing/deploying Apollo.

  * **templates**

    * *server.xml.j2* - template for the tomcat7 server.xml config file 
