person(englishman).
person(spaniard).
person(ukrainian).
person(norwegian).
person(japanese).

house(red).
house(green).
house(ivory).
house(yellow).
house(blue).

drink(coffee).
drink(tea).
drink(milk).
drink(juice).
drink(water).

cigarette(old_golds).
cigarette(kools).
cigarette(chesterfields).
cigarette(lucky_strike).
cigarette(parliaments).

pet(dog).
pet(snails).
pet(fox).
pet(horse).
pet(zebra).

lives_in(englishman, red).

owns(spaniard, dog).

drinks(ukrainian, tea).

smokes(japanese, parliaments).

lives_left_to(X, Y) :- lives_right_to(Y, X).
lives_right_to(X, Y) :- lives_left_to(Y, X).

puzzle(FirstHouse, SecondHouse, MiddleHouse, FourthHouse, LastHouse,
    FirstHouseOwner, SecondHouseOwner, MiddleHouseOwner, FourthHouseOwner, LastHouseOwner,
    RedHouseOwner, GreenHouseOwner, IvoryHouseOwner, YellowHouseOwner, BlueHouseOwner,
    CoffeeDrinker, TeaDrinker, MilkDrinker, JuiceDrinker, WaterDrinker,
    OldGoldsSmoker, KoolsSmoker, ChesterfieldsSmoker, LuckyStrikeSmoker, ParliamentsSmoker,
    DogOwner, SnailsOwner, FoxOwner, HorseOwner, ZebraOwner) :-
        lives_left_to(FirstHouseOwner, SecondHouseOwner),
        lives_right_to(SecondHouseOwner, FirstHouseOwner),
        neighbor(FirstHouseOwner, SecondHouseOwner),
        neighbor(SecondHouseOwner, FirstHouseOwner),

        lives_left_to(SecondHouseOwner, MiddleHouseOwner),
        lives_right_to(MiddleHouseOwner, SecondHouseOwner),
        neighbor(SecondHouseOwner, MiddleHouseOwner),
        neighbor(MiddleHouseOwner, SecondHouseOwner),

        lives_left_to(MiddleHouseOwner, FourthHouseOwner),
        lives_right_to(FourthHouseOwner, MiddleHouseOwner),
        neighbor(MiddleHouseOwner, FourthHouseOwner),
        neighbor(FourthHouseOwner, MiddleHouseOwner),

        lives_left_to(FourthHouseOwner, LastHouseOwner),
        lives_right_to(LastHouseOwner, FourthHouseOwner),
        neighbor(FourthHouseOwner, LastHouseOwner),
        neighbor(LastHouseOwner, FourthHouseOwner),

        house(FirstHouse),
        house(SecondHouse),
        house(MiddleHouse),
        house(FourthHouse),
        house(LastHouse),

        person(FirstHouseOwner),
        person(SecondHouseOwner),
        person(MiddleHouseOwner),
        person(FourthHouseOwner),
        person(LastHouseOwner),

        person(RedHouseOwner),
        person(GreenHouseOwner),
        person(IvoryHouseOwner),
        person(YellowHouseOwner),
        person(BlueHouseOwner),

        person(CoffeeDrinker),
        person(TeaDrinker),
        person(MilkDrinker),
        person(JuiceDrinker),
        person(WaterDrinker),

        person(OldGoldsSmoker),
        person(KoolsSmoker),
        person(ChesterfieldsSmoker),
        person(LuckyStrikeSmoker),
        person(ParliamentsSmoker),

        person(DogOwner),
        person(SnailsOwner),
        person(FoxOwner),
        person(HorseOwner),
        person(ZebraOwner),

        lives_in(FirstHouseOwner, FirstHouse),
        lives_in(SecondHouseOwner, SecondHouse),
        lives_in(MiddleHouseOwner, MiddleHouse),
        lives_in(FourthHouseOwner, FourthHouse),
        lives_in(LastHouseOwner, LastHouse),

        lives_in(RedHouseOwner, red),
        lives_in(GreenHouseOwner, green),
        lives_in(IvoryHouseOwner, ivory),
        lives_in(YellowHouseOwner, yellow),
        lives_in(BlueHouseOwner, blue),

        drinks(CoffeeDrinker, coffee),
        drinks(TeaDrinker, tea),
        drinks(MilkDrinker, milk),
        drinks(JuiceDrinker, juice),
        drinks(WaterDrinker, water),

        smokes(OldGoldsSmoker, old_golds),
        smokes(KoolsSmoker, kools),
        smokes(ChesterfieldsSmoker, chesterfields),
        smokes(LuckyStrikeSmoker, lucky_strike),
        smokes(ParliamentsSmoker, parliaments),

        owns(DogOwner, dog),
        owns(SnailsOwner, snails),
        owns(FoxOwner, fox),
        owns(HorseOwner, horse),
        owns(ZebraOwner, zebra),

        drinks(GreenHouseOwner, coffee),

        lives_right_to(GreenHouseOwner, IvoryHouseOwner),
        lives_left_to(IvoryHouseOwner, GreenHouseOwner),
        neighbor(GreenHouseOwner, IvoryHouseOwner),
        neighbor(IvoryHouseOwner, GreenHouseOwner),

        owns(OldGoldsSmoker, snails),

        smokes(YellowHouseOwner, kools),

        drinks(MiddleHouseOwner, milk),

        lives_in(norwegian, FirstHouse),

        neighbor(ChesterfieldsSmoker, FoxOwner),
        neighbor(FoxOwner, ChesterfieldsSmoker),

        neighbor(KoolsSmoker, HorseOwner),
        neighbor(HorseOwner, KoolsSmoker),

        drinks(LuckyStrikeSmoker, juice),

        neighbor(norwegian, BlueHouseOwner),
        neighbor(BlueHouseOwner, norwegian).
