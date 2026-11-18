# SmartBuff 3.3e-bags.2 · Wrath 3.3.5a

Elixirs and flasks appear when you **carry the item**. Soulstone, Spellstone, Firestone and Healthstone appear when you **know the corresponding Create spell**, even with empty bags. Each learned family has one option, named after the spell in your client language. Learning a higher rank keeps the same selection.

## Install and enable

1. Exit WoW and back up your old `Interface/AddOns/SmartBuff` folder. Extract the ZIP into `Interface/AddOns/`. Check for `Interface/AddOns/SmartBuff/SmartBuff.toc`, not a second nested `SmartBuff` folder. **Keep your character's saved variables.**
2. Open **`/sbm`**, choose your template and enable the options you want. Click or right-click a buff checkbox for its existing setup. If the list has more than 28 entries, scroll over a buff checkbox to change page; the heading shows the page number.
3. Use your normal SmartBuff button, bound key or configured scroll wheel **out of combat**. Reminders never cast a spell or use an item. The per-buff **Notification** switch and the usual global reminder settings still apply.

**Upgrading:** Your elixir/flask choices and unrelated settings stay in place. Enable the new **Create** entries once in each template/spec you use. Old per-rank stone selections are not converted: an old item selection should not authorize shard use or assign a different Soulstone recipient.

## What one press does

| Enabled option | When SmartBuff acts | What it does |
| --- | --- | --- |
| Elixir or flask | Your item's aura is missing or due, and a different effect isn't occupying its elixir slot. | Uses the carried item on you. A battle and a guardian elixir can coexist; a flask occupies both slots. |
| Create Soulstone | An eligible living player needs **Soulstone Resurrection**. Any rank, from any caster, counts. | Applies a carried Soulstone to that player. If none is carried, casts Create Soulstone instead. Item use respects the shared cooldown. |
| Create Spellstone / Create Firestone | A selected melee weapon is missing its temporary enchant or the enchant is due. | Applies a carried stone to the selected **Main Hand** or eligible **Off Hand**. If none is carried, casts the matching Create spell instead. Main hand is the initial selection. |
| Create Healthstone | You carry **no Healthstone of any rank**, including either Improved Healthstone variant. | Creates one. There is no recipient, buff check or healing action. SmartBuff never uses the Healthstone. |

For the three application stones, **empty bags alone do not trigger creation**. SmartBuff uses the highest usable rank you carry before spending a Soul Shard. When creation is needed, it casts the highest learned Create rank on the first press. Let the cast finish; the next press checks the recipient or weapon again before using the item. If another player has already supplied the buff, nothing is spent. You need a Soul Shard for a creation action, not for applying a carried stone. Normal game restrictions, bag space and enchant-replacement confirmations still apply.

**Assigning Soulstone:** Use the normal **Self first**, class checkboxes, **A** (Additional) and **I** (Ignore/exclude) controls. For example, to reserve it for one healer, clear the class selections for Create Soulstone, leave **Oneself only** off, target that party/raid member, and choose **A → +**. Keep their raid subgroup enabled. Ignore takes precedence over Additional. Self first changes the order among eligible players; it does not override an exclusion. No focus target or new recipient control is involved.

**Weapon coverage:** The 3.3.5a API reports temporary-enchant presence and remaining time, not its identity. A healthy oil, poison or other temporary enchant therefore counts as covered. Shields and held-in-off-hand items do not. Select only one stone for a hand if you have a preference.

**Elixir and flask coverage:** Adding or removing the last copy updates the list without reopening options; restocking restores your choice. A selected flask is considered before elixirs when both slots are free. A different active effect is not overwritten just because its bottle is absent. Actual aura times include duration bonuses; early warnings are capped at half the effect's duration.

## Quick in-game check

- On a warlock with no stones in bags, open `/sbm`. You should see only the Create families you know, not separate ranks. Enable one application stone, have a shard ready, and test with no other enabled buff due. With a healthy effect, a press should not conjure. With the effect missing, the first press should create and a later press should apply.
- For Soulstone, assign one party member as above. Check that the reminder names them and they receive the buff. Add them to **I** as well: neither creating nor applying for them should be offered. For weapon stones, check the temporary enchant on the selected hand after the item press.
- Enable Create Healthstone. Once a Healthstone is in your bags, further presses should leave it untouched. Enable a carried flask, then bank its last copy: the flask row should disappear while the learned Create rows remain.

## Source and verification

Based on [robgha01/SmartBuff at `d47ed66`](https://github.com/robgha01/SmartBuff/tree/d47ed66f997917dd9dc71f98e655fd2124325bfd), the 3.3.5 backport by Areasis of Aeldra's original addon. The full source patch applies to that checkout: `git apply /path/to/SmartBuff-bag-buffs.patch`. The install ZIP omits tests and editor projects.

`SmartBuff.items.lua` contains the stock IDs. Custom server items need their actual item/aura IDs added to the catalogue; flask-making mixtures and recipes aren't buff actions. Data references: AzerothCore [items](https://github.com/azerothcore/azerothcore-wotlk/blob/e3f6ee691b18daedcae1145218b8ca9625ac2439/data/sql/base/db_world/item_template.sql), [elixir groups](https://github.com/azerothcore/azerothcore-wotlk/blob/e3f6ee691b18daedcae1145218b8ca9625ac2439/data/sql/base/db_world/spell_group.sql), [triggered item auras](https://github.com/azerothcore/azerothcore-wotlk/blob/e3f6ee691b18daedcae1145218b8ca9625ac2439/src/server/scripts/Spells/spell_item.cpp) and [Healthstone variants](https://github.com/azerothcore/azerothcore-wotlk/blob/e3f6ee691b18daedcae1145218b8ca9625ac2439/src/server/scripts/Spells/spell_warlock.cpp); [Wrath spell and duration data](https://github.com/Kaev/AzerothcoreDBCToSQL/tree/ef28c4205b329e11cc1327e8d817dbfa967a6797); original 3.3.5 [spellbook](https://github.com/tekkub/wow-ui-source/blob/3.3.5/FrameXML/SpellBookFrame.lua) and [secure button](https://github.com/tekkub/wow-ui-source/blob/3.3.5/FrameXML/SecureTemplates.lua) code. No runtime network connection or additional addon is required.
