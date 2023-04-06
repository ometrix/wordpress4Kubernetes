# wordpress4Kubernetes
Yaml config para desplegar wordpress en kubernetes usando secretos

Estos son manifiestos creados a partir de las imagenes de bitnami(Wordpress/Mysql) contenedores NO ROOT lo cual brinda una capa de seguridad, han sido agregadas las variables de entorno he includo la configuracion con secrets

lo mas ideal es agregar un administrador de secretos lo cual brinda cifrado y mayor seguridad a los secretos que manejemos.

### A Futuro
Pinso agregar configMaps para realizar un deployment mas automatico en cuanto a las variables de entorno.
