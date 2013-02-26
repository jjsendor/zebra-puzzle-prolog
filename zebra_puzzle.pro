person(englishman).
person(spaniard).
person(ukrainian).
person(norwegian).
person(japanese).

lives_in(englishman, red).

owns(spaniard, dog).

drinks(ukrainian, tea).

smokes(japanese, parliaments).

neighbor(X, Y) :- neighbor(Y, X).

lives_right_to(X, Y) :- neighbor(X, Y).

puzzle(FirstHouseOwner, SecondHouseOwner, MiddleHouseOwner, FourthHouseOwner, LastHouseOwner,
    RedHouseOwner, GreenHouseOwner, IvoryHouseOwner, YellowHouseOwner, BlueHouseOwner,
    CoffeeDrinker, TeaDrinker, MilkDrinker, JuiceDrinker, WaterDrinker,
    OldGoldsSmoker, KoolsSmoker, ChesterfieldsSmoker, LuckyStrikeSmoker, ParliamentsSmoker,
    DogOwner, SnailsOwner, FoxOwner, HorseOwner, ZebraOwner) :-
        lives_right_to(SecondHouseOwner, FirstHouseOwner),
        lives_right_to(MiddleHouseOwner, SecondHouseOwner),
        lives_right_to(FourthHouseOwner, MiddleHouseOwner),
        lives_right_to(LastHouseOwner, FourthHouseOwner),

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

        owns(OldGoldsSmoker, snails),

        smokes(YellowHouseOwner, kools),

        drinks(MiddleHouseOwner, milk),

        lives_right_to(SecondHouseOwner, norwegian),

        neighbor(ChesterfieldsSmoker, FoxOwner),

        neighbor(KoolsSmoker, HorseOwner),

        drinks(LuckyStrikeSmoker, juice),

        neighbor(norwegian, BlueHouseOwner).

