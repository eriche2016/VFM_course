########################################
# step 1: modify docs
########################################

########################################
# step 2: modify mkdocs.yml if needed
########################################
########################################
# step 3: remove existing files in root directory 
# except docs, mkdocs.yml, .git and run.sh
########################################

# step 4: build site and move to root directory
find . -maxdepth 1 ! -name 'docs'  ! -name 'mkdocs.yml' ! -name '.git' ! -name 'run.sh' ! -name '.' -exec rm -rf {} +

#########################################
# step 5: build site
##########################################
mkdocs build
# mv site to root directory
mv site/* .
mv logo.png assets/images/logo.png
#########################################
# step 6: clean up
# remove site directory
##########################################
rm -rf site