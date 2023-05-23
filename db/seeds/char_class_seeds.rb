games = Game.create!([
  { name: 'acrobat', requirements: 'none',prime_requisite: 'dex', armor_allowed: 'leather, no shields', weapons_allowed: 'missile weapons, dagger, sword, short sword, pole arm, spear, staff', languages: 'alighnment, common', description: 'Acrobats are trained in skills of balance, gymnastics, and stealth. They often work
  in conjunction with thieves and may belong to a Thieves\' Guild. *Adjust ability scores: During character creation, acrobats may not lower STR.
  *Encumbrance: Evasion, falling, jumping, and tightrope walking cannot be performed if encumbrance reduces the acrobat\'s movement rate to less than 90\'(30\').', special: 'Acrobats can use the following skills with the chance of success shown opposite. 
  *Climb sheer surfaces (CS): A roll is required for each 100\' to be climbed. If the roll fails, the acrobat falls at the half-way point, suffering falling damage.
  *Falling (FA): When able to tumble, acrobats suffer no damage from the first 10\' of any fall. Damage due to falling from a greater height is reduced by the listed percentage (rounding fractions down).
  *Hide in shadows (HS): The acrobat must be motionless—attacking or moving while hiding is not possible.' },
  { name: 'Assassin', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  { name: 'Barbarian', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  { name: 'Bard', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  { name: 'Cleric', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  { name: 'druid', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  { name: 'Fighter', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  { name: 'Illusionist', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  { name: 'Knight', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  { name: 'Magic-User', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  { name: 'Paladin', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  { name: 'Ranger', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  { name: 'Thief', requirements: 'NONE', prime_requisite: , armor_allowed: , weapons_allowed: , languages: , description: , special:  },
  ]);