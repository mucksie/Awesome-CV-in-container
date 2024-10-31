FROM ghcr.io/mucksie/tinytex:0.53

# TeX packages
# Not included anymore: doi, lastpage, moresize
# these dependents auto includes: fp, ms, trimspaces
RUN tlmgr install \
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
# TeX font packages
fontawesome5 \
roboto \
sourcesanspro

WORKDIR /src

CMD ["make", "resume"]
