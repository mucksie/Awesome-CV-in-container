FROM ghcr.io/mucksie/tinytex:0.53

### install make
RUN apt-get update \
 && apt-get install --yes --no-install-recommends \
    make \
### clean
 && apt-get clean \
 && rm --recursive --force /var/lib/apt/lists/* \
### TeX packages
### Not included anymore: doi, lastpage, moresize
### these dependents auto includes: fp, ms, trimspaces
 && tlmgr install \
    bookmark \
    enumitem \
    environ \
    fancyhdr \
    ifmtarg \
    parskip \
    pgf \
    ragged2e \
    setspace \
    tcolorbox \
    tikzfill \
    xifthen \
    xstring \
### TeX font packages
    fontawesome5 \
    roboto \
    sourcesanspro

WORKDIR /src

CMD ["make"]
