# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_19_084526) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "char_classes", force: :cascade do |t|
    t.string "name"
    t.string "requirements"
    t.string "prime_requisite"
    t.string "armor_allowed"
    t.string "weapons_allowed"
    t.integer "max_level"
    t.string "languages"
    t.text "description"
    t.text "special"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "char_heritages", force: :cascade do |t|
    t.string "name"
    t.text "special"
    t.integer "mod_strength"
    t.integer "mod_constitution"
    t.integer "mod_dexterity"
    t.integer "mod_wisdom"
    t.integer "mod_intelligence"
    t.integer "mod_charisma"
    t.integer "min_strength"
    t.integer "min_constitution"
    t.integer "min_dexterity"
    t.integer "min_wisdom"
    t.integer "min_intelligence"
    t.integer "min_charisma"
    t.integer "max_acrobat"
    t.integer "max_assassin"
    t.integer "max_barabarian"
    t.integer "max_bard"
    t.integer "max_cleric"
    t.integer "max_druid"
    t.integer "max_fighter"
    t.integer "max_illusionist"
    t.integer "max_knight"
    t.integer "max_magic_user"
    t.integer "max_paladin"
    t.integer "max_ranger"
    t.integer "max_thief"
    t.string "languages"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "char_class_id"
    t.bigint "char_heritage_id"
    t.string "name"
    t.integer "level"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "wisdom"
    t.integer "intelligence"
    t.integer "charisma"
    t.integer "hp"
    t.integer "xp"
    t.integer "coins"
    t.integer "armor_class"
    t.integer "climb_sheer_surfaces"
    t.integer "find_and_remove_treasure_traps"
    t.integer "hear_noise"
    t.integer "hide_in_shadows"
    t.integer "move_silently"
    t.integer "open_locks"
    t.integer "pick_pockets"
    t.integer "read_languages"
    t.integer "falling"
    t.integer "tightrope_walking"
    t.integer "tracking"
    t.integer "assassination"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["char_class_id"], name: "index_characters_on_char_class_id"
    t.index ["char_heritage_id"], name: "index_characters_on_char_heritage_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "equips", force: :cascade do |t|
    t.string "name"
    t.boolean "weapon"
    t.string "damage"
    t.string "attack_modifier"
    t.string "range"
    t.boolean "blunt"
    t.boolean "brace"
    t.boolean "charge"
    t.boolean "melee"
    t.boolean "missile"
    t.boolean "reload"
    t.boolean "slow"
    t.boolean "splash_weapon"
    t.boolean "two_handed"
    t.boolean "armor"
    t.string "armor_class"
    t.integer "cost"
    t.integer "weight"
    t.text "special"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.bigint "char_class_id"
    t.integer "level"
    t.string "hit_dice"
    t.integer "attack_bonus"
    t.integer "xp"
    t.integer "death"
    t.integer "wands"
    t.integer "paralysis"
    t.integer "breath"
    t.integer "spell"
    t.integer "sp_1"
    t.integer "sp_2"
    t.integer "sp_3"
    t.integer "sp_4"
    t.integer "sp_5"
    t.integer "sp_6"
    t.string "turn_1"
    t.string "turn_2"
    t.string "turn_3"
    t.string "turn_4"
    t.string "turn_5"
    t.string "turn_6"
    t.string "turn_7_9"
    t.integer "assas_mod"
    t.integer "track"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["char_class_id"], name: "index_levels_on_char_class_id"
  end

  create_table "personal_equips", force: :cascade do |t|
    t.bigint "equip_id"
    t.bigint "character_id"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_personal_equips_on_character_id"
    t.index ["equip_id"], name: "index_personal_equips_on_equip_id"
  end

  create_table "personal_spells", force: :cascade do |t|
    t.bigint "spell_id"
    t.bigint "character_id"
    t.boolean "memorized"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_personal_spells_on_character_id"
    t.index ["spell_id"], name: "index_personal_spells_on_spell_id"
  end

  create_table "spells", force: :cascade do |t|
    t.bigint "char_class_id"
    t.string "name"
    t.integer "level"
    t.string "duration"
    t.string "range"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["char_class_id"], name: "index_spells_on_char_class_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "characters", "char_classes"
  add_foreign_key "characters", "char_heritages"
  add_foreign_key "characters", "users"
  add_foreign_key "levels", "char_classes"
  add_foreign_key "personal_equips", "characters"
  add_foreign_key "personal_equips", "equips"
  add_foreign_key "personal_spells", "characters"
  add_foreign_key "personal_spells", "spells"
  add_foreign_key "spells", "char_classes"
end
