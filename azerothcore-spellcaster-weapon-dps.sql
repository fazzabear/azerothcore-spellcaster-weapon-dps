-- Updates spellcaster weapons to have closer DPS values to equivalent non-spellcaster weapons (still lower)
-- Earlier expansions did not use stat type 45 for spellpower, it was either a weapon spell effect or a different stat
update acore_world.item_template
set
dmg_min1 = dmg_min1 * 1.6
,dmg_max1 = dmg_max1 * 1.6
where class in (2) -- weapons
and quality in (3,4) -- rares and epics
and (
stat_type1 = 45 or
stat_type2 = 45 or 
stat_type3 = 45 or 
stat_type4 = 45 or 
stat_type5 = 45 or 
stat_type6 = 45)