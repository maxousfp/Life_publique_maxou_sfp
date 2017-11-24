// =======================================================================================================================================================================================
													// By Maxou - www.sfpteam.fr - INTERDICTION DE RECOPIER !! //
													  // Poursuite pénal possible ! Voir amar.arma3.fr //
// =======================================================================================================================================================================================

private ["_parametrage_du_tableau", "_prise_en_compte_du_tableau"];
_parametrage_du_tableau = parametrage_equipement_des_armes_prises_de_gang; 
_prise_en_compte_du_tableau = equipements_des_armes_prises_de_gang;
if (isnil "_parametrage_du_tableau" or isnil "_prise_en_compte_du_tableau") exitwith {hint "Erreur choix du tableau, recommence ...";};

// =======================================================================================================================================================================================
															// !!! LANCEMENT CONFIGURATION NE PAS TOUCHER !!!!!!
// =======================================================================================================================================================================================
_nom_du_menu = _parametrage_du_tableau select 0;
_argent_du_menu = _parametrage_du_tableau select 1;
_titre_add_id = _parametrage_du_tableau select 2;
_numero_add = _parametrage_du_tableau select 3;
if (isnil "_nom_du_menu" or isnil "_argent_du_menu" or isnil "_titre_add_id" or isnil "_numero_add") exitwith {hint "Erreur configuration du dialogue, recommence !";};

cutText ["","BLACK FADED"]; 
0 cutFadeOut 9999999;

createDialog _nom_du_menu; disableSerialization;
_couleur_verte = [0,0.91,0.07,1];
_couleur_rouge = [0.99,0.04,0.01,1];

if (player getvariable _argent_du_menu <= 0) then {couleur_valeur = _couleur_rouge;}else{couleur_valeur = _couleur_verte;};
((uiNamespace getVariable _nom_du_menu) displayCtrl _titre_add_id) ctrlSetTextColor couleur_valeur;
((uiNamespace getVariable _nom_du_menu) displayCtrl _titre_add_id) ctrlSetText format ["%1", (player getVariable _argent_du_menu)];

_prix_de_depart = []; for "_i" from 0 to (count _prise_en_compte_du_tableau - 1) do {_prix_de_depart = _prix_de_depart + [_prise_en_compte_du_tableau select _i select 2]};
for "_i" from 0 to (count _prise_en_compte_du_tableau - 1) do {lbAdd [_numero_add, format ["%1 : %2 %3", _prise_en_compte_du_tableau select _i select 0, _prise_en_compte_du_tableau select _i select 2, "€"]];};

for "_i" from 0 to (count _prise_en_compte_du_tableau - 1) do 
{
	prix_calcul_couleur = _prix_de_depart select _i;
	if (player getvariable _argent_du_menu < prix_calcul_couleur) then {couleur_valeur = _couleur_rouge;}else{couleur_valeur = _couleur_verte;};

	lbSetColor [_numero_add, _i, couleur_valeur];	
	
	// ======================================================================================================================================== //
	lbSetPicture [_numero_add, _i, "\A3\ui_f\data\IGUI\Cfg\WeaponCursors\laserdesignator_gs.paa"];

	// ======================================================================================================================================== //	
	_le_type_a_rechercher = _prise_en_compte_du_tableau select _i select 1 select 0;
	_les_compatibilites = [];
	_les_compatibilites_formate = "";
	
	for "_d" from 0 to (count les_armes_du_serveur_tries - 1) do
	{
		_la_classe_selectionne = les_armes_du_serveur_tries select _d;
		_son_nom = getText (configFile >> "cfgWeapons" >> _la_classe_selectionne >> "displayName");
		_compabilite_des_silencieux = getarray (configFile >> "cfgWeapons" >> _la_classe_selectionne >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems");
		_compabilite_des_viseurs = getarray (configFile >> "cfgWeapons" >> _la_classe_selectionne >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems");
		
		if (_le_type_a_rechercher in _compabilite_des_silencieux && !(_son_nom in _les_compatibilites)) then 
		{
			_les_compatibilites = _les_compatibilites + [_son_nom];
			if (count _les_compatibilites < 5) then
			{
				_les_compatibilites_formate =  (_les_compatibilites_formate + format ["/i\ %1.",_son_nom]);
			}else
			{
				if (count _les_compatibilites == 6) then
				{
					_les_compatibilites_formate =  (_les_compatibilites_formate + format ["/i\ %1.","Etc .."]);
				};
			};
		};
		
		if (_le_type_a_rechercher in _compabilite_des_viseurs && !(_son_nom in _les_compatibilites)) then 
		{
			_les_compatibilites = _les_compatibilites + [_son_nom];
			if (count _les_compatibilites < 5) then
			{
				_les_compatibilites_formate =  (_les_compatibilites_formate + format ["/i\ %1.",_son_nom]);
			}else
			{
				if (count _les_compatibilites == 6) then
				{
					_les_compatibilites_formate =  (_les_compatibilites_formate + format ["/i\ %1.","Etc .."]);
				};
			};
		};
	};
	if (count _les_compatibilites < 1) then {_les_compatibilites_formate = "Aucunes informations renvoyées par arma ou arme non dispo à l'achat ...";};
	
	((uiNamespace getVariable _nom_du_menu) displayCtrl _numero_add) lbSetTooltip [_i, format ["Comptabilité : %1", _les_compatibilites_formate]];
};

waituntil {!dialog;};
cutText["","BLACK IN"];