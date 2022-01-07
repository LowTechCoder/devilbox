#this script will quickly get a wordpress instance installed using devilbox and docker.
#example: 
#bash devil my_site
project="$1"
mkdir "$project"
cd "$project"
#git clone https://github.com/WordPress/WordPress wordpress.git
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
#ln -s wordpress.git/ htdocs
ln -s wordpress/ htdocs
tree -L 1
echo
echo "Should look like this:"
echo "├── htdocs -> wordpress/"
echo "├── latest.tar.gz"
echo "└── wordpress"
echo 
echo "The next password can be empty, and is for the mysql root"
echo "Press enter key to continue"
read
mysql -u root -h 127.0.0.1 -p -e "CREATE DATABASE $project;"
echo "Add this to your hosts file:"
echo "nvim /etc/hosts"
echo "127.0.0.1 $project.loc"
echo "Press enter key to continue"
read
echo 
echo "Open web browser to http://$project.loc"
echo "For the WP setup:"
echo "DB Name: $project"
echo "Username: root"
echo "Password: can be empty"
echo "DB host: 127.0.0.1"
echo "Table Prefix: wp_"
echo "Press enter key to continue"
read
echo 
echo "Since your going to overwrite this DB with an existing one anyway, fill in these with what ever, since it will be overwritten."
echo "Site Title: $project"
echo "Username: $project"
echo "Your Email: $project@$project.loc"
echo "Check the box: Discourage search engines..."
