# sksurv-bio-workflows

## Installation

Install and set up [Mambaforge](https://github.com/conda-forge/miniforge#mambaforge)

Clone git repository and submodules:

```bash
git clone git@github.com:hermidalc/sksurv-bio-workflows.git
cd sksurv-bio-workflows
git submodule update --init --recursive
```

To install conda environment on Intel architecture hardware:

```bash
mamba env create -f envs/sksurv-bio-workflows-mkl.yml
```

Otherwise:

```bash
mamba env create -f envs/sksurv-bio-workflows.yml
```

Activate the environment:

```bash
mamba activate sksurv-bio-workflows
```

Install non-conda packages into environment:

```bash
./utils/install_nonconda_r_pkgs.R
```

## Updates

Update the git repository and submodules:

```bash
git pull
git submodule update --recursive
```

To update the conda environment on Intel architecture hardware:

```bash
mamba env update -f envs/sksurv-bio-workflows-mkl.yml
```

Otherwise:

```bash
mamba env update -f envs/sksurv-bio-workflows.yml
```
