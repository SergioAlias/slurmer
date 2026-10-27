# Slurmer

A lightweight bash script to automate sequential Slurm job submissions on your HPC with automatic dependency chaining (`--dependency=afterok`) and Conda environment management.

> This is an *ad hoc* ¹ script intended for simple, linear pipelines. For large-scale or complex workflows, please use [Nextflow](https://www.nextflow.io/) or [Snakemake](https://snakemake.readthedocs.io/en/stable/).

¹ Works for me; might need some tuning for you.

---

## Requirements

Just [Python](https://www.python.org/).

## Installation

Copy `slurmer` to a directory in your `$PATH` and make it executable. For example:
   
   ```bash
   cp slurmer ~/bin/
   chmod u+x ~/bin/slurmer
   ```

## Usage

Create a `slurmer.yml` file in your working directory. You can find an example of this file under the `test/` directory.

To run the pipeline:

```bash
slurmer
```

By default, this uses the `slurmer.yml` file in the working directory. You can use any YAML file with `--yaml </path/to/file.yml>`.

## Testing

The `test/` directory contains a sample setup to test the pipeline:

1. Navigate to the test folder:

    ```bash
    cd test/
    ```

2. Create the testing Conda environments (they are empty):

    ```bash
    conda env create -f conda01.yml
    conda env create -f conda02.yml
    ```

3. Make the test scripts executable and run slurmer:

    ```bash
    chmod u+x *.s
    slurmer
    ```
