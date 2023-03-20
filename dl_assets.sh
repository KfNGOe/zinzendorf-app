# bin/bash
echo "copy assets"
mkdir -p html/dist/assets/images/
cp -r assets/images/mockup/ html/dist/assets/images/
mkdir -p html/js/
cp -r assets/staticData/*.* html/js/
mkdir -p html/css/mockup/
cp -r assets/mockup/ html/css/
mkdir -p html/data/
cp -r data/ html/