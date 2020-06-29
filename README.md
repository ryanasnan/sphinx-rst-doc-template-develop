
# About

This repository is for creating ``reStructuredText`` builds from **sphinx** and using *readthedocs* theme

Note:

You need docker to run this code, so please Install docker first!


## Install

1. Create New Docs

```bash
git clone https://github.com/ryanasnan/sphinx-rst-doc-template-develop <your-project-directory>
cd <your-project-directory>
```

2. Build New Docs
build dockerfile

```bash
docker build -t sphinxrtd:latest .
```

3. Run docker image and mount project

```bash
docker run --rm -v <your-path-project-directory>:/sphinxrtd sphinxrtd:latest
```

After you run the docker image, directory `_build` will generated

You can open the result on `index.html` file

## Using existing sphinx template

You also can use my images on docker hub to using existing template sphinx and run it

```bash
docker pull
```

Note:

My images is build from `Dockerfile` in this repository too

## Install Theme

If you wanna to install theme, you need to install manually

1. enter the container in interactive mode

2. install