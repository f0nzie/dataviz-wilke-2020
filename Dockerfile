FROM rocker/rstudio:3.6.3

RUN apt-get -y update \
 && apt-get -y install  \
    libxml2-dev \
    libz-dev

# Linux: pre-requisites gor GDAL, rgdal, rgeos and units
# Linux: pre-requisites for magick
RUN apt-get install -y \
    libudunits2-dev \
    libgdal20 \
    libgdal-dev \
    libgeos-dev \ 
    libproj-dev \
    libmagick++-dev


# Install R packages
RUN install2.r --error --repo https://mran.microsoft.com/snapshot/2019-06-12 \
    bookdown \
    egg \
    forcats \
    foreign \
    gapminder \
    ggrepel \
    ggridges \
    ggthemes \
    ggforce \
    gridGraphics \
    ggplot2movies \
    gridExtra \
    gtable \ 
    hexbin \
    lubridate \
    magick \
    maps \
    maptools \
    nlme \
    nycflights13 \ 
    plot3D \
    rgdal \
    rgeos \
    readr \
    sf \
    treemapify \
    tidyverse \
    units


# mvtnorm required by ungeviz
# rstanarm required by dviz.supp
# install statebins from source 
RUN install2.r --error  --repo https://mran.microsoft.com/snapshot/2019-06-12 \  
  emmeans \
  ggmap \
  geofacet \
  ggspatial \
  gganimate \
  lwgeom \
  mvtnorm \
  rworldmap \
  transformr

RUN install2.r --error  --repo https://mran.microsoft.com/snapshot/2019-08-12 \  
  rstanarm

RUN install2.r --error  --repo https://mran.microsoft.com/snapshot/2019-12-12 \  
  lobstr 

COPY colorspace /home/rstudio/pkg/colorspace
COPY strapgod /home/rstudio/pkg/strapgod
COPY ungeviz /home/rstudio/pkg/ungeviz
COPY cowplot /home/rstudio/pkg/cowplot
COPY colorblindr /home/rstudio/pkg/colorblindr
COPY dviz.supp /home/rstudio/pkg/dviz.supp
COPY ggtextures /home/rstudio/pkg/ggtextures
COPY statebins /home/rstudio/pkg/statebins

RUN Rscript -e "install.packages(c(\
  '/home/rstudio/pkg/colorspace', \
  '/home/rstudio/pkg/strapgod', \
  '/home/rstudio/pkg/ungeviz', \
  '/home/rstudio/pkg/cowplot', \
  '/home/rstudio/pkg/colorblindr', \
  '/home/rstudio/pkg/dviz.supp', \
  '/home/rstudio/pkg/ggtextures', \
  '/home/rstudio/pkg/statebins' \
  ), repos = NULL, type='source')"


RUN install2.r --error \  
  patchwork \
  tidybayes

COPY dataviz-2020 /home/rstudio/book
RUN chmod a+rwx -R /home/rstudio/book
