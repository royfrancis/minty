
# rmdstyle

This is an R package containing Rmarkdown templates for slides and reports.

## Installation  

This package can be installed from R/RStudio as follows:

```r
# install devtools from CRAN
install.packages("devtools")

# install this package from GitHub
devtools::install_github("royfrancis/rmdstyle")
```

Supporting packages should install automatically, otherwise install manually:

```
# general
install.packages("knitr","markdown","rmarkdown","captioner","bookdown")

# for presentation
install.packages("xaringan")
```

The standard templates are to be used for preparing your own material. The 'demo' template contains detailed examples of RMarkdown syntax, features, formatting, alignment, graphics and interactive graphics. If you plan to use/render the demo template, note that it uses several extra R packages listed below. If you just want to view the rendered demo output and not render it yourself, see section 'Rendering' below.

```
install.packages(c("dplyr", "tidyr", "stringr", "kableExtra",
"formattable", "DT", "highcharter", "plotly","ggiraph", "dygraphs",
"networkD3", "leaflet", "crosstalk"))
```

## Using a Template  

The template for use can be accessed from within RStudio as shown below. Use this to prepare your own presentation slides.

`File > New File > R Markdown... > From Template > [name-of-template]`

## Rendering

Once you have created your own **.Rmd** file based on the template and saved to a suitable location, the **.Rmd** document can be rendered to HTML by running the below in the document directory.

```
rmarkdown::render("nbis-report.Rmd")
```

## Sharing

When sharing a rendered HTML document, whether supporting files must be accompanied depends on the template. `nbis-report` template is standalone. The HTML file alone can be shared.

For other templates, note that the **assets** directory or any other supporting directories such as **analysis_files** must NOT be deleted. They must be provided when sharing the HTML document. The final HTML document is NOT standalone. It is dependent on the child directories. If you have your own content (images etc) used in the RMarkdown document, add them to a directory named **analysis_assets**.

To view example of rendered HTML content, go [here](https://royfrancis.github.io/rmdstyle/).

## Contact

If you have corrections, comments or suggestions, feel free to submit a report on the Github [issues](../../issues/) page.  

---

**2019** | Roy Francis
