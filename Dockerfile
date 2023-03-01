FROM pandoc/latex:3.0.1-alpine
RUN tlmgr install mdwtools
