FROM quay.io/cvlibrary/uwsgi-perl:2.0.9

COPY cpanfile* /

RUN PERL_CARTON_PATH=/usr/local carton install --cpanfile=cpanfile --deployment \
 && rm cpanfile*
