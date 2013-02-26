person(englishman).
person(spaniard).
person(ukrainian).
person(norwegian).
person(japanese).

is_left_to(first_house, second_house).
is_left_to(second_house, middle_house).
is_left_to(middle_house, fourth_house).
is_left_to(fourth_house, last_house).

is_right_to(second_house, first_house).
is_right_to(middle_house, second_house).
is_right_to(fourth_house, middle_house).
is_right_to(last_house, fourth_house).

lives_left_to(Person1, Person2) :- inhabits(Person1, House1), inhabits(Person2, House2), is_left_to(House1, House2).
lives_right_to(Person1, Person2) :- inhabits(Person1, House1), inhabits(Person2, House2), is_right_to(House1, House2).

neighbor(X, Y) :- lives_left_to(X, Y).
neighbor(X, Y) :- lives_right_to(X, Y).

lives_in(englishman, red).

owns(spaniard, dog).

drinks(ukrainian, tea).

smokes(japanese, parliaments).

inhabits(norwegian, first_house).


puzzle(FirstHouseOwner, SecondHouseOwner, MiddleHouseOwner, FourthHouseOwner, LastHouseOwner,
    RedHouseOwner, GreenHouseOwner, IvoryHouseOwner, YellowHouseOwner, BlueHouseOwner,
    CoffeeDrinker, TeaDrinker, MilkDrinker, JuiceDrinker, WaterDrinker,
    OldGoldsSmoker, KoolsSmoker, ChesterfieldsSmoker, LuckyStrikeSmoker, ParliamentsSmoker,
    DogOwner, SnailsOwner, FoxOwner, HorseOwner, ZebraOwner) :-
%        lives_left_to(FirstHouseOwner, SecondHouseOwner),
%        lives_right_to(SecondHouseOwner, FirstHouseOwner),
%        neighbor(FirstHouseOwner, SecondHouseOwner),
%        neighbor(SecondHouseOwner, FirstHouseOwner),

%        lives_left_to(SecondHouseOwner, MiddleHouseOwner),
%        lives_right_to(MiddleHouseOwner, SecondHouseOwner),
%        neighbor(SecondHouseOwner, MiddleHouseOwner),
%        neighbor(MiddleHouseOwner, SecondHouseOwner),

%        lives_left_to(MiddleHouseOwner, FourthHouseOwner),
%        lives_right_to(FourthHouseOwner, MiddleHouseOwner),
%        neighbor(MiddleHouseOwner, FourthHouseOwner),
%        neighbor(FourthHouseOwner, MiddleHouseOwner),

%        lives_left_to(FourthHouseOwner, LastHouseOwner),
%        lives_right_to(LastHouseOwner, FourthHouseOwner),
%        neighbor(FourthHouseOwner, LastHouseOwner),
%        neighbor(LastHouseOwner, FourthHouseOwner),

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

        inhabits(FirstHouseOwner, first_house),
        inhabits(SecondHouseOwner, second_house),
        inhabits(MiddleHouseOwner, middle_house),
        inhabits(FourthHouseOwner, fourth_house),
        inhabits(LastHouseOwner, last_house),

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

        neighbor(ChesterfieldsSmoker, FoxOwner),
        neighbor(FoxOwner, ChesterfieldsSmoker),

        neighbor(KoolsSmoker, HorseOwner),
        neighbor(HorseOwner, KoolsSmoker),

        drinks(LuckyStrikeSmoker, juice),

        neighbor(norwegian, BlueHouseOwner),
        neighbor(BlueHouseOwner, norwegian).
