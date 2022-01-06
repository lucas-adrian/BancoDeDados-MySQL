--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

CREATE SCHEMA IF NOT EXISTS  DHTUBE ;
USE  DHTUBE  ;
--------------------------------------------------------------------------------------------------------------------
CREATE TABLE avatar 
	(
	idAvatar INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45),
	 urlImagem VARCHAR(100)
	);
--------------------------------------------------------------------------------------------------------------------
CREATE TABLE pais
	(
	idPais INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100)
	);
--------------------------------------------------------------------------------------------------------------------
CREATE TABLE usuario
	(
idUsuario INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome Varchar(45),
email varchar(45),
senha varchar(45),
dataNascimento datetime,
cep varchar(45),
idpais INT(11),
idavatar INT(11),
 CONSTRAINT  FK_idPais_usuario  
		FOREIGN KEY  ( idpais )
        REFERENCES   pais ( idPais ),
        
  CONSTRAINT  FK_idAvatar_usuario   
		FOREIGN KEY  ( idavatar )
        REFERENCES   avatar ( idavatar )
	);

--------------------------------------------------------------------------------------------------------------------

CREATE TABLE PLAYLIST
	(
idPlaylist INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome Varchar(45),
datacriacao datetime,
privado SMALLINT(6),
idUsuario INT(11),
 CONSTRAINT  FK_idUsuario_playlist  
		FOREIGN KEY  ( idusuario )
        REFERENCES   usuario ( idusuario )
	);
--------------------------------------------------------------------------------------------------------------------
CREATE TABLE canal
	(
idCanal INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome Varchar(45),
descricao TEXT,
datacriacao datetime,
idUsuario INT(11),
 CONSTRAINT  FK_idUsuario_canal
		FOREIGN KEY  ( idusuario )
        REFERENCES   usuario ( idusuario )
	);
--------------------------------------------------------------------------------------------------------------------
CREATE TABLE video
	(
idvideo INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
idusuario INT(11),
titulo varchar(100),
descricao TEXT,
tamanho DOUBLE,
nomearquivo varchar(100),
duracao DOUBLE,
imagem varchar(100),
qtdreproducoes int(11),
qtdlikes int(11),
qtddislikes int(11),
privado smallint(6),
datapublicacao datetime,

 CONSTRAINT  FK_idUsuario_video
		FOREIGN KEY  ( idusuario )
        REFERENCES   usuario ( idusuario )
	);
    
--------------------------------------------------------------------------------------------------------------------
CREATE TABLE playlist_video
	(
    idvideo int(11),
    idplaylist int(11),
    
 CONSTRAINT  FK_idvideo_playlistvideo
		FOREIGN KEY  ( idvideo )
        REFERENCES   video ( idvideo ),
        
  CONSTRAINT  FK_idplaylist_playlistvideo
		FOREIGN KEY  ( idplaylist )
        REFERENCES   playlist ( idplaylist )    
	);