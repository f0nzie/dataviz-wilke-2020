

# Technical notes {-}

The entire book was written in R Markdown, using the **bookdown**, **rmarkdown**, and **knitr** packages. All figures were made with **ggplot2**, with the help of add-on packages **cowplot**, **egg**, **ggforce**, **ggrepel**, **ggridges**, **sf**, and **treemapify**. Color manipulations were done with the **colorspace** and **colorblindr** packages. For many of these packages, the current development version is required to compile all parts of the book.

The source code for the book is available here: https://github.com/clauswilke/dataviz. The book also requires a supporting R package, **dviz.supp**, whose code is available here: https://github.com/clauswilke/dviz.supp.

The book was last compiled using the following environment:

```
## R version 3.6.3 (2020-02-29)
## Platform: x86_64-pc-linux-gnu (64-bit)
## Running under: Debian GNU/Linux 10 (buster)
## 
## Matrix products: default
## BLAS/LAPACK: /usr/lib/x86_64-linux-gnu/libopenblasp-r0.3.5.so
## 
## locale:
##  [1] LC_CTYPE=en_US.UTF-8       LC_NUMERIC=C              
##  [3] LC_TIME=en_US.UTF-8        LC_COLLATE=en_US.UTF-8    
##  [5] LC_MONETARY=en_US.UTF-8    LC_MESSAGES=C             
##  [7] LC_PAPER=en_US.UTF-8       LC_NAME=C                 
##  [9] LC_ADDRESS=C               LC_TELEPHONE=C            
## [11] LC_MEASUREMENT=en_US.UTF-8 LC_IDENTIFICATION=C       
## 
## attached base packages:
## [1] stats     graphics  grDevices utils     datasets  methods   base     
## 
## other attached packages:
##  [1] nycflights13_1.0.1 gapminder_0.3.0    RColorBrewer_1.1-2 gganimate_1.0.5   
##  [5] ungeviz_0.1.0      emmeans_1.4.6      mgcv_1.8-31        nlme_3.1-147      
##  [9] broom_0.5.6        tidybayes_2.0.3    maps_3.3.0         statebins_1.4.0   
## [13] sf_0.9-2           maptools_0.9-9     rgeos_0.5-2        sp_1.4-1          
## [17] ggspatial_1.0.3    geofacet_0.1.10    plot3D_1.3         magick_2.3        
## [21] hexbin_1.28.1      treemapify_2.5.3   gridExtra_2.3      ggmap_3.0.0       
## [25] ggthemes_4.2.0     ggridges_0.5.2     ggrepel_0.8.2      ggforce_0.3.1     
## [29] patchwork_1.0.0    lubridate_1.7.8    forcats_0.5.0      stringr_1.4.0     
## [33] purrr_0.3.4        readr_1.3.1        tidyr_1.0.2        tibble_3.0.1      
## [37] tidyverse_1.3.0    dviz.supp_0.1.0    dplyr_0.8.5        colorblindr_0.1.0 
## [41] ggplot2_3.3.0      colorspace_1.4-1   cowplot_1.0.0.9000
## 
## loaded via a namespace (and not attached):
##  [1] rjson_0.2.20        ellipsis_0.3.0      class_7.3-15       
##  [4] estimability_1.3    fs_1.4.1            rstudioapi_0.11    
##  [7] farver_2.0.3        ggfittext_0.8.1     svUnit_1.0.3       
## [10] mvtnorm_1.1-0       fansi_0.4.1         xml2_1.3.2         
## [13] splines_3.6.3       knitr_1.28          polyclip_1.10-0    
## [16] jsonlite_1.6.1      dbplyr_1.4.3        png_0.1-7          
## [19] compiler_3.6.3      httr_1.4.1          backports_1.1.6    
## [22] assertthat_0.2.1    Matrix_1.2-18       cli_2.0.2          
## [25] tweenr_1.0.1        prettyunits_1.1.1   htmltools_0.4.0    
## [28] tools_3.6.3         misc3d_0.8-4        coda_0.19-3        
## [31] gtable_0.3.0        glue_1.4.0          Rcpp_1.0.4.6       
## [34] cellranger_1.1.0    imguR_1.0.3         vctrs_0.2.4        
## [37] xfun_0.13           strapgod_0.0.4.9000 rvest_0.3.5        
## [40] lifecycle_0.2.0     MASS_7.3-51.5       scales_1.1.0       
## [43] hms_0.5.3           yaml_2.2.1          stringi_1.4.6      
## [46] e1071_1.7-3         RgoogleMaps_1.4.5.3 rlang_0.4.5        
## [49] pkgconfig_2.0.3     bitops_1.0-6        geogrid_0.1.1      
## [52] evaluate_0.14       lattice_0.20-38     tidyselect_1.0.0   
## [55] plyr_1.8.6          magrittr_1.5        bookdown_0.18      
## [58] R6_2.4.1            generics_0.0.2      DBI_1.1.0          
## [61] pillar_1.4.3        haven_2.2.0         foreign_0.8-76     
## [64] withr_2.2.0         units_0.6-6         modelr_0.1.6       
## [67] crayon_1.3.4        arrayhelpers_1.1-0  KernSmooth_2.23-16 
## [70] rmarkdown_2.1       progress_1.2.2      jpeg_0.1-8.1       
## [73] rnaturalearth_0.1.0 grid_3.6.3          readxl_1.3.1       
## [76] reprex_0.3.0        digest_0.6.25       classInt_0.4-3     
## [79] xtable_1.8-4        munsell_0.5.0
```
