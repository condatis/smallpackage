
<!-- README.md is generated from README.Rmd. Please edit that file -->

# smallpackage

<!-- badges: start -->
<!-- badges: end -->

The goal of smallpackage is for me to learn how to make packages

## Installation

This R package is not on CRAN, but you can install and attach it
locally:

``` r
install.packages("smallpackage")
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(smallpackage)
## basic example code
```

If Github Pages is enabled, by default the Readme.md becomes the
homepage.

Then hyperlinks can be used to get to html files in the ‘doc’ folder
like so:

<https://condatis.github.io/smallpackage/doc/second-vignette.html>

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/master/examples>.
