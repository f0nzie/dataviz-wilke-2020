FROM rocker/rstudio:3.6.3


RUN apt-get -y update \
 && apt-get -y install  \
    libxml2-dev \
    libz-dev

# Linux: pre-requisites gor GDAL, rgdal, rgeos and units
RUN apt-get install -y \
    libudunits2-dev \
    libgdal20 \
    libgdal-dev \
    libgeos-dev \ 
    libproj-dev     

# Linux: pre-requisites for magick
RUN apt-get install -y \
    libmagick++-dev


# Install R packages
RUN install2.r --error \
    egg \
    forcats \
    foreign \
    magick \
    maps \
    maptools \
    nlme \
    plot3D \
    rgdal \
    rgeos \
    sf \
    units

# Install R packages
RUN install2.r --error \
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
    nycflights13 \ 
    readr \
    treemapify \
    tidyverse \
    bookdown

# mvtnorm required by ungeviz
# rstanarm required by dviz.supp
# install statebins from source
RUN install2.r --error \
  rworldmap \
  lwgeom \
  mvtnorm \
  rstanarm

RUN install2.r --error \
  ggmap \
  geofacet \
  ggspatial
  
RUN install2.r --error \  
  emmeans \
  lobstr \
  gganimate \
  transformr


# copy colorspace package source folder
#  /home/rstudio/pkg/strapgod
# /home/rstudio/pkg/ungeviz
# /home/rstudio/pkg/cowplot
#  /home/rstudio/pkg/colorblindr
COPY colorspace /home/rstudio/pkg/colorspace
COPY strapgod /home/rstudio/pkg/strapgod
COPY ungeviz /home/rstudio/pkg/ungeviz
COPY cowplot /home/rstudio/pkg/cowplot
COPY colorblindr /home/rstudio/pkg/colorblindr
COPY dviz.supp /home/rstudio/pkg/dviz.supp
COPY ggtextures /home/rstudio/pkg/ggtextures
COPY statebins /home/rstudio/pkg/statebins

# COPY dviz.supp /home/rstudio/pkg/dviz.supp

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

# RUN Rscript -e "install.packages('/home/rstudio/pkg/colorspace', repos = NULL, type='source')"
# RUN Rscript -e "install.packages('/home/rstudio/pkg/strapgod', repos = NULL, type='source')"
# RUN Rscript -e "install.packages('/home/rstudio/pkg/ungeviz', repos = NULL, type='source')"
# RUN Rscript -e "install.packages('/home/rstudio/pkg/cowplot', repos = NULL, type='source')"
# RUN Rscript -e "install.packages('/home/rstudio/pkg/colorblindr', repos = NULL, type='source')"
# RUN Rscript -e "install.packages('/home/rstudio/pkg/dviz.supp', repos = NULL, type='source')"
# RUN Rscript -e "install.packages('/home/rstudio/pkg/ggtextures', repos = NULL, type='source')"


RUN install2.r --error \  
  patchwork \
  tidybayes

COPY dataviz-2020 /home/rstudio/book
RUN chmod a+rwx -R /home/rstudio/book
