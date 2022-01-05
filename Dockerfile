# Un serveur web minimal maintenant
ARG version=latest
FROM httpd:$version

LABEL   maintainer="Eni Ecole Informatique" \
        description="Serveur Apache avec page html simple et image intégrée" \
        auteur="Mathieu Claveau-Luno"

COPY web-content /usr/local/apache2/htdocs/
RUN echo "Date et heure de création de l'image : $(date '+%d %m %Y à %Hh:%M:%S')" >/horocreationimage.txtdoker