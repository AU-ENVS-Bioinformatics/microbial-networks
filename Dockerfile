# TODO: Do not depend on this image
FROM ghcr.io/js2264/oma:latest as base

# Add your additional instructions here
RUN R -e "install.packages('lavaan', dependencies = TRUE)" && \
  R -e "devtools::install_github('stefpeschel/NetCoMi', dependencies = c('Depends', 'Imports', 'LinkingTo'), repos = c('https://cloud.r-project.org/', BiocManager::repositories()))" && \
  R -e "install.packages('CARlasso'); devtools::install_github('zdk123/SpiecEasi'); devtools::install_github('GraceYoon/SPRING')" && \
  R -e "install.packages('visNetwork', dependencies = TRUE)" && \
  R -e "install.packages('BDgraph', dependencies = TRUE)"
