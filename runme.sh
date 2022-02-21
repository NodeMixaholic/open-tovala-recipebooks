randBookN=$RANDOM

#make directory for barcodes
mkdir recipes/

## Generate 32 barcodes
echo Generating barcodes, this may take a few minutes
for i in {1..32}; do python3 genbarcode.py; done

## Create our document
touch "rbook-temp.md"
echo "# Tovala Recipe Book of $1 number $randBookN" > rbook-temp.md
echo " " >> rbook-temp.md
for f in $(ls recipes/); 
do
	echo Processing barcode: $f
	echo "![\" \"](recipes/$f)" >> rbook-temp.md
	echo "              " >> rbook-temp.md
        echo "              " >> rbook-temp.md
        echo "              " >> rbook-temp.md
        echo "              " >> rbook-temp.md 	
done;


## Convert document to a format people care about.
pandoc -o "$randBookN.pdf" -t latex rbook-temp.md

## Clean up
rm -r recipes/
rm rbook-temp.md
