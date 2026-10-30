-- Renumber the Mythic+ advancement auras from 80000001-80000010 to 350001-350010.
-- IDs near 80M made every spell-ID-indexed server array (SpellInfo store, AISpellInfo,
-- spell summaries, DBC index) 80M entries long, costing ~3 GB of worldserver RAM.
-- Idempotent: only touches rows still on the old IDs.
DELETE FROM `spell_dbc` WHERE `ID` BETWEEN 350001 AND 350010 AND EXISTS (SELECT 1 FROM (SELECT `ID` FROM `spell_dbc` WHERE `ID` BETWEEN 80000001 AND 80000010) o);
UPDATE `spell_dbc` SET `ID` = `ID` - 80000000 + 350000 WHERE `ID` BETWEEN 80000001 AND 80000010;
DELETE FROM `spell_script_names` WHERE `spell_id` BETWEEN 350001 AND 350010 AND `ScriptName` LIKE 'spell\_mp\_%' AND EXISTS (SELECT 1 FROM (SELECT `spell_id` FROM `spell_script_names` WHERE `spell_id` BETWEEN 80000001 AND 80000010) o);
UPDATE `spell_script_names` SET `spell_id` = `spell_id` - 80000000 + 350000 WHERE `spell_id` BETWEEN 80000001 AND 80000010;
