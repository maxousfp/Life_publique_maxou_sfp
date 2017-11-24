// =======================================================================================================================================================================================
										// By Maxou - www.sfpteam.fr - INTERDICTION DE RECOPIER !! //
										  // Poursuite pénal possible ! Voir amar.arma3.fr //
// =======================================================================================================================================================================================

// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!
// En cas d'ajout de nouveaux parametres ici, ne pas oublier de modifier le fichier configuration_du_serveur.sqf !!!!!

// =======================================================================================================================================================================================
												// NE PAS TOUCHER CETTE PARTIE CI DESSOUS //
// =======================================================================================================================================================================================
if (isnil "fin_sfp_configuration_du_serveur") then
{
	[] call compile PreprocessFileLineNumbers "config\compilation_listes_des_armes.sqf";
	[] call compile PreprocessFileLineNumbers "config\compilation_listes_des_equipements.sqf";
	[] call compile PreprocessFileLineNumbers "divers\repeindre_voiture\tuning\initialisation_tuning.sqf";

	_lancement_initilisation_inventaire = [] execVM "config\personnalisation_famille.sqf";  
	waitUntil {scriptDone _lancement_initilisation_inventaire;};
	
	fin_sfp_configuration_du_serveur = true;
};
// =======================================================================================================================================================================================
										// JUSQU'A ICI -- JUSQU'A ICI -- JUSQU'A ICI -- JUSQU'A ICI //
// =======================================================================================================================================================================================


// =======================================================================================================================================================================================
										// VOUS POUVEZ MODIFIER LES PARTIES CI DESSOUS //
// =======================================================================================================================================================================================

debug_mission_pour_dev = false; // True si dev en local seulement !!!!!
serveur_id_sauvegarde = "nom_de_votre_life_sfp"; // A modifier obligatoirement pour avoir vos propres sauvegardes, mettez ce que vous voulez !

// =======================================================================================================================================================================================
// ADMINISTRATEUR/MODERATEUR/MJ
// =======================================================================================================================================================================================

sfp_config_liste_admin =  	   
								[
									"76561198084785412", // Maxou Exemple
									"la_votre_ici_etc" // Maxou
								];

sfp_config_liste_moderateur = 
								[
									"76561198084785412", // Maxou Exemple
									"la_votre_ici_etc" // Maxou
								];
					
sfp_config_liste_des_mj = 		
								[
									"76561198084785412", // Maxou Exemple
									"la_votre_ici_etc" // Maxou
								];

// =======================================================================================================================================================================================
// CREDIT SFP ET PROGRAMMATION ARGENT
// =======================================================================================================================================================================================
sfp_config_credit_autorisation_minutes_de_jeu = 300; // Nombres de minutes de jeu minimum pour obtenir autorisation credit

sfp_config_reglage_credit_sfp = 
					[
						1250000, // Montant MAX crédit possible
						round (60 * 10), // Temps attente entre les mensualités
						250 // mensualité maximum = montant du crédit divisé par cette somme
					];

sfp_config_activer_impots = 
					[
						true, // Activer ou desactiver
						10, // Pourcentage du montant de l'impot sur salaire si salaire !
						600 // Prélévement tout les X minutes
					];

sfp_config_montant_de_depart_banque = 320000;
sfp_config_montant_de_depart_poche = 1000;

sfp_config_montant_max_livret_A = 50000;
sfp_config_montant_interet_livret_A = 2.3; // Argent en pourcentage que rapporte le montant sur le livret A

sfp_config_salaire_sarl_auto_ecole = 250;
sfp_config_salaire_sarl_avocat = 3200;
sfp_config_salaire_sarl_car_shop = 1500;
sfp_config_salaire_sarl_depannage = 850;
sfp_config_salaire_sarl_neomedia = 3040;
sfp_config_salaire_sarl_pompier = 1000;
sfp_config_salaire_sarl_taxi_g7 = 850;

sfp_config_pourcentage_amende_coffre_gendarmerie = 60; // Lors d'une amente, ce pourcentage va dans le coffre de la gendarmerie
sfp_config_pourcentage_envoye_aux_gendarmer = 10; // Lors d'une amende, ce pourcentage va a chaque joueur (divisé entre le nombre de gendarme connectés)

sfp_config_montant_recompense_max_loto = 1000; // Francaise des jeux minimum 1 max 100000 !!!
sfp_config_montant_recompense_max_euromillion = 5000; // Francaise des jeux minimum 1 max 100000 !!!
sfp_config_montant_recompense_statut_a_trouver = 35000;

sfp_config_pourcentage_gain_mission_courrier = 0.39; // Distance de mission multiplié par ce pourcentage

sfp_config_tresor_montant_argent_gagne = round (6000 + (random 5000)); // Montant gagné lorsque vous avez trouvé le trésor
sfp_config_tresor_temps = (300 + (random 1200)); // Le temps d'attente entre chaque spawn du trésor
sfp_config_tresor_distance = 100; // La distance MAX ou peut ce trouver le trésor par rapport au marqueur
sfp_config_tresor_type = "Land_GarbageContainer_closed_F"; // Le type de trésor à rechercher

sfp_config_prix_transformation_heroine = 25;
sfp_config_prix_transformation_petrole = 10;
sfp_config_prix_transformation_cannabis = 21;

sfp_config_prix_saut_parachute = 650;

// =======================================================================================================================================================================================
// CONFIGURATION EXTRA VEHICULES
// =======================================================================================================================================================================================
sfp_config_listes_des_vehicules_pompiers = ["DAR_TahoeEMS","C_Hatchback_01_sport_F","C_SUV_01_Pompier_SFP","I_Truck_Pompier_SFP","SFP_Mercedes_Camion_Pompier","SFP_Sprinter_Pompier","C_Van_Pompier_01_box_F","Offroad_01_sarl_pompier_sfp"]; // Pour initialiser les scripts de gyrophares etc
sfp_config_listes_des_vehicules_avec_reserve_eau = ["O_Heli_Light_Pompier_SFP","I_Truck_Pompier_SFP","SFP_Mercedes_Camion_Pompier"]; // Pour initialiser les scripts de gyrophares etc

sfp_config_listes_des_vehicules_interdit_de_plaques = ["O_MRAP_02_F","UAZ_MG","B_G_Offroad_01_armed_F","B_G_Offroad_01_F","I_C_Offroad_02_unarmed_F","O_T_LSV_02_armed_F","O_T_LSV_02_unarmed_F","SFP_jeep_blinde"];
sfp_config_listes_des_plaques_non_flashables = ["??-???-??","Plaque arrachée","Véhicule gang licence_gang_v2","Véhicule gang %1","Véhicule gang %2", sfp_config_famille_une_nom_pour_variable, sfp_config_famille_deux_nom_pour_variable];

sfp_config_nombre_de_vehicule_max_par_joueur_sorties_civil = 4; // Evite abus donc lag
sfp_config_nombre_de_vehicule_max_par_joueur_sorties_sarl_altis_and_furious = 30; // Evite abus donc lag 
sfp_config_nombre_de_vehicule_max_par_joueur_sorties_sarl_carshop = 9; // Evite abus donc lag
sfp_config_nombre_de_vehicule_max_par_joueur_sorties_sarl_neomedia = 7; // Evite abus donc lag

sfp_config_position_des_previsualitions_des_vehicules = [25692,19480.1,0]; // Zone ou sera affiché en prévisualition des véhicules avant achat

sfp_config_pourcentage_remboursement_max_assurance_sfp = 75; // Pourcentage que rembourse l'assurance par rapport aux prix du véhicule
sfp_config_pourcentage_pour_calcul_prix_assurance_sfp = 53; // Pourcentage a payer sur le montant souhaité remboursé

sfp_config_prix_du_ferry = 0.04; // distance joueur a position final multiplié par ce pourcentage
sfp_config_temps_traverse_du_ferry = 180; // distance joueur a position final divisé par ce chiffre
sfp_config_position_du_ferry_sfp = 
						[
							["Ekali",(getmarkerpos "position_ferry_spawn_un"), round ((player distance (getmarkerpos "position_ferry_spawn_un")) * sfp_config_prix_du_ferry), round ((player distance getmarkerpos "position_ferry_spawn_un") / sfp_config_temps_traverse_du_ferry)],
							["Ochrolimni",getmarkerpos "position_ferry_spawn_deux", round ((player distance getmarkerpos "position_ferry_spawn_deux") * sfp_config_prix_du_ferry), round ((player distance getmarkerpos "position_ferry_spawn_deux") / sfp_config_temps_traverse_du_ferry)],
							["Kavala",getmarkerpos "position_ferry_spawn_trois", round ((player distance getmarkerpos "position_ferry_spawn_trois") * sfp_config_prix_du_ferry), round ((player distance getmarkerpos "position_ferry_spawn_trois") / sfp_config_temps_traverse_du_ferry)],
							["Presque ile sud",getmarkerpos "position_ferry_spawn_quatre", round ((player distance getmarkerpos "position_ferry_spawn_quatre") * sfp_config_prix_du_ferry), round ((player distance getmarkerpos "position_ferry_spawn_quatre") / sfp_config_temps_traverse_du_ferry)],
							["Kalithea",getmarkerpos "position_ferry_spawn_cinq", round ((player distance getmarkerpos "position_ferry_spawn_cinq") * sfp_config_prix_du_ferry), round ((player distance getmarkerpos "position_ferry_spawn_cinq") / sfp_config_temps_traverse_du_ferry)]
						];

// =======================================================================================================================================================================================
// CONFIGURATION MAISONS
// =======================================================================================================================================================================================
sfp_config_listes_objects_decorateurs = [
								["Land_Icebox_F","Congèlateur"],
								["Land_Pillow_F","Oreiller"],
								["Land_Sun_chair_F","Chaise"],
								["Land_Sunshade_F","Parasol"],
								["MapBoard_altis_F","Tableau (Carte De Altis)"],
								["Land_LampDecor_F","Lampadaire"],
								["Land_Basket_F","Grand panier (Patate, etc)"],
								["Land_Cages_F","Cages (Fruits,, etc)"],
								["Land_CratesPlastic_F","Cagette"],
								["Land_CratesShabby_F","Caissette en bois"],
								["Land_Portable_generator_F","Groupe Electrogène"],
								["Land_Suitcase_F","Valise"],
								["Land_DrillAku_F","Perceuse"],
								["Land_Hammer_F","Marteau"],
								["Land_BarrelEmpty_F","Bidon plastique"],
								["Land_Bucket_F","Sceau en ferraille"],
								["Land_MetalBarrel_empty_F","Fûts métallique"],
								["Land_GarbageContainer_closed_F","Grosse poubelle"],
								["Land_ShelvesMetal_F","Etagère blanche"],
								["Land_Metal_wooden_rack_F","Etagère rouge"],
								["Land_ShelvesWooden_blue_F","Etagère bleu"],
								["Land_SlideCastle_F","Tobogan"],
								["Land_Bench_01_F","Banc"]
							];

sfp_config_listes_des_maisons_achetable = 
							[
								["Land_House_Big_03_F", 100000], // Classe, prix de la maison
								["Land_Slum_03_F", 100000], // Classe, prix de la maison
								["Land_Addon_04_F", 100000], // Classe, prix de la maison
								["Land_GarageShelter_01_F", 100000], // Classe, prix de la maison
								["Land_House_Small_04_F ", 100000], // Classe, prix de la maison
								["Land_House_Small_03_F", 100000], // Classe, prix de la maison
								["Land_House_Small_04_F", 100000], // Classe, prix de la maison
								["Land_House_Small_05_F", 100000], // Classe, prix de la maison
								["Land_i_House_Small_01_V1_F", 100000] // Classe, prix de la maison
							];
							
sfp_config_listes_des_maisons_cambriolables = 
							[
								"Land_i_Shop_01_V2_F","Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V3_F", 
								"Land_i_House_Small_02_V2_F"
							];
						
							
sfp_config_autoriser_achat_maison = true; // False si pas d'activation d'achat des maisons
sfp_config_autoriser_pose_objets_decoration = true; // False si pas d'autorisation
sfp_config_autoriser_cambriolages_maisons = true; // False si pas d'autorisation

// =======================================================================================================================================================================================
// CONFIGURATION REVIVE
// =======================================================================================================================================================================================
sfp_config_revive_activation = true; // False pour ne pas activer le revive
sfp_config_revive_acheve_joueur = true; // Possibilité d'achever un joueur au sol avec un poignard
sfp_config_revive_trainer_blesse = true; // Possibilité de trainer les blesses
sfp_config_revive_tas_billet = true; // Lors d'une mort jeter argent en poche au sol pour récupération
sfp_config_revive_pas_de_chance = 10; // 1 chance sur ce nombre de ne pas avoir la possibilité de revive (respawn direct)

sfp_config_nombre_de_soins_par_kit_de_soins = 5; // Un kit de soins sert pour soigner ce nombre de fois

revive_temps_respawn_autoriser_apres_contact_urgence = 900; // 10 secondes minimum par tranche de 10 secondes
revive_nombre_max_de_medecin_pour_revive_entre_joueur = 3; // Si en dessous les joueurs peuvent se revive entre eux

revive_temps_minimum_respawn = 7; // Temps mini avant de pouvoir respawn
revive_temps_maximum_respawn = 600; // Temps max d'attente de revive

revive_icone_max_vu_distance = 300; // Mètres // Distance de vue de l'icone revive, de vous au bléssé
revive_icone_taille = 0.8; // Taille icone du revive en jeu
revive_icone_couleur  = [1,0,0,1]; // Couleur de l'icone en jeu

tarif_menu_revive =
					[
						5000, // Argent perdu lorsque l'on repart sur une nouvelle vie
						2500  // Argent gagne lors d'appel des pompiers
					];

// =======================================================================================================================================================================================
// CONFIGURATION DIVERS
// =======================================================================================================================================================================================
sfp_config_language_du_jeu_autorise = ["French"]; // French pour francais, English pour anglais (Autorise les joueurs avec la langue inclus dans ce tableau à ce connecter à votre serveur)
sfp_config_choix_redemarrage = "#Shutdown"; // #Shutdown kill completement le serveur (N'oubliez pas de definir le mot de passe admin correspond au cfg du serveur dans arma3/userconfig/password_serveur/password_commande_sfp.hpp
sfp_config_choix_heure_redemarrage = [02,07,12,17,20]; // Execute la commande au dessus une fois l'heure atteinte ! Attention d'avoir quelques choses qui relance le serveur automatiquement si commande #Shutdown utilisée

sfp_config_activer_regeneration_de_sante = true; // false si non (Remet de la vie doucement lorsqu'elle est à moins de 25 %, lors de petit saut par exemple)
sfp_config_activer_protection_sac_a_dos = true; // false si non (Empecher les autres joueurs d'ouvrir les sacs à dos)
sfp_config_activer_revente_voitures_voles = true; // false si non (Pour que le carshop change le propriétaire du véhicule)
sfp_config_activer_retaper_numero_de_serie = true; // false si non (Pour que le carshop change le propriétaire du véhicule)
sfp_config_activer_travailleur_au_noir = true; // false si non
sfp_config_activer_soif = true; // false si non (pour les besoins de boire)
sfp_config_activer_faim = true; // false si non (pour les besoins de nourriture)
sfp_config_activer_dormir = true; // false si non (pour les besoins de sommeil)
sfp_config_activer_toilette = true; // false si non (pour les envies d'uriner)
sfp_config_activer_optimisation_client = true; // false si non (peut améliorer les performances chez certains et les baisser chez d'autres ... a vous de tester !)
sfp_config_activer_go_fast = true; // false si non
sfp_config_activer_sang_lors_de_tir = true; // false si non
sfp_config_activer_effet_grenade_fumigene = true; // false si non
sfp_config_activer_nom_des_joueurs_en_jeu = true; // false si non (nom des joueurs au dessus de la tete)
sfp_config_afficher_nom_joueurs_dans_vehicules = true; // Affiche le nom des joueurs dans les véhicules quand vous êtes dedans également
sfp_config_activer_achat_coffre_fort = true; // false si non
sfp_config_activer_marqueur_gendarmes = true; // false si non / Affiche la position des gendarmes entres eux sur la carte
sfp_config_activer_son_en_jeu = true; // Activer ou non des bruits ambiants en jeu (bruit d'animaux, de vie, etc)
sfp_config_activer_braquage_station_service = true; // false si non
sfp_config_minutes_de_jeu_pour_taper = 600; // Nombre de minutes minimum pour qu'un joueur puisse en taper un autre
sfp_config_nombre_carkill_autorise = 3; // Nombre de carkill autorisé avant ban automatique

sfp_config_nombre_max_antennes_telecom = round (18 + (random 10)); // Nombre d'antennes télécom sur la map !! Attention MAXI 80 !!!!!!!!
sfp_config_liste_des_forfaits_telecoms = [	// Nom, Tarif, nombres de sms
											["SFP Télécom 4G+ + Galaxy S7",450,15], 
											["SFP Télécom 4G  + Galaxy S7",225,7],
											["SFP Télécom 3G  + Galaxy S7",150,5],
											["SFP Télécom 2G  + Galaxy S7",100,2],
											["SFP Télécom 4G+ + Iphone 7S",400,10],
											["SFP Télécom 4G  + Iphone 7S",250,6],
											["SFP Télécom 3G  + Iphone 7S",120,2],
											["SFP Télécom 2G  + Iphone 7S",75,1]
										  ];


sfp_config_vitesse_du_personnage = 1; // De base sans entrainement sportif (ne pas aller au dessu de 1.50 trop rapide)
sfp_config_vitesse_stabilite_du_viseur = 1; // De base sans entrainement sportif (maxi 1, mini 0.5000, plus petit moins ca bouge)

sfp_config_liste_position_des_atm_affiches = [[14610.1,16819.7,0.1], [12662.9,14265.5,0.1], [3715.01,13030.8,0.1]]; // Affiche ces ATM par marqueurs sur la carte	

sfp_config_choix_niveau_de_force = 
									[
										[40,70], // Niveau force total , temps pour l'obtenir (centre sportif)
										[50,140], // Niveau force total , temps pour l'obtenir (centre sportif)
										[60,310],// Niveau force total , temps pour l'obtenir (centre sportif)
										[70,480], // Niveau force total , temps pour l'obtenir (centre sportif)
										[80,600] // Niveau force total , temps pour l'obtenir (centre sportif)
									];

sfp_config_choix_position_civils =   
									[
										["Neochori", getmarkerpos "respawn_civilian"]
									];									

sfp_config_choix_position_gendarmes =   
									[
										["Neochori", getmarkerpos "respawn_civilian"],
										["Brigade", getmarkerpos "gendarmerie_2"]
									];									

sfp_config_armes_autorisation_effet = 
									[
										"arifle_MX_Black_F","arifle_MX_F","SMG_02_F" // Camera sur la balle lors d'un tir
									];
									
sfp_config_armes_interdiction_effet = 
									[
										"hgun_Rook40_F_Taser_Maxou","F_Flash_Ball_SFP_Maxou" // Camera sur la balle lors d'un tir
									];

sfp_config_liste_des_armes_coffre_d_armes = // Listes des munitions et des armes qui peuvent POP dans les recherches de coffres d'armes
									[
										["R3F_10Rnd_127x99_M107","R3F_M107_DES","R3F_7Rnd_M4S90","R3F_M4S90"],
										["30Rnd_65x39_caseless_green","arifle_Katiba_C_F"],
										["10Rnd_93x64_DMR_05_Mag","srifle_DMR_05_tan_f"],
										["10Rnd_93x64_DMR_05_Mag","srifle_DMR_05_hex_F"],
										["R3F_30Rnd_556x45_FAMAS","R3F_Famas_surb_DES"],
										["R3F_30Rnd_556x45_FAMAS","R3F_Famas_surb_HG_DES"],
										["R3F_30Rnd_556x45_FAMAS","R3F_Famas_surb"],
										["R3F_30Rnd_556x45_FAMAS","R3F_Famas_surb_HG"],
										["R3F_30Rnd_556x45_FAMAS","R3F_Famas_surb_M203"],
										["R3F_30Rnd_556x45_FAMAS","R3F_Famas_surb_M203_DES"],
										["R3F_25Rnd_556x45_FAMAS","R3F_Famas_F1"],
										["R3F_25Rnd_556x45_FAMAS","R3F_Famas_F1_DES"],
										["R3F_25Rnd_556x45_FAMAS","R3F_Famas_F1_HG"],
										["R3F_25Rnd_556x45_FAMAS","R3F_Famas_F1_HG_DES"],
										["R3F_25Rnd_556x45_FAMAS","R3F_Famas_F1_M203"],
										["R3F_25Rnd_556x45_FAMAS","R3F_Famas_F1_M203_DES"],
										["R3F_30Rnd_556x45_FAMAS","R3F_Famas_G2_HG"],
										["R3F_30Rnd_556x45_FAMAS","R3F_Famas_G2_HG_DES"],
										["R3F_30Rnd_556x45_FAMAS","R3F_Famas_G2_M203"],
										["R3F_30Rnd_556x45_FAMAS","R3F_Famas_G2_M203_DES"],
										["R3F_10Rnd_762x51_FRF2","R3F_FRF2"],
										["R3F_10Rnd_762x51_FRF2","R3F_FRF2_DES"],
										["R3F_30Rnd_556x45_HK416","R3F_HK416M"],
										["R3F_30Rnd_556x45_HK416","R3F_HK416M_DES"],
										["R3F_30Rnd_556x45_HK416","R3F_HK416M_HG"],
										["R3F_30Rnd_556x45_HK416","R3F_HK416M_HG_DES"],
										["R3F_30Rnd_556x45_HK416","R3F_HK416M_M203"],
										["R3F_30Rnd_556x45_HK416","R3F_HK416M_M203_DES"],
										["R3F_20Rnd_762x51_HK417","R3F_HK417S_HG"],
										["R3F_20Rnd_762x51_HK417","R3F_HK417S_HG_DES"],
										["R3F_20Rnd_762x51_HK417","R3F_HK417M_HG"],
										["R3F_20Rnd_762x51_HK417","R3F_HK417M_HG_DES"],
										["R3F_20Rnd_762x51_HK417","R3F_HK417L"],
										["R3F_20Rnd_762x51_HK417","R3F_HK417L_DES"],
										["30Rnd_65x39_caseless_green","arifle_Katiba_F"],
										["30Rnd_65x39_caseless_green","arifle_Katiba_GL_F"],
										["10Rnd_338_Mag","srifle_DMR_02_camo_F"],
										["10Rnd_338_Mag","srifle_DMR_02_F"],
										["10Rnd_338_Mag","srifle_DMR_02_sniper_F"],
										["R3F_5Rnd_127x99_TAC50","R3F_TAC50"],
										["R3F_200Rnd_556x45_MINIMI","R3F_Minimi"],
										["R3F_100Rnd_762x51_MINIMI","R3F_Minimi_762"],
										["R3F_100Rnd_762x51_MINIMI","R3F_Minimi_762_HG"],
										["R3F_200Rnd_556x45_MINIMI","R3F_Minimi_HG"],
										["20Rnd_762x51_Mag","srifle_DMR_03_woodland_F"],
										["20Rnd_762x51_Mag","srifle_DMR_03_multicam_F"],
										["20Rnd_762x51_Mag","srifle_DMR_03_khaki_F"],
										["20Rnd_762x51_Mag","srifle_DMR_03_F"],
										["20Rnd_762x51_Mag","srifle_DMR_03_tan_F"],
										["20Rnd_762x51_Mag","srifle_DMR_06_camo_F"],
										["20Rnd_762x51_Mag","srifle_DMR_06_olive_F"],
										["30Rnd_556x45_Stanag","arifle_Mk20_plain_F"],
										["30Rnd_556x45_Stanag","arifle_Mk20_F"],
										["30Rnd_556x45_Stanag","arifle_Mk20_GL_plain_F"],
										["30Rnd_556x45_Stanag","arifle_Mk20_GL_F"],
										["200Rnd_65x39_cased_Box","LMG_Mk200_F"],
										["30Rnd_556x45_Stanag","arifle_Mk20C_plain_F"],
										["30Rnd_556x45_Stanag","arifle_Mk20C_F"],
										["30Rnd_65x39_caseless_mag","arifle_MX_GL_F"],
										["30Rnd_65x39_caseless_mag","arifle_MX_GL_Black_F"],
										["30Rnd_65x39_caseless_mag","arifle_MX_F"],
										["30Rnd_65x39_caseless_mag","arifle_MX_Black_F"],
										["100Rnd_65x39_caseless_mag_Tracer","arifle_MX_SW_F"],
										["100Rnd_65x39_caseless_mag_Tracer","arifle_MX_SW_Black_F"],
										["30Rnd_65x39_caseless_mag","arifle_MXC_F"],
										["30Rnd_65x39_caseless_mag","arifle_MXC_Black_F"],
										["30Rnd_65x39_caseless_mag","arifle_MXM_F"],
										["30Rnd_65x39_caseless_mag","arifle_MXM_Black_F"],
										["150Rnd_93x64_Mag","MMG_01_hex_F"],
										["150Rnd_93x64_Mag","MMG_01_tan_F"],
										["10Rnd_762x54_Mag","srifle_DMR_01_F"],
										["130Rnd_338_Mag","MMG_02_camo_F"],
										["130Rnd_338_Mag","MMG_02_black_F"],
										["130Rnd_338_Mag","MMG_02_sand_F"],
										["30Rnd_556x45_Stanag","arifle_TRG20_F"],
										["30Rnd_556x45_Stanag","arifle_TRG21_F"],
										["30Rnd_556x45_Stanag","arifle_TRG21_GL_F"],
										["30Rnd_45ACP_Mag_SMG_01","SMG_01_F"],
										["150Rnd_762x54_Box","LMG_Zafir_F"],
										["11Rnd_45ACP_Mag","hgun_Pistol_heavy_01_F"],
										["9Rnd_45ACP_Mag","hgun_ACPC2_F"],
										["16Rnd_9x21_Mag","hgun_P07_F"],
										["16Rnd_9x21_Mag","hgun_Rook40_F"],
										["6Rnd_45ACP_Cylinder","hgun_Pistol_heavy_02_F"]
									];

// Le nom de l'animation, la classe de l'animation, (1 = playMoveNow ; 2 = playMove ; 3 = switchmove)
sfp_config_listes_des_animations_sfp =
									[
										["Assis avec les mains derrière le dos.","ActsPsitMstpSnonWunaDnon_sceneNikitinDisloyalty_Cooper","3"],
										["Assis avec les mains derrière le dos 2.","ActsPsitMstpSnonWunaDnon_sceneNikitinDisloyalty_Ohara","3"],
										["Assis avec les mains derrière le dos 3.","ActsPsitMstpSnonWunaDnon_sceneNikitinDisloyalty_Rodriguez","3"],
										["Avancer et se rendre les mains sur la tete.","ctsLopoHover_lopotev","3"],
										["Avoir mal partout.","ActsPercMstpSrasWrflDnon_sceneLopotevBandCaptured_Lopotev","3"],
										["Avoir mal partout 2.","ActsPercMstpSrasWunaDnon_sceneLopotevBandCaptured_Kostey","3"],
										["Discuter.","UnaErcVelitelProslov1","3"],
										["Discuter long speech.","armstrong_c0start","3"],
										["Faire atterir un hélico.","NavigationHeli","3"],
										["S'assoir tete sur les bras.","C5efe_honza","3"],
										["S'appuyer sur une table.","TowingTractorSupport","3"],
										["Se rendre mains en l'air et tomber.","ActsPercMstpSnonWpstDnon_sceneBardak01","3"],
										["Tomber en arrière.","ActsPercMstpSnonWpstDnon_sceneBardak02","3"],
										["Tomber en arrière 2.","AdthPercMstpSlowWrf_beating","3"],
										["Tomber et se relever.","ActsPpneMstpWunaSnonDnon_sceneCrashSite_Cooper","3"],
										["Tomber et se relever 2.","ActsPpneMstpWrflSlowDnon_sceneCrashSite_Ohara","3"],
										["Tomber et se relever 3.","ActsPpneMstpWrflSlowDnon_sceneCrashSite_Sykes","3"],
										["Tomber et se relever 4.","ActsPpneMstpWrflSlowDnon_sceneCrashSite_Rodriguez","3"],
										["Viser et regarder partout.","ActsPercMstpSlowWrflDnon_sceneLopotevBandCaptured_Cooper","3"],
										
										["Ce coucher sur le dos.","AinjPpneMstpSnonWrflDnon_rolltoback","1"],
										["Petit saut.","AcrgPknlMstpSnonWnonDnon_AmovPercMstpSnonWnonDnon_getOutLow","3"],
										["Ce mettre à genoux tête baissé.","AinvPknlMstpSlayWrflDnon_AmovPknlMstpSrasWrflDnon","2"],
										["Faire semblant de jeter quelque chose.","AmovPercMrunSlowWrflDf_AmovPercMstpSrasWrflDnon_gthStart","3"],
										["Faire le mort.","DeadState","1"],
										["Avoir peur.","AmovPercMstpSnonWnonDnon_Scared2","2"],
										["Faire signe de s'arreter.","AmovPercMstpSsurWnonDnon_AmovPercMstpSnonWnonDnon","3"],
										["Mettre les mains sur les hanches.","InBaseMoves_SittingRifle1","3"],
										["Exercice de karaté !","AmovPercMstpSnonWnonDnon_exerciseKata","2"]
									];

sfp_config_liste_des_plantes_illegale = ["Cane1","Cane2","Oleander_White","Oleander1"];

// =======================================================================================================================================================================================
// CONFIGURATION ANTI HACK SFP MAISON
// =======================================================================================================================================================================================
sfp_config_activer_antihack_bombardement = false; /* false si non */
sfp_config_activer_antihack_bis_fnc_mp = false; /* false si non */
sfp_config_activer_antihack_TP = true; /* false si non */
sfp_config_activer_antihack_argent = true; /* false si non */
sfp_config_activer_antihack_automatique_liste_ban = false; /* false si non */
sfp_config_activer_antihack_By_Pass_Addons = false; /* false si non */
sfp_config_activer_antihack_Variables = false; /* false si non */
sfp_config_activer_antihack_Dialogues = false; /* false si non */

sfp_config_liste_addons_autorise_anti_hack = []; // A vous d'autoriser la liste des configs d'addons sur le serveur, ne rien toucher si vous ne savez pas faire ! Ne pas oublier d'activer la configuration "sfp_config_activer_antihack_By_Pass_Addons" si vous mettez quelques choses ici !!!

// =======================================================================================================================================================================================
// CONFIGURATION SCRIPTS SERVEURS
// =======================================================================================================================================================================================
sfp_config_activer_meteorite = true; /* false si non */                                  /* Ne pas toucher cette partie a droite ! */ publicvariableserver "sfp_config_activer_meteorite";  
sfp_config_activer_patrouille_de_france = true; /* false si non */                       /* Ne pas toucher cette partie a droite ! */ publicvariableserver "sfp_config_activer_patrouille_de_france";  
sfp_config_activer_tremblement_de_terre = true; /* false si non */                       /* Ne pas toucher cette partie a droite ! */ publicvariableserver "sfp_config_activer_tremblement_de_terre";  
sfp_config_activer_simulation_grue_maison_construction = true; /* false si non */        /* Ne pas toucher cette partie a droite ! */ publicvariableserver "sfp_config_activer_simulation_grue_maison_construction";  
sfp_config_activer_objet_recompense = true; /* false si non */                           /* Ne pas toucher cette partie a droite ! */ publicvariableserver "sfp_config_activer_objet_recompense";  
sfp_config_activer_vehicules_de_vie = true; /* false si non */                           /* Ne pas toucher cette partie a droite ! */ publicvariableserver "sfp_config_activer_vehicules_de_vie";  
sfp_config_activer_vehicules_offert = true; /* false si non */                           /* Ne pas toucher cette partie a droite ! */ publicvariableserver "sfp_config_activer_vehicules_offert";  
sfp_config_activer_etoiles_filantes = true; /* false si non */                           /* Ne pas toucher cette partie a droite ! */ publicvariableserver "sfp_config_activer_etoiles_filantes";  
sfp_config_activer_feux_artifices = true; /* false si non */                             /* Ne pas toucher cette partie a droite ! */ publicvariableserver "sfp_config_activer_feux_artifices";  
sfp_config_activer_les_tresors = true; /* false si non */                                /* Ne pas toucher cette partie a droite ! */ publicvariableserver "sfp_config_activer_les_tresors";  
sfp_config_activer_coffre_armes = true; /* false si non */                               /* Ne pas toucher cette partie a droite ! */ publicvariableserver "sfp_config_activer_coffre_armes";  


