# Ernie's Jupyter Docker Image

My batteries-included Jupyter Notebook Docker image, including:

* Pandas
* Numpy
* Matplotlib
* Graphviz
* Pandoc
* LaTeX
* PDFLaTex
* PDFUnite

## How to Build

1. Install Docker
2. Build the image

On Windows

``` powershell
.\build.ps1
```

On Linux

``` bash
./build.sh
```

## How to Use

1. Install Docker
2. Change to project directory
3. Run image

On Windows

``` powershell
docker run -p 8888:8888 -v ${pwd}:/workdir jupyter
``` 

On Linux

``` bash
docker run -p 8888:8888 -v $(pwd):/workdir jupyter
``` 

4. Open http://localhost:8888
5. Type `jupyter` as the password

