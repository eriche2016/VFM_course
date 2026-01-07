
# step 1: modify docs
# step 2: modify mkdocs.yml if needed
# remvove existing site directory if exists
rm -rf site
# remove existing files in root directory 
# except docs, mkdocs.yml, .git and run.sh
find . -maxdepth 1 ! -name 'docs' ! -name 'mkdocs.yml' ! -name '.git' ! -name 'run.sh' ! -name '.' -exec rm -rf {} +
# step 3: build site
mkdocs build
# mv site to root directory
mv site/* .
# remove site directory
rm -rf site