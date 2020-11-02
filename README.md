# appsver
Get current versions of applications.


## Usage

- Getting the version of a specific app. For Example, LibreOffice:

```
# Import a function to get the app version
source ./get_current_app_version.sh

# Url of the page where the app version is found.
url_get_version='https://www.libreoffice.org/download/download/'

# Prefix of the regular expression for searching for the app version.
prefix_match='<span class="dl_version_number">'

# Suffix of the regular expression for searching for the app version.
suffix_match='</span>'

# Regular expression for searching for the app version.
match='[0-9]{1}.[0-9]{1}(|.[0-9]{1})'

# Print version of the application on the screen.
get_current_app_version

version_libreoffice=$(get_current_app_version)
echo $version
```

- - Getting a list of applications with their versions on display.
(Сведения о приложениях берутся из файлов ./apps/<name_app>.sh.

```sh build_list_apps.sh ```

Output example:

Libre Office 7.0.3
MongoDB 4.4.1
PostgreSQL 13
MySQL Workbench 8.0.22

- Getting a list of applications with their versions in text format (./list_apps.txt).
(Сведения о приложениях берутся из файлов ./apps/<name_app>.sh.

```sh build_list_apps_txt.sh ```

Output example:

Libre Office 7.0.3
MongoDB 4.4.1
PostgreSQL 13
MySQL Workbench 8.0.22

- Getting a list of applications with their versions in markdown format (./list_apps.md).
(Сведения о приложениях берутся из файлов ./apps/<name_app>.sh.

```sh build_list_apps_md.sh ```

Output example:

| Application | Version | Url | Description |
| ----------- | ------- | --- | ----------- |
|  Libre Office  |  7.0.3  |  https://www.libreoffice.org/download/download/  |  LibreOffice is a free and powerful office suite, and a successor to OpenOffice.org.  |
|  MongoDB  |  4.4.1  |  https://www.mongodb.com/  |  MongoDB is a general purpose, document-based, distributed database built for modern application developers and for the cloud era.  |
|  PostgreSQL  |  13  |  https://www.postgresql.org/  |  PostgreSQL: The Worlds Most Advanced Open Source Relational Database  |
|  MySQL Workbench  |  8.0.22  |  https://www.postgresql.org/  |  MySQL Workbench is a unified visual tool for database architects, developers, and DBAs  |



## Appointment

You can use this function to automate the doonload and installation of the newest versions of applications that are not in the repositories.

```
sudo wget https://download.documentfoundation.org/libreoffice/stable/$version/rpm/x86_64/LibreOffice_"$version"_Linux_x86-64_rpm.tar.gz -P /tmp
sudo tar zxvf /tmp/LibreOffice_"$version"_Linux_x86-64_rpm.tar.gz -C /tmp
sudo dnf -y install /tmp/LibreOffice_"$version"*_Linux_x86-64_rpm/RPMS/*.rpm
```

or

```
sudo wget https://download.documentfoundation.org/libreoffice/stable/$version/rpm/x86_64/LibreOffice_"$version"_Linux_x86-64_deb.tar.gz -P /tmp
sudo tar zxvf /tmp/LibreOffice_"$version"_Linux_x86-64_deb.tar.gz -C /tmp
sudo dnf -y install /tmp/LibreOffice_"$version"*_Linux_x86-64_deb/DEBS/*.rpm
```