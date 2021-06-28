# rmdstyle

This is an R package containing R Markdown templates for reports/documentation and slides. The GitHub repo is available at  [https://github.com/royfrancis/rmdstyle](https://github.com/royfrancis/rmdstyle).

## Templates
### nbis-report

+ A quick view of this style is [here](https://royfrancis.github.io/rmdstyle/nbis-report.html).  
+ A full demo of this style is [here](https://royfrancis.github.io/rmdstyle/nbis-report-demo.html).

## Usage
### Installation  

This package can be installed from R/RStudio as follows:

```
install.packages("remotes")
remotes::install_github("royfrancis/rmdstyle")
```

Supporting packages should install automatically, otherwise install manually:

```
install.packages(c("bookdown","captioner","knitr","markdown","rmarkdown"))
```

The standard templates are to be used for preparing your own material. The 'demo' template contains detailed examples of RMarkdown syntax, features, formatting, alignment, graphics and interactive graphics. If you plan to use/render the demo template, note that it uses several extra R packages listed below. If you just want to view the rendered demo output and not render it yourself, see section 'Rendering' below.

```
install.packages(c("dplyr", "tidyr", "stringr", "kableExtra", "formattable", "DT", "highcharter", "plotly","ggiraph", "dygraphs", "networkD3", "leaflet", "crosstalk"))
```

After installing the package, restart R/Rstudio.

### Using a Template  

The templates can be accessed from within RStudio as shown below. Use this as a starting point for your own document.

`File > New File > R Markdown... > From Template > [name-of-template]`

### Rendering

Once you have created your own **.Rmd** file based on the template and saved to a suitable location, say for example; **nbis-report.Rmd**, the document can be rendered to HTML by running the below in the document directory.

```
rmarkdown::render("nbis-report.Rmd")
```

## Contact

If you have corrections, comments or suggestions, feel free to submit a report on the Github [issues](../../issues/) page.  

---

**2021** | Roy Francis
