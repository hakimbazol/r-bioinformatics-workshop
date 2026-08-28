# R for Biological Data Analysis

A 4-hour workshop in R programming for beginner, particularly for biological data analysis. This is your README file, that guides you through the overall of the workshop!

Created by Muhammad Naufal Hakim (@hakimbazol), Aug 28, 2026.

---

## Table of Contents

- [Overview](#overview)
- [File 101](#filetype)
- [Requirements and Installation](#requirementsandinstallation)


---

## Overview

This workshop consists of three session. We will learn together about :

1. Session 1.1  : What is R and RStudio?
2. Session 1.2  : Basic R Programming

Session 1 introduces you about difference between R and RStudio, and how to use it as reliable exploratory data analysis (EDA) tools. Several packages, such as `tidyverse` and `ggplot` are also will be applied, to produce a nice and publication-ready graphics.

Break

3. Session 2    : R in Bioinformatics Workflow
4. Session 3    : Automating Script using R

Session 2 introduces you about how R is applied in **industrial-grade** bioinformatics workflow. Session 2 are focusing on how to do EDA for microbiome dataset from Hulpusch et al (2023), which I also added the paper reference in the folder of Session 2.

Session 3 is an enrichment part that introduce you about the possibility of R to be used as **production-grade** of automation workflow, since it also can be done.

Each session has dedicated folder and file, including `.html` file for your guideline (static, can be opened in your browser) and `.Rmd` (dynamic, just open it using RStudio) file as the module. 

Only Session 3 that is based on the R pure script without `.Rmd` file, so if you would like to explore about real R script, you may see the content of Session 3!

---

## File 101

During the workshop, we will face several type of files, such as `.html`, `.Rmd`, `.R`, `.txt`, `.tsv` and `.xlsx`. Let me breakdown these format!

- `.html` means HyperText Markup Language, a format file that is usually applied for web browser file. During this workshop, all files with `.html` suffixes are your guideline. You can easily open it via any web browser such as Google Chrome, Microsoft Edge, Mozilla Firefox etc.

- `.Rmd` means R Markdown, a format file from R that let us to give explanation, modify script and produce the output directly in the file. All files with `.Rmd` suffixes are your module. Each script can be interactively run for each specific block, as long as libraries or variables are already loaded at the previous step.

- `.R` is the extension of R script. If you use R for general purpose, this is the file that you will face every time. This is the real form of R script, that you may see in folder of Session 3. `.R` script can be run line by line, made this script is very useful for EDA study.

- `.txt` and `.tsv` are similar tab delimiter text file. Yet, the `.txt` format might be more familiar rather than `.tsv`, particularly for Windows user. Nonetheless, both files encode similar value and R assume those files are similar, with full suffixes are also applied. Therefore, when these files are loaded, do not forget to add the extension such as `.tsv` or `.txt`.

- `.xlsx` is Microsoft Excel format that also can be called in R.

---

## Requirements and Installation

The workshop requires R and RStudio as separated file. 

You can download R at https://cran.r-project.org.

Meanwhile, RStudio can be downloaded at https://posit.co/downloads, and select RStudio (NOT THE RSTUDIO SERVER)

R and RStudio are available for Windows, MacOS and Linux. Select based on OS that will you use in the workshop.

Any issue during installation, let us know before the training so we can assist you.

---

## Any issue or comment for the course material?

Just raise issue on the Github link or email me at hakimbazol.work@gmail.com is okay.