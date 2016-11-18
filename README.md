# gvl.ansible.webapollo
This is the ansible playbook to deploy Web Apollo as a GVL add-on. It is located at [https://github.com/gvlproject/gvl.ansible.web_apollo](https://github.com/gvlproject/gvl.ansible.web_apollo)

## Role design
The layout of the role is as follows:

* **gvl.ansible.web_apollo**

  * **defaults**

    * *main.yml* - file contains the global variables for the script.

  * **files**

    * *apollo.locations* - An nginx location file for Web Apollo.

    * *chado-schema-with-ontologies.sql.gz* - The schema for the chado database.

    * *load_chado_schema.sh* - The script to load the chado schema into the database.

  * **meta**

    * *main.yml* - contains some meta data about the role including its dependencies, license etc.

  * **tasks** - the set of yaml files that are executed by ansible during the build process for this role.

    * *main.yml* - Runs the ansible scripts below.

    * *install_tomcat8.yml* - Downloads and installs tomcat8 webserver.

    * *install_webapollo.yml* - Downloads and builds Web Apollo, sets up Web Apollo database.

  * **templates**

    * *apollo-config.groovy.j2* - Web Apollo config file, to be filled with database settings.

    * *server.xml.j2* - Tomcat's server.xml config file.

    * *tomcat8.conf.j2* - Tomcat's upstart file (So tomcat8 can be run as a service)

    * *version_info.j2* - Will contain apollo version info and build date info.
