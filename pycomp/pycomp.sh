#Put this in a setup.py file:
# from setuptools import setup
# from Cython.Build import cythonize

# setup(
#         ext_modules = cythonize(extensions,
#         language_level="3")
# )

inname=$1
outname=$2

cython --embed -o cythonizedfile.c $1
g++ -I/usr/include/python3.8 cythonizedfile.c -lpython3.8 -o $2
rm cythonizedfile.c