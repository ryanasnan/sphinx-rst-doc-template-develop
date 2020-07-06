
# About

This repository is for creating ``reStructuredText`` builds from **sphinx** and using *readthedocs* theme

Note:

You need docker to run this code, so please Install docker first!


## How to use it

1. Create New RST Docs

```bash
git clone https://github.com/ryanasnan/sphinx-rst-doc-template-develop <your-project-directory>
cd <your-project-directory>
```

2. Build (Generate) the RST File

You can just using the command in `develop` file

```bash
./develop make
```

After running the script above, the directory `_build` will generated

You can open the result on `_build/index.html` file

or if u wanna to build image from `Dockerfile`

```bash
docker build -t sphinxrtd:latest .
docker run --rm -v $(pwd):/sphinxrtd sphinxrtd:latest
```
