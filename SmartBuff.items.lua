-- Bag elixirs/flasks and learned warlock stones for 3.3.5a (build 12340).
-- Item IDs, *visible aura* IDs (not always the on-use spell), and elixir slots.
-- Source: WotLK item_template, Spell/SpellDuration.dbc and spell_group (see docs).
-- Names below are comments; all UI names and icons come from the user's client.
SMARTBUFF_BagItems = {};
local Items = SMARTBUFF_BagItems;
local BATTLE, GUARDIAN, FLASK, UTILITY = 1, 2, 3, 0;
local definitions, elixirSlot = {}, {};

local function register(id, kind, minutes, ...)
  local auras = {};
  for i = 1, select("#", ...) do
    local spell = select(i, ...);
    auras[spell] = true;
    if kind == BATTLE or kind == GUARDIAN or kind == FLASK then
      elixirSlot[spell] = kind;
    end
  end
  definitions[id] = {kind = kind, minutes = minutes, auras = auras};
end

-- Battle elixirs
register(2454, BATTLE, 60, 2367);            -- Elixir of Lion's Strength
register(2457, BATTLE, 60, 2374);            -- Elixir of Minor Agility
register(3390, BATTLE, 60, 3160);            -- Elixir of Lesser Agility
register(3391, BATTLE, 60, 3164);            -- Elixir of Ogre's Strength
register(6373, BATTLE, 60, 7844);            -- Elixir of Firepower
register(6662, BATTLE, 20, 8212);            -- Elixir of Giant Growth
register(8949, BATTLE, 60, 11328);           -- Elixir of Agility
register(9155, BATTLE, 60, 11390);           -- Arcane Elixir
register(9187, BATTLE, 60, 11334);           -- Elixir of Greater Agility
register(9206, BATTLE, 60, 11405);           -- Elixir of Giants
register(9224, BATTLE, 60, 11406);           -- Elixir of Demonslaying
register(9264, BATTLE, 60, 11474);           -- Elixir of Shadow Power
register(12820, BATTLE, 20, 17038);          -- Winterfall Firewater
register(13452, BATTLE, 60, 17538);          -- Elixir of the Mongoose
register(13453, BATTLE, 60, 17537);          -- Elixir of Brute Force
register(13454, BATTLE, 60, 17539);          -- Greater Arcane Elixir
register(17708, BATTLE, 60, 21920);          -- Elixir of Frost Power
register(21546, BATTLE, 60, 26276);          -- Elixir of Greater Firepower
register(22824, BATTLE, 60, 28490);          -- Elixir of Major Strength
register(22825, BATTLE, 60, 28491);          -- Elixir of Healing Power
register(22827, BATTLE, 60, 28493);          -- Elixir of Major Frost Power
register(22831, BATTLE, 60, 54494);          -- Elixir of Major Agility
register(22833, BATTLE, 60, 28501);          -- Elixir of Major Firepower
register(22835, BATTLE, 60, 28503);          -- Elixir of Major Shadow Power
register(28102, BATTLE, 60, 33720);          -- Onslaught Elixir
register(28103, BATTLE, 60, 54452);          -- Adept's Elixir
register(28104, BATTLE, 60, 33726);          -- Elixir of Mastery
register(31679, BATTLE, 60, 38954);          -- Fel Strength Elixir
register(34537, BATTLE, 120, 45373);         -- Bloodberry Elixir
register(39666, BATTLE, 60, 28497);          -- Elixir of Mighty Agility
register(40068, BATTLE, 60, 53746);          -- Wrath Elixir
register(40070, BATTLE, 60, 33721);          -- Spellpower Elixir
register(40073, BATTLE, 60, 53748);          -- Elixir of Mighty Strength
register(40076, BATTLE, 60, 53749);          -- Guru's Elixir
register(44325, BATTLE, 60, 60340);          -- Elixir of Accuracy
register(44327, BATTLE, 60, 60341);          -- Elixir of Deadly Strikes
register(44329, BATTLE, 60, 60344);          -- Elixir of Expertise
register(44330, BATTLE, 60, 60345);          -- Elixir of Armor Piercing
register(44331, BATTLE, 60, 60346);          -- Elixir of Lightning Speed
register(45621, BATTLE, 60, 63729);          -- Elixir of Minor Accuracy

-- Guardian elixirs
register(2458, GUARDIAN, 60, 2378);          -- Elixir of Minor Fortitude
register(3382, GUARDIAN, 60, 3219);          -- Weak Troll's Blood Elixir
register(3383, GUARDIAN, 60, 3166);          -- Elixir of Wisdom
register(3388, GUARDIAN, 60, 3222);          -- Strong Troll's Blood Elixir
register(3389, GUARDIAN, 60, 3220);          -- Elixir of Defense
register(3825, GUARDIAN, 60, 3593);          -- Elixir of Fortitude
register(3826, GUARDIAN, 60, 3223);          -- Major Troll's Blood Elixir
register(5997, GUARDIAN, 60, 673);           -- Elixir of Minor Defense
register(8827, GUARDIAN, 10, 11319);         -- Elixir of Water Walking
register(8951, GUARDIAN, 60, 11349);         -- Elixir of Greater Defense
register(9088, GUARDIAN, 30, 11371);         -- Gift of Arthas
register(9179, GUARDIAN, 60, 11396);         -- Elixir of Greater Intellect
register(13445, GUARDIAN, 60, 11348);        -- Elixir of Superior Defense
register(13447, GUARDIAN, 60, 17535);        -- Elixir of the Sages
register(20004, GUARDIAN, 60, 24361);        -- Mighty Troll's Blood Elixir
register(20007, GUARDIAN, 60, 24363);        -- Mageblood Elixir
register(22192, GUARDIAN, 30, 27653);        -- Bloodkelp Elixir of Dodging
register(22193, GUARDIAN, 30, 27652);        -- Bloodkelp Elixir of Resistance
register(22834, GUARDIAN, 60, 28502);        -- Elixir of Major Defense
register(22840, GUARDIAN, 60, 28509);        -- Elixir of Major Mageblood
register(22848, GUARDIAN, 60, 28514);        -- Elixir of Empowerment
register(23444, GUARDIAN, 60, 29348);        -- Goldenmist Special Brew
register(32062, GUARDIAN, 60, 39625);        -- Elixir of Major Fortitude
register(32063, GUARDIAN, 60, 39626);        -- Earthen Elixir
register(32067, GUARDIAN, 60, 39627);        -- Elixir of Draenic Wisdom
register(32068, GUARDIAN, 60, 39628);        -- Elixir of Ironskin
register(40072, GUARDIAN, 60, 53747);        -- Elixir of Spirit
register(40078, GUARDIAN, 60, 53751);        -- Elixir of Mighty Fortitude
register(40097, GUARDIAN, 60, 53763);        -- Elixir of Protection
register(40109, GUARDIAN, 60, 53764);        -- Elixir of Mighty Mageblood
register(44328, GUARDIAN, 60, 60343);        -- Elixir of Mighty Defense
register(44332, GUARDIAN, 60, 60347);        -- Elixir of Mighty Thoughts

-- Flasks (occupy both slots)
register(13510, FLASK, 60, 17626);           -- Flask of the Titans
register(13511, FLASK, 60, 17627);           -- Flask of Distilled Wisdom
register(13512, FLASK, 60, 17628);           -- Flask of Supreme Power
register(13513, FLASK, 60, 17629);           -- Flask of Chromatic Resistance
register(22851, FLASK, 60, 28518);           -- Flask of Fortification
register(22853, FLASK, 60, 28519);           -- Flask of Mighty Restoration
register(22854, FLASK, 60, 28520);           -- Flask of Relentless Assault
register(22861, FLASK, 60, 28521);           -- Flask of Blinding Light
register(22866, FLASK, 60, 28540);           -- Flask of Pure Death
register(32596, FLASK, 60, 40568);           -- Unstable Flask of the Elder
register(32597, FLASK, 60, 40575);           -- Unstable Flask of the Soldier
register(32598, FLASK, 60, 40572);           -- Unstable Flask of the Beast
register(32599, FLASK, 60, 40567);           -- Unstable Flask of the Bandit
register(32600, FLASK, 60, 40573);           -- Unstable Flask of the Physician
register(32601, FLASK, 60, 40576);           -- Unstable Flask of the Sorcerer
register(32764, FLASK, 60, 28518);           -- Flaskataur's Celestial Brew
register(32765, FLASK, 60, 28520);           -- Flaskataur's Tears
register(32766, FLASK, 60, 28519);           -- Flaskataur's Flask of Flaskocity
register(32767, FLASK, 60, 17628);           -- Flaskataur's Flask of Pretty Good Power
register(32898, FLASK, 60, 41609);           -- Shattrath Flask of Fortification
register(32899, FLASK, 60, 41610);           -- Shattrath Flask of Mighty Restoration
register(32900, FLASK, 60, 41611);           -- Shattrath Flask of Supreme Power
register(32901, FLASK, 60, 41608);           -- Shattrath Flask of Relentless Assault
register(33208, FLASK, 60, 42735);           -- Flask of Chromatic Wonder
register(35716, FLASK, 60, 46837);           -- Shattrath Flask of Pure Death
register(35717, FLASK, 60, 46839);           -- Shattrath Flask of Blinding Light
register(40079, FLASK, 60, 53752);           -- Lesser Flask of Toughness
register(44939, FLASK, 60, 62380);           -- Lesser Flask of Resistance
register(45006, FLASK, 60, 53760);           -- Jillian's Tonic of Endless Rage
register(45007, FLASK, 60, 54212);           -- Jillian's Tonic of Pure Mojo
register(45008, FLASK, 60, 53758);           -- Jillian's Tonic of Stoneblood
register(45009, FLASK, 60, 53755);           -- Jillian's Tonic of the Frost Wyrm
register(46376, FLASK, 60, 53755);           -- Flask of the Frost Wyrm
register(46377, FLASK, 60, 53760);           -- Flask of Endless Rage
register(46378, FLASK, 60, 54212);           -- Flask of Pure Mojo
register(46379, FLASK, 60, 53758);           -- Flask of Stoneblood
register(47499, FLASK, 60, 67016, 67017, 67018); -- Flask of the North

-- Other buff-granting elixirs (no battle/guardian slot)
register(3828, UTILITY, 10, 6512);           -- Elixir of Detect Lesser Invisibility
register(5996, UTILITY, 30, 7178);           -- Elixir of Water Breathing
register(8529, UTILITY, 10, 16591, 16593, 16595); -- Noggenfogger Elixir
register(9154, UTILITY, 60, 11389);          -- Elixir of Detect Undead
register(9197, UTILITY, 2, 11403);           -- Elixir of Dream Vision
register(9233, UTILITY, 60, 11407);          -- Elixir of Detect Demon
register(10592, UTILITY, 10, 12608);         -- Catseye Elixir
register(18294, UTILITY, 60, 22807);         -- Elixir of Greater Water Breathing
register(22823, UTILITY, 60, 28489);         -- Elixir of Camouflage
register(22830, UTILITY, 10, 28496);         -- Elixir of the Searching Eye
register(23871, UTILITY, 30, 7178);          -- Potion of Water Breathing
register(25539, UTILITY, 60, 22807);         -- Potion of Water Breathing
register(34130, UTILITY, 30, 44467);         -- Recovery Diver's Potion
register(36770, UTILITY, 30, 47430);         -- Zort's Protective Elixir
register(37449, UTILITY, 10, 48719);         -- Breath of Murloc
register(37878, UTILITY, 60, 50166);         -- Worg's Blood Elixir
register(44012, UTILITY, 10, 59645, 59831, 59843); -- Underbelly Elixir

-- Other effects can occupy an elixir slot even when their items are not carried.
for _, spell in ipairs({10667, 10669, 16322, 16323, 16329, 33053}) do
  elixirSlot[spell] = BATTLE;
end
for _, spell in ipairs({2380, 10668, 10692, 10693, 15231, 15233, 16321, 16325, 16326, 16327, 24382, 24383, 24417}) do
  elixirSlot[spell] = GUARDIAN;
end

-- Only these entries had name-keyed settings in the original backport.
local legacy = {};
for _, id in ipairs({39666, 40072, 40073, 40078, 40097, 44325, 44327, 44328,
    44329, 44330, 44331, 44332, 46376, 46377, 46378, 46379, 47499}) do
  legacy[id] = true;
end

local function slotID(bag, slot)
  if GetContainerItemID then return GetContainerItemID(bag, slot); end
  local link = GetContainerItemLink(bag, slot);
  return link and tonumber(link:match("item:(%d+)"));
end

-- No bank/equipment scan. Coalesce bag events on the existing one-second ticker.
-- 3.3.5 can return nil for cold item data: retry without relying on a Retail event.
Items.list = {};
local nextScan, retryDelay = 0, 1;
function Items.MarkDirty()
  nextScan, retryDelay = 0, 1;
end
function Items.ScanDue(now)
  return nextScan and now >= nextScan;
end

local function sortItems(a, b)
  -- Prefer a selected flask to a selected elixir when both slots are empty.
  if (a.kind == FLASK) ~= (b.kind == FLASK) then return a.kind == FLASK; end
  if a.name ~= b.name then return a.name < b.name; end
  return a.id < b.id;
end

function Items.Scan()
  local list, seen, pending = {}, {}, false;
  for bag = 0, NUM_BAG_FRAMES do
    for slot = 1, GetContainerNumSlots(bag) do
      local id = slotID(bag, slot);
      local def = definitions[id];
      if not id and GetContainerItemInfo(bag, slot) then
        pending = true; -- occupied slot, link not available yet
      elseif def and not seen[id] then
        seen[id] = true;
        local name, _, _, _, _, _, _, _, _, icon = GetItemInfo(id);
        if name and icon then
          -- First three fields are SmartBuff's existing buff descriptor format.
          list[#list + 1] = {"item:" .. id, def.minutes, SMARTBUFF_CONST_POTION, id = id, kind = def.kind,
            name = name, icon = icon, legacy = legacy[id]};
        else
          pending = true;
        end
      end
    end
  end
  nextScan = nil;
  if pending then
    nextScan = GetTime() + retryDelay;
    retryDelay = math.min(30, retryDelay * 2);
  else
    retryDelay = 1;
  end
  table.sort(list, sortItems);
  local old = Items.list;
  Items.list = list;
  if #old ~= #list then return true; end
  for i, item in ipairs(list) do
    if item.id ~= old[i].id or item.name ~= old[i].name or item.icon ~= old[i].icon then return true; end
  end
  return false;
end

-- Only used for the setup tooltip. Never save a bag/slot as the click action.
function Items.FindSlot(id)
  for bag = 0, NUM_BAG_FRAMES do
    for slot = 1, GetContainerNumSlots(bag) do
      if slotID(bag, slot) == id then return bag, slot; end
    end
  end
end

local function neededAura(def, unit, window, now)
  local remaining;
  for i = 1, 40 do
    -- 3.3.5: expirationTime is return 7; spellId is return 11.
    local name, _, _, _, _, duration, expires, _, _, _, spell = UnitBuff(unit, i);
    if not name then break; end
    if def.auras[spell] then
      -- Mixology, dispels, other casters and alternate outcomes all use the
      -- client aura, not an estimated timer starting when the button was hit.
      if not expires or expires <= 0 or window <= 0 then return; end
      local left = math.max(0, expires - now);
      -- Never burn through short-lived elixirs when the window exceeds their life.
      if left > math.min(window, (duration or 0) > 0 and duration / 2 or window) then return; end
      remaining = math.max(remaining or 0, left);
    else
      local occupied = elixirSlot[spell];
      if occupied and (def.kind == FLASK or
          ((def.kind == BATTLE or def.kind == GUARDIAN) and (occupied == FLASK or occupied == def.kind))) then
        return; -- even an unselected or no-longer-carried elixir must not be overwritten
      end
    end
  end
  return 0, remaining; -- 0 = unit-targeted item, nil time = missing buff
end

-- One row per learned Create family, not one row per item rank in the bags.
-- Create spells and their products are in rank order (not numeric ID order).
local stones = {
  {type = SMARTBUFF_CONST_GROUP, minutes = 15, -- Soulstone
   create = {693, 20752, 20755, 20756, 20757, 27238, 47884},
   items = {5232, 16892, 16893, 16895, 16896, 22116, 36895},
   auras = {[20707]=true, [20762]=true, [20763]=true, [20764]=true, [20765]=true, [27239]=true, [47883]=true}},
  {type = SMARTBUFF_CONST_WEAPON, minutes = 60, -- Spellstone
   create = {2362, 17727, 17728, 28172, 47886, 47888},
   items = {41191, 41192, 41193, 41194, 41195, 41196}},
  {type = SMARTBUFF_CONST_WEAPON, minutes = 60, -- Firestone
   create = {6366, 17951, 17952, 17953, 27250, 60219, 60220},
   items = {41170, 41169, 41171, 41172, 40773, 41173, 41174}},
  {type = SMARTBUFF_CONST_SELF, minutes = 0, -- Healthstone: stock only, including both improved versions
   create = {6201, 6202, 5699, 11729, 11730, 27230, 47871, 47878},
   items = {5512,19004,19005, 5511,19006,19007, 5509,19008,19009, 5510,19010,19011,
            9421,19012,19013, 22103,22104,22105, 36889,36890,36891, 36892,36893,36894}},
};
local byCreate, rankOf = {}, {};
for _, stone in ipairs(stones) do
  for rank, id in ipairs(stone.create) do byCreate[id], rankOf[id] = stone, rank; end
end

function Items.AddKnownStones(n)
  -- GetSpellInfo(id) also succeeds for unlearned spells. Read actual player
  -- spellbook links instead; a book slot is NOT the spell ID for a secure cast.
  local learned, book = {}, SMARTBUFF_BOOK_TYPE_SPELL;
  local slot = 1;
  while GetSpellName(slot, book) do
    local link = GetSpellLink(slot, book);
    local id = link and tonumber(link:match("spell:(%d+)"));
    local stone = byCreate[id];
    if stone and (not learned[stone] or rankOf[id] > learned[stone].rank) then
      learned[stone] = {rank = rankOf[id], slot = slot};
    end
    slot = slot + 1;
  end
  for _, stone in ipairs(stones) do
    local best = learned[stone];
    if best then
      n = SMARTBUFF_SetBuff({"stone:" .. stone.create[1], stone.minutes, stone.type,
        [5] = stone.auras and "HPET WPET DKPET", stone = stone, rank = best.rank, bookSlot = best.slot,
        name = GetSpellName(best.slot, book), icon = GetSpellTexture(best.slot, book)}, n);
    end
  end
  return n;
end

local meleeWeapon = {INVTYPE_WEAPON = true, INVTYPE_2HWEAPON = true,
  INVTYPE_WEAPONMAINHAND = true, INVTYPE_WEAPONOFFHAND = true};
local function neededHand(slot, active, ms, window)
  local link = GetInventoryItemLink("player", slot);
  if not link or not meleeWeapon[select(9, GetItemInfo(link))] then return; end
  if not active then return slot; end
  -- In Wrath the six-value enchant API exposes milliseconds, not enchant IDs.
  if ms and window > 0 and ms / 1000 <= math.min(window, 1800) then
    return slot, math.max(0, ms / 1000);
  end
end

local function carriedStone(stone)
  local found = false;
  for rank = #stone.items, 1, -1 do
    local id = stone.items[rank];
    if (GetItemCount(id, false) or 0) > 0 then
      found = true;
      if stone.type == SMARTBUFF_CONST_SELF or IsUsableItem("item:" .. id) then return id, true; end
    end
  end
  return nil, found; -- an unusable stone is not a missing stone
end

local function cooldownReady(id, now, remaining, warn, carried)
  local start, length, enabled = GetItemCooldown(id);
  if carried and enabled == 0 then return false; end
  local cd = (start or 0) + (length or 0) - now;
  -- Soulstone's shared cooldown can expire with the aura. Warn in time, but
  -- never offer an actual item click until the item can be used.
  return cd <= 0 or (warn and remaining and cd <= remaining + 1);
end

-- Pure decision shared by reminders and secure PreClick. At most ONE action:
-- type, spell ID/item string, target-slot (0 for none), unit, time left, label.
function Items.Action(entry, settings, unit, window, now, reminder)
  if not reminder and InCombatLockdown() then return; end
  local stone = entry.stone;
  if not stone then
    if (GetItemCount(entry.id, false) or 0) == 0 or not IsUsableItem(entry[1]) then return; end
    local slot, left = neededAura(definitions[entry.id], "player", window, now);
    if slot and cooldownReady(entry.id, now, left, reminder, true) then
      return SMARTBUFF_ACTION_ITEM, entry[1], 0, "player", left, entry.name;
    end
    return;
  end

  -- For application stones, establish a need on the *eligible* unit/hand
  -- BEFORE considering inventory. Healthstone has no aura or recipient.
  local slot, left = 0, nil;
  if stone.auras then
    slot, left = neededAura(stone, unit, window, now);
  elseif stone.type == SMARTBUFF_CONST_WEAPON then
    slot = nil;
    local mh, mhMS, _, oh, ohMS = GetWeaponEnchantInfo();
    if settings.MH then slot, left = neededHand(16, mh, mhMS, window); end
    if not slot and settings.OH then slot, left = neededHand(17, oh, ohMS, window); end
  end
  if not slot then return; end

  local id, found = carriedStone(stone);
  if found and (not id or stone.type == SMARTBUFF_CONST_SELF) then return; end
  if stone.auras then
    local product = id or stone.items[entry.rank];
    if not SMARTBUFF_IsPlayer(unit) and IsItemInRange("item:" .. product, unit) == 0 then return; end
    -- When the client reports a shared cooldown without the item in bags,
    -- don't spend a shard for another recipient while that cooldown is long.
    if not id and not cooldownReady(product, now, left, true, false) then return; end
  end
  if id then
    if cooldownReady(id, now, left, reminder, true) then
      return SMARTBUFF_ACTION_ITEM, "item:" .. id, slot, stone.auras and unit or "player", left, GetItemInfo(id) or entry.name;
    end
    return;
  end

  if (GetItemCount(6265, false) or 0) == 0 or not IsUsableSpell(entry.name)
      or UnitCastingInfo("player") or UnitChannelInfo("player") then return; end
  local start, length, enabled = GetSpellCooldown(entry.bookSlot, SMARTBUFF_BOOK_TYPE_SPELL);
  if enabled == 0 or (start or 0) + (length or 0) > now then return; end
  return SMARTBUFF_ACTION_SPELL, stone.create[entry.rank], 0, "player", left, entry.name;
end
