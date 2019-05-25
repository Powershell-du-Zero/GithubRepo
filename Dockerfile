FROM nginx:stable

LABEL maintainer="PowerShell du Zéro <contact@powershell-du-zero.fr>"

COPY index.html /usr/share/nginx/html/index.html
COPY jquery.min.js /usr/share/nginx/html/jquery.min.js

Copy substituteEnv.sh /tmp/substituteEnv.sh
RUN chmod +x /tmp/substituteEnv.sh

EXPOSE 80

ENTRYPOINT ["/tmp/substituteEnv.sh", "/usr/share/nginx/html/index.html"]
CMD ["nginx", "-g", "daemon off;"]