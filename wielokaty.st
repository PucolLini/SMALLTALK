"Patrycja Nerć 193075 (nieparzyste), Karina Wołoszyn 193592 (romb)"
Object subclass: #Wielokat
    instanceVariableNames: 'wierzcholki nazwa pole bok'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'JezykiProgramowania'!

!Wielokat methodsFor: 'initialize-release'!

initialize: liczbaWierzcholkow name: nowaNazwa
    "konstruktor obiektu - wielokąta"

    nazwa := nowaNazwa.
    wierzcholki := Array new: liczbaWierzcholkow.
    wierzcholki at: 1 put: 0e0@0e0.
    pole := 0e0.
    bok := 1e0.!

!Wielokat methodsFor: 'accessing'!

nazwa
    "podaje nazwę wielokąta"
    ^nazwa!

nazwa: nowa_nazwa
    "ustawia nową nazwę wielokąta"
    nazwa := nowa_nazwa!

wierzcholki	
    "podaje wierzchołki wielokąta"
	^wierzcholki!

pole
    "podaje pole wielokąta"
    ^pole!

pole: nowe_pole
    "ustawia nowe pole wielokąta"
    pole := nowe_pole!

bok
    "podaje długość boku wielokąta"
	^bok!!

!Wielokat methodsFor: 'actions'!

drukuj
    "wypisanie wierzchołków i pola wielokąta"
    
    Transcript show: ' '; cr.
    
    Transcript show: nazwa printString, ' '; cr; cr.
    1 to: 4 do: [: index |
        Transcript
            show: 'P', index printString, ': (';
            show: (wierzcholki at: index) x printString, ', ';
            show: (wierzcholki at: index) y printString;
            show: ')'; cr.
    ].
    Transcript
        show: 'Dlugosc boku: ', (self bok) printString; cr;
        show: 'Pole: ', (self pole) printString; cr.
    ^self!!

Wielokat subclass: #Kwadrat
    instanceVariableNames: ''
    classVariableNames: ''
    poolDictionaries: ''
    category: 'JezykiProgramowania'!

!Kwadrat methodsFor: 'arithmetic'!

+ figura
    "dodaj 2 figury w sensie pola"

    | p |
    
    Transcript
        show: ' '; cr;
        show: '---------------'; cr;
        show: 'DODAWANIE FIGUR ', nazwa printString, 'u ORAZ ', figura nazwa printString, 'u '; cr;
        show: 'WYNIK:'.
    
    p := self pole + figura pole.
    
    (Kwadrat new) initialize: p sqrt.
    
    self drukuj.
    
    Transcript
        show: '---------------'; cr.
        
    ^self!
    
skaluj: skala
    "przeskaluj kwadrat"

    | nowyBok| 
    
     Transcript
        show: ' '; cr;
        show: '---------------'; cr;
        show: 'SKALOWANIE ', nazwa printString, 'u '; cr;
        show: ' '; cr;
        show: 'STARE WARTOŚCI: '.
    
    self drukuj.
    
    nowyBok := bok * skala.
    self initialize: nowyBok.  
    
    Transcript
        show: ' '; cr;
        show: 'NOWE WARTOŚCI: '.
    
    self drukuj.
    
    Transcript
        show: '---------------'; cr.
    
    ^self!!

!Kwadrat methodsFor: 'actions'!

pole
    "licz pole kwadratu"
    
    ^(wierzcholki at: 2) x squared! !

!Kwadrat methodsFor: 'initialize-release'!

initialize: dlugoscBoku
    "tworz kwadrat o podanym boku"

    super initialize: 4 name: Kwadrat.
    bok := dlugoscBoku.
    wierzcholki at: 2 put: bok@0e0.
    wierzcholki at: 3 put: bok@bok.
    wierzcholki at: 4 put: 0e0@bok.!!

Wielokat subclass: #Romb
    instanceVariableNames: 'b wysokosc kat'
    classVariableNames: ''
    poolDictionaries: ''
    category: 'JezykiProgramowania'!

!Romb methodsFor: 'initialize-release'!

initialize: nowyBok angle: nowyKat
    "stworz romb o podanym boku i wysokosci"
    
    super initialize: 4 name: Romb.
    
    kat := nowyKat degreesToRadians.
    bok := nowyBok.
    b := bok * (kat cos).
    wysokosc := bok * (kat sin).
    
    wierzcholki at: 2 put: bok@0.0.
    wierzcholki at: 3 put: (bok + b)@wysokosc.
    wierzcholki at: 4 put: b@wysokosc.!! "bok-b"
 
!Romb methodsFor: 'accessing'!

kat
    "podaje nazwę wielokąta"
    ^kat!
    
wysokosc
    "podaje nazwę wielokąta"
    ^wysokosc!!
   
!Romb methodsFor: 'arithmetic'!

+ figura
    "dodaj 2 figury w sensie pola"
    
    | p nowyBok nowyKat|
    
     Transcript
        show: ' '; cr;
        show: '---------------'; cr;
        show: 'DODAWANIE FIGUR ', nazwa printString, 'u ORAZ ', figura nazwa printString, 'u '; cr;
        show: 'WYNIK:'.
    
    p := self pole + figura pole.
    nowyBok := (p/(kat sin)) sqrt.
    nowyKat := kat radiansToDegrees.
    
    (Romb new) initialize: nowyBok angle: nowyKat.
    
    self drukuj.
    
    Transcript
        show: '---------------'; cr.
        
    ^self!

skaluj: skala
    "przeskaluj romb"

    | nowyBok nowyKat | 
    
    Transcript
        show: ' '; cr;
        show: '---------------'; cr;
        show: 'SKALOWANIE ', nazwa printString, 'u '; cr;
        show: ' '; cr;
        show: 'STARE WARTOŚCI: '.
    
    self drukuj.
        
    nowyBok := bok * skala.
    nowyKat := kat radiansToDegrees.
    
    self initialize: nowyBok angle: nowyKat.
    
    Transcript
        show: ' '; cr;
        show: 'NOWE WARTOŚCI: '.
        
    self drukuj.
    
    Transcript
        show: '---------------'; cr.
        
    ^self!!

!Romb methodsFor: 'actions'!

pole
    "licz pole rombu"
    ^(wierzcholki at: 2) x * wysokosc!!

"TESTOWANIE"
| kwadrat romb kwadrat2 romb2 kwadrat3 |
kwadrat := Kwadrat new.
kwadrat initialize: 4.
kwadrat drukuj.

romb := Romb new.
romb initialize: 3.0 angle: 60.
romb drukuj.
romb := romb + kwadrat.

kwadrat2 := Kwadrat new.
kwadrat2 initialize: 2.
kwadrat2 := kwadrat2 + romb.

kwadrat2 skaluj: 2.

romb2 := Romb new.
romb2 initialize: 2.0 angle: 60.
romb2 skaluj: 2.
