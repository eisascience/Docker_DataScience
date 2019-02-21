#Dockerfile compiled by Eisa Mahyari
#Feb.21.2019
#Installing the Rocker/Verse to have R with R studio + goodies
LABEL maintainer="Eisa Mahyari @eisamahyari"

FROM rocker/verse:latest


RUN DEBIAN_FRONTEND=noninteractive apt-get update -y --no-install-recommends && \ 
apt-get install -y --no-install-recommends install \ 
  apt-transport-https \  
  libxml2-dev \
  libcairo2-dev \
  libsqlite3-dev \
  libmariadbd-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libssl-dev \
  libcurl4-openssl-dev \
  libssh2-1-dev \
  libxext6 \
  libsm6  \
  libxrender1 \
  libglib2.0-0 \
  unixodbc-dev \
  libicu-dev \
  libbz2-dev \
  build-essential \ 
  python-dev \
  autotools-dev \
  software-properties-common \
  gdebi-core \
  pandoc \
  pandoc-citeproc \
  libcurl4-gnutls-dev \
  libcairo2-dev \
  libxt-dev \
  xtail \
  curl \ 
  wget  \
  byobu \
  git \ 
  git-core \
  htop \
  man \
  unzip \
  bzip2 \
  nano \
  ca-certificates \
  pkg-config \
  tree \
  sudo


#allPackage <- as.data.frame(installed.packages(.Library))
#unique(as.character(allPackage$Package))
#cat(toString(shQuote(unique(as.character(allPackage$Package)), type = "cmd")), "\n")
#paste('RUN R -e ', '"BiocManager::install(', toString(shQuote(unique(as.character(allPackage$Package)), type = "sh")), ')"', sep="")
#toString(paste(sort(unique(c(as.character(allPackage$Package), "tidyverse", "caTools", "selectr", "remotes", "formatR")), decreasing = F), "/ ", collapse = " "))

## R libs 
RUN apt-get clean -y && \ 
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && R -e "source('https://bioconductor.org/biocLite.R')" \
  && install2.r --error \
    --deps TRUE \
    abind  \  acepack  \  ade4  \  affy  \  affyio  \  animation  \  annotate  \  AnnotationDbi  \  AnnotationFilter  \  
    AnnotationForge  \  AnnotationHub  \  antiword  \  ape  \  apeglm  \  aroma.light  \  ash  \  askpass  \  
    assertthat  \  backports  \  base  \  base64enc  \  bazar  \  bbmle  \  beachmat  \  beeswarm  \  BH  \  bibtex  \  
    bigmemory  \  bigmemory.sri  \  bindr  \  bindrcpp  \  Biobase  \  BiocFileCache  \  BiocGenerics  \  biocGraph  \  
    BiocInstaller  \  BiocManager  \  BiocNeighbors  \  BiocParallel  \  BiocStyle  \  BiocVersion  \  biocViews  \  
    biomaRt  \  Biostrings  \  biovizBase  \  bit  \  bit64  \  bitops  \  blob  \  bookdown  \  boot  \  broom  \  
    BSgenome  \  C50  \  callr  \  car  \  carData  \  caret  \  caretEnsemble  \  caroline  \  Category  \  caTools  \  
    cellranger  \  cellWise  \  checkmate  \  circlize  \  class  \  classInt  \  cli  \  clipr  \  clisymbols  \  
    clue  \  cluster  \  clusterProfiler  \  coda  \  codetools  \  colorspace  \  combinat  \  compiler  \  
    ComplexHeatmap  \  contfrac  \  corpcor  \  cowplot  \  crayon  \  crosstalk  \  Cubist  \  curl  \  cvTools  \  
    cytolib  \  data.table  \  datasets  \  DBI  \  dbplyr  \  DDRTree  \  DEFormats  \  DelayedArray  \  
    DelayedMatrixStats  \  dendextend  \  densityClust  \  DEoptimR  \  desc  \  DescTools  \  DESeq  \  DESeq2  \  
    deSolve  \  devtools  \  dichromat  \  digest  \  diptest  \  DirichletMultinomial  \  DO.db  \  docopt  \  
    doParallel  \  DOSE  \  doSNOW  \  dotCall64  \  dplyr  \  dropsim  \  DT  \  dtplyr  \  dtw  \  dynamicTreeCut  \  
    e1071  \  EBImage  \  EDASeq  \  edgeR  \  ellipse  \  ellipsis  \  elliptic  \  emdbook  \  EnrichmentBrowser  \  
    enrichplot  \  enrichR  \  ensembldb  \  europepmc  \  evaluate  \  expm  \  extrafont  \  extrafontdb  \  
    extremevalues  \  fansi  \  farver  \  fastAdaboost  \  fastcluster  \  fastICA  \  fastmatch  \  fBasics  \  
    fda  \  feature  \  fftwtools  \  fgsea  \  fields  \  fit.models  \  fitdistrplus  \  flashpcaR  \  flexmix  \  
    flowClust  \  flowCore  \  flowDensity  \  flowFP  \  flowMap  \  flowMeans  \  flowMerge  \  flowPeaks  \  
    flowQB  \  FlowRepositoryR  \  flowStats  \  flowTrans  \  flowType  \  flowViz  \  flowVS  \  flowWorkspace  \  
    FNN  \  forcats  \  foreach  \  foreign  \  formatR  \  Formula  \  fpc  \  fs  \  futile.logger  \  futile.options  \  
    garnett  \  gbRd  \  gdata  \  genefilter  \  geneplotter  \  generics  \  GenomeInfoDb  \  GenomeInfoDbData  \  
    GenomicAlignments  \  GenomicFeatures  \  GenomicRanges  \  GEOmap  \  GetoptLong  \  GGally  \  ggalt  \  
    ggbeeswarm  \  ggbio  \  ggcyto  \  ggforce  \  ggfortify  \  ggplot2  \  ggplotify  \  ggpubr  \  ggraph  \  
    ggrepel  \  ggridges  \  ggsci  \  ggseqlogo  \  ggsignif  \  gh  \  git2r  \  Glimma  \  glmnet  \  GlobalOptions  \  
    glue  \  GO.db  \  GOexpress  \  golubEsets  \  GOSemSim  \  GOstats  \  gower  \  gplots  \  gradDescent  \  
    graph  \  graphics  \  graphite  \  grDevices  \  grid  \  gridBase  \  gridExtra  \  gridGraphics  \  GSE  \  
    GSEABase  \  gss  \  gtable  \  gtools  \  gWidgets  \  gWidgetstcltk  \  haven  \  HDF5Array  \  hdf5r  \  
    heatmap3  \  Heatplus  \  hexbin  \  highr  \  Hmisc  \  hms  \  hom.Hs.inp.db  \  HSMMSingleCell  \  htmlTable  \  
    htmltools  \  htmlwidgets  \  httpuv  \  httr  \  hwriter  \  hypergeo  \  ica  \  IDPmisc  \  igraph  \  impute  \  
    ini  \  interactiveDisplayBase  \  inum  \  ipred  \  IRanges  \  irlba  \  iterators  \  jpeg  \  jsonlite  \  
    KEGGgraph  \  KEGGREST  \  kernlab  \  KernSmooth  \  kimisc  \  klaR  \  knitr  \  ks  \  labeling  \  labelled  \  
    laeken  \  lambda.r  \  lars  \  later  \  lattice  \  latticeExtra  \  lava  \  lazyeval  \  libcoin  \  limma  \  
    lme4  \  lmtest  \  locfit  \  lsei  \  lubridate  \  M3Drop  \  magick  \  magrittr  \  manipulate  \  
    manipulateWidget  \  maps  \  maptools  \  markdown  \  MASS  \  matlib  \  Matrix  \  MatrixModels  \  
    matrixStats  \  MBA  \  mclust  \  mcmc  \  MCMCpack  \  MCRestimate  \  memoise  \  metap  \  methods  \  
    mgcv  \  mime  \  MIMOSA  \  miniUI  \  minqa  \  misc3d  \  mixtools  \  mlbench  \  mltools  \  mnormt  \  
    modeest  \  ModelMetrics  \  modelr  \  modeltools  \  modes  \  moments  \  monocle  \  MotifFinder  \  mrgsolve  \  
    MultiAssayExperiment  \  multicool  \  munsell  \  mvoutlier  \  mvtnorm  \  NADA  \  ncdfFlow  \  ndjson  \  nlme  \  
    nloptr  \  NMF  \  nnet  \  npsurv  \  numDeriv  \  openCyto  \  openssl  \  openxlsx  \  ordinalNet  \  
    org.Hs.eg.db  \  org.Mm.eg.db  \  org.Mmu.eg.db  \  OrganismDbi  \  orthopolynom  \  pamr  \  parallel  \  
    parallelSVM  \  partykit  \  patchwork  \  pathview  \  pbapply  \  pbkrtest  \  pcaPP  \  pdftools  \  PFAM.db  \  
    pheatmap  \  pillar  \  pkgbuild  \  pkgconfig  \  pkgload  \  pkgmaker  \  plateCore  \  plogr  \  plotly  \  pls  \  
    plyr  \  png  \  polynom  \  prabclus  \  pracma  \  praise  \  preprocessCore  \  prettyunits  \  princurve  \  
    pROC  \  processx  \  prodlim  \  progress  \  proj4  \  promises  \  ProtGenerics  \  proxy  \  pryr  \  ps  \  
    purrr  \  qlcMatrix  \  QUALIFIER  \  quantreg  \  questionr  \  qvalue  \  R.methodsS3  \  R.oo  \  R.utils  \  
    R6  \  randomForest  \  ranger  \  RANN  \  rappdirs  \  RBGL  \  RchyOptimyx  \  rcmdcheck  \  RColorBrewer  \  
    Rcpp  \  RcppAnnoy  \  RcppArmadillo  \  RcppEigen  \  RcppGSL  \  RcppNumerical  \  RcppProgress  \  RcppRoll  \  
    RcppZiggurat  \  RCurl  \  Rdpack  \  readODS  \  readr  \  readtext  \  readxl  \  recipes  \  registry  \  
    rematch  \  remotes  \  ReportingTools  \  reprex  \  reshape  \  reshape2  \  reticulate  \  Rfast  \  
    RFOC  \  rgeos  \  rgl  \  Rgraphviz  \  rhdf5  \  Rhdf5lib  \  rio  \  rjson  \  RJSONIO  \  Rlabkey  \  
    rlang  \  rly  \  rmarkdown  \  rmutil  \  rngtools  \  robCompositions  \  robust  \  robustbase  \  
    ROCR  \  rpart  \  rpart.plot  \  RPMG  \  rprojroot  \  RProtoBufLib  \  rPython  \  rrcov  \  
    Rsamtools  \  RSEIS  \  RSpectra  \  RSQLite  \  rstudioapi  \  RTL  \  rtracklayer  \  Rtsne  \  
    Rttf2pt1  \  RUnit  \  RUVSeq  \  rvcheck  \  rvest  \  Rwave  \  S4Vectors  \  safe  \  
    SamSPECTRAL  \  scales  \  scater  \  scran  \  scRNA.seq.funcs  \  scRNAseq  \  SDAtools  \  
    SDMTools  \  segmented  \  selectr  \  sessioninfo  \  Seurat  \  sfsmisc  \  sgeostat  \  shape  \  shiny  \  
    shinycssloaders  \  ShortRead  \  SingleCellExperiment  \  slam  \  snow  \  sourcetools  \  sp  \  spam  \  
    SparseM  \  sparsesvd  \  spatial  \  SPIA  \  splancs  \  splines  \  SQUAREM  \  sROC  \  stable  \  stabledist  \  
    statip  \  statmod  \  stats  \  stats4  \  streamR  \  stringi  \  stringr  \  SummarizedExperiment  \  survival  \  
    synchronicity  \  sys  \  tcltk  \  testisAtlas  \  testthat  \  tibble  \  tidyr  \  tidyselect  \  tidyverse  \  
    tiff  \  timeDate  \  timeSeries  \  tinytex  \  tools  \  topGO  \  tree  \  triebeard  \  trimcluster  \  
    truncnorm  \  tsne  \  tweenr  \  units  \  UpSetR  \  urltools  \  usethis  \  utf8  \  utils  \  uuid  \  
    VariantAnnotation  \  vcd  \  VennDiagram  \  VGAM  \  VIM  \  vipor  \  viridis  \  viridisLite  \  
    vsn  \  webshot  \  WGCNA  \  whisker  \  withr  \  xfun  \  XML  \  xml2  \  xopen  \  xtable  \  XVector  \  
    yaml  \  zCompositions  \  zip  \  zlibbioc  \  zoo  


## Python 2
RUN curl -s https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \ 
python get-pip.py && \ 
rm -rf ~/.cache/pip && \ 
rm -f get-pip.py 

ENV PYTHON_PACKAGES="\
    numpy \
    matplotlib \
    scipy \
    scikit-learn \
    pandas \
    nltk \
    " 

RUN apk add --no-cache --virtual build-dependencies python --update py-pip \
    && apk add --virtual build-runtime \
    build-base python-dev openblas-dev freetype-dev pkgconfig gfortran \
    && ln -s /usr/include/locale.h /usr/include/xlocale.h \
    && pip install --upgrade pip \
    && pip install --no-cache-dir $PYTHON_PACKAGES \
    && apk del build-runtime \
    && apk add --no-cache --virtual build-dependencies $PACKAGES \
&& rm -rf /var/cache/apk/*


## Python 3
RUN apt-get update -qq \
  && apt-get -y --no-install-recommends install \
    python3-dev \
    python3-setuptools \
    python3-pip


# install anaconda

RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/archive/Anaconda3-5.2.0-Linux-x86_64.sh
 -O ~/anaconda.sh && \
    sha256sum Anaconda3-5.2.0-Linux-x86_64.sh && \
    /bin/bash ~/anaconda.sh -b -p /opt/conda && \
    rm ~/anaconda.sh

ENV PATH /opt/conda/bin:$PATH

#may be needed
#RUN echo 'source ~/.bashrc'

# Updating Anaconda packages
RUN conda update conda
RUN conda update anaconda
RUN conda update --all

# Set up env variables in R
ENV LD_LIBRARY_PATH=$CUDA_HOME/lib64:$CUDA_HOME/extras/CUPTI/lib64:$LD_LIBRARY_PATH
RUN echo "rsession-ld-library-path=$LD_LIBRARY_PATH" \ tee -a /etc/rstudio/rserver.conf \
  && echo "TENSORFLOW_PYTHON=/usr/bin/python3" >> /usr/local/lib/R/etc/Renviron


## Install Keras
RUN pip3 install \
    wheel==0.33.0 \
    setuptools==40.8.0 \
    scipy==1.2.1 --upgrade \
    h5py==2.9.0 \
    pyyaml==3.13 \
    requests==2.21.0 \
    Pillow==5.4.1 \
    tensorflow==1.12.0 \
    keras==2.2.4 \
    scikit-learn \
    numpy \
    matplotlib \
    pandas \
    nltk \
    --no-cache-dir \
  && install2.r keras
  


  
  

## Get Java (for h2o R package)
RUN apt-get update -qq \
  && apt-get -y --no-install-recommends install \
    cmake \
    default-jdk \
    default-jre \
  && R CMD javareconf

## h2o requires Java
RUN install2.r h2o
RUN install2.r greta




# Download and install shiny server
# from https://github.com/rocker-org/shiny

RUN wget --no-verbose https://download3.rstudio.org/ubuntu-14.04/x86_64/VERSION -O "version.txt" && \
    VERSION=$(cat version.txt)  && \
    wget --no-verbose "https://download3.rstudio.org/ubuntu-14.04/x86_64/shiny-server-$VERSION-amd64.deb" -O ss-latest.deb && \
    gdebi -n ss-latest.deb && \
    rm -f version.txt ss-latest.deb && \
    . /etc/environment && \
    R -e "install.packages(c('shiny', 'rmarkdown'), repos='$MRAN')" && \
    cp -R /usr/local/lib/R/site-library/shiny/examples/* /srv/shiny-server/

EXPOSE 3838 8888

COPY shiny-server.sh /usr/bin/shiny-server.sh

CMD ["/usr/bin/shiny-server.sh]



