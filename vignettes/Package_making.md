Package\_making
================
Jenny
16/04/2021

## Basics for starting a package

Called my package smallpackage in RStudio. File &gt; New Project… &gt;
New Directory &gt; R package

``` r
library(devtools)
```

    ## Warning: package 'devtools' was built under R version 4.0.3

    ## Loading required package: usethis

    ## Warning: package 'usethis' was built under R version 4.0.4

``` r
install(".")
```

    ## WARNING: Rtools is required to build R packages, but is not currently installed.
    ## 
    ## Please download and install Rtools 4.0 from https://cran.r-project.org/bin/windows/Rtools/.

    ##          checking for file 'J:\r_github\smallpackage/DESCRIPTION' ...     checking for file 'J:\r_github\smallpackage/DESCRIPTION' ...   v  checking for file 'J:\r_github\smallpackage/DESCRIPTION'
    ##       -  preparing 'smallpackage': (50.6s)
    ##    checking DESCRIPTION meta-information ...     checking DESCRIPTION meta-information ...   v  checking DESCRIPTION meta-information
    ##       -  checking for LF line-endings in source and make files and shell scripts (515ms)
    ##   -  checking for empty or unneeded directories
    ##       -  building 'smallpackage_0.1.0.tar.gz'
    ##      
    ## 

    ## WARNING: Rtools is required to build R packages, but is not currently installed.
    ## 
    ## Please download and install Rtools 4.0 from https://cran.r-project.org/bin/windows/Rtools/.

    ## Running "C:/PROGRA~1/R/R-40~1.2/bin/x64/Rcmd.exe" INSTALL \
    ##   "C:\Users\jhodgson\AppData\Local\Temp\Rtmp4MumY0/smallpackage_0.1.0.tar.gz" \
    ##   --install-tests 
    ## * installing to library 'C:/Program Files/R/R-4.0.2/library'
    ## * installing *source* package 'smallpackage' ...
    ## ** using staged installation
    ## ** R
    ## ** byte-compile and prepare package for lazy loading
    ## ** help
    ## *** installing help indices
    ##   converting help for package     finding HTML links ...'smallpackage'
    ##  done
    ##     hello                                   html  
    ##     nafalse                                 html  
    ## *** copying figures
    ## ** building package indices
    ## ** installing vignettes
    ## ** testing if installed package can be loaded from temporary location
    ## *** arch - i386
    ## *** arch - x64
    ## ** testing if installed package can be loaded from final location
    ## *** arch - i386
    ## *** arch - x64
    ## ** testing if installed package keeps a record of temporary installation path
    ## * DONE (smallpackage)

``` r
library("smallpackage")

#use the inbuilt function!

hello()
```

    ## [1] "Hello, world!"

## Add new functions and documentation

You can insert a Roxygen skeleton by placing the cursor with a function
and clicking:

    Code > Insert Roxygen Skeleton

Delete the original NAMESPACE and help files that came with the
template.

After you have one or more functions with skeletons,use function
devtools::document() to create documentation. This re-creates a hello.Rd
helpfile in the man/ folder and populates the NAMESPACE with our
functions

``` r
devtools::document()
#Add rgdal as a dependency.
usethis::use_package("rgdal")
library(usethis)
use_gpl_license(version = 3, include_future = TRUE)
citation("smallpackage")
usethis::use_readme_rmd()
devtools::check()
```

Citation will not work very well until you edit the DESCRIPTION file.

First complete the authors. Remove the current author and maintainer
lines and replace it with the following line:

<Authors@R>: person(“First”, “Last”, email = “<first.last@example.com>”,
role = c(“aut”, “cre”))

Complete the title and description fields with appropriate details. If
you want to form a paragraph of text, make sure do indent the hanging
lines by 4 spaces (one tab). And make sure that your Description field
ends in a full-stop. Add a date

Use today’s date in ISO format, ie 2019-04-10. This will populate a
citation entry for us.
