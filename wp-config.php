<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'projetcms' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'root' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', '' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
<<<<<<< HEAD
define( 'AUTH_KEY',         'g(#H56sh_nW8(jEmFPSXWIDmo]uAmzN<Twk>OnEu[[l]5n#j(,)OD]iXS$INw[>`' );
define( 'SECURE_AUTH_KEY',  'N|=Me c9rJyKpX1J((^c&KDHw$JfF:ViPI2UXR{dSmT~;x.H1f0Z)N4VDnS:9xA?' );
define( 'LOGGED_IN_KEY',    'mV}Huwf^nweBFoo7mAxK<Od)naAfVOvo64H8JpEwxXSSGws^UJo}k* _an.t3}a;' );
define( 'NONCE_KEY',        '6))E*&a8Xh{ B&f/1YYztVz9f#AOR}r5!izI.!587`hwN=h{Zs1>Fmj=o=4el<K?' );
define( 'AUTH_SALT',        'Z`][f9e}qK6@aptu6qdnOV6,sSKP&.O(]a8[L58`zV/b.dEWDW)p&l!>s9GYi?j1' );
define( 'SECURE_AUTH_SALT', '[ldAk:XsD2<G<~Z]Qf[SNK,a%]:L+5<]hy]]iH.#QJ5s~Tr W^5]QD$9-FSmgux}' );
define( 'LOGGED_IN_SALT',   '58ZPSLTD4uh=M:}y-z^v])Dp]4$~[CiCZluV|u|wseVSncWG8J{Td$({gx`G|uz*' );
define( 'NONCE_SALT',       'l2akj#ndQ^C`RGTwv:9TEAt`>S*rMt 1dS]SOoN&(jWjT60a#:o32J@wmG}Si%c?' );
=======
define( 'AUTH_KEY',         'DEcdXX$WN~A{E;[  oEP_YG2vc/OhK&]K`.O]7.`>ESr/yu3(EQ5Wu$8JKjB,&mw' );
define( 'SECURE_AUTH_KEY',  'LI{xPG@/`QoLno?q@/kwU]UtZ3IbIYzmi/jT~Cr]#R>1Fo(R3aVQ+LHOz.d,;8eX' );
define( 'LOGGED_IN_KEY',    '.M#!o,<tO*K$BoS}B>2Rx+m#eP^u/DIuAz*hr/XNK(E]SE7gRiYuzT*;D&Nx*:bc' );
define( 'NONCE_KEY',        'Zli(ns2F3]HkX;j1eS-wfFmZm!fcm ]7PlR8-$TQ^/?+L>R)rFizCOS}7j-,IX-)' );
define( 'AUTH_SALT',        '%(%:MO+DN_|_xjTxYk><5B=s$fqkz>^xEq( msFg2c<(p=5d%/-LC ?/bO:hmW1)' );
define( 'SECURE_AUTH_SALT', '.=5KJPkS?`VP/(7mfLK=5F#Lh_^`&^Dhrd.V;D;/5gGkH^K/`?I5gzcV4!UadHam' );
define( 'LOGGED_IN_SALT',   'w-EoI%}cC|Ybxc6g[5M+Hw_I}|FD9<z1qyyCiCj)P:@L6 Z2V.=^+uvEZN} zG.1' );
define( 'NONCE_SALT',       '_(>:*vcl[d5esJq+UXCG$TjQE>X7h=*6j|ms52?:*:X~Z7{PZeR++#*IgUnw:U-K' );
>>>>>>> 976f7875fa8b7e51ee6405a724a00072cf79646c
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );
