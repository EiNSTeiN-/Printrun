git clone git://github.com/alexrj/Slic3r.git ./.slic3r-tmp
(cd ./.slic3r-tmp && git checkout-index --prefix=../Slic3r/ -a)
rm -rf ./.slic3r-tmp
