REPLACE INTO acore_world.spell_script_names (spell_id, ScriptName) VALUES
    ('350001','spell_mp_titans_strength_aura'),
    ('350002','spell_mp_steel_forged_aura'),
    ('350003','spell_mp_celestial_grace_aura'),
    ('350004','spell_mp_forbidden_knowledge_aura'),
    ('350005','spell_mp_spectral_reflexes_aura'),
    ('350006','spell_mp_eldritch_barrier_aura'),
    ('350007','spell_mp_hellfire_shielding_aura'),
    ('350008','spell_mp_primal_endurance_aura'),
    ('350009','spell_mp_lichs_bane_aura'),
    ('350010','spell_mp_glacial_fortress_aura');

DELETE FROM `spell_dbc` WHERE `ID` IN (350001, 350002, 350003, 350004, 350005, 350006, 350007, 350008, 350009, 350010);
INSERT INTO `spell_dbc` (`ID`, `Attributes`, `AttributesEx`, `DispelType`, `Effect_1`, `EffectAura_1`,`EffectMiscValue_1`, `Name_Lang_enUS`, `Description_Lang_enUS`) VALUES
    (350001, 192, 0, 0, 6, 29, 0, 'Titan\'s Strength', 'Empowers you with the legendary strength of the Titans, enhancing your physical prowess.'),
    (350002, 192, 0, 0, 6, 29, 2, 'Steel Forged', 'Transforms your skin into an impenetrable steel armor, deflecting all but the mightiest blows.'),
    (350003, 192, 0, 0, 6, 29, 4,'Celestial Grace', 'Blessed with celestial wisdom, you inspire and uplift the spirits of allies around you.'),
    (350004, 192, 0, 0, 6, 29, 3,'Forbidden Knowledge', 'You have delved into the forbidden secrets of Azeroth, unlocking arcane mysteries and hidden powers.'),
    (350005, 192, 0, 0, 6, 29, 1,'Spectral Reflexes', 'You become a phantom, mastering the art of the blade and dagger with unparalleled precision.'),
    (350006, 192, 0, 0, 6, 22, 64,'Eldritch Barrier', 'Erects an eldritch barrier that halts arcane forces in their tracks, shielding you from magical harm.'),
    (350007, 192, 0, 0, 6, 22, 4,'Hellfire Shielding', 'You have learned to withstand the infernal flames of hell, emerging unscathed from fiery assaults.'),
    (350008, 192, 0, 0, 6, 22, 8,'Primal Endurance', 'Your endurance has been toughened to resist pestilence and plague, rendering you immune to their effects.'),
    (350009, 192, 0, 0, 6, 22, 32, 'Lich\'s Bane', 'You possess the knowledge to counter the shadows of the undead, protecting your flesh from their dark touch.'),
    (350010, 192, 0, 0, 6, 22, 16, 'Glacial Fortress', 'You can withstand temperatures far below freezing that no mere mortal can endure, encased in a glacial fortress.');
