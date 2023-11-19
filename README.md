# SMALLTALK
Projekt SmallTalk z języków programowania sem3

WYBÓR ZADANIA

I. Oblicz: numer ID pierwszego studenta modulo 5. Dla otrzymanej wartości utwórz podklasę klasy Wielokąt:
0 – trójkąt równoramienny (podstawa, wysokość)
1 – trójkąt równoboczny (bok)
2 – romb (bok, kąt)
3 – trapez prostokątny (2 x podstawa, wysokość)
4 – sześciokąt foremny (bok)

II. Następnie sprawdź, czy numer ID drugiego studenta jest parzysty czy nie i:
Dla nieparzystych – stwórz komunikat „skaluj: liczba”, który przeskaluje boki wielokąta zgodnie z podaną skalą
Dla parzystych – stwórz komunikat „wyśrodkuj”, który przeniesie figurę tak, że środek układu współrzędnych będzie się znajdował w punkcie przecięcia „przekątnych” Wielokąta (czyli przekątnych w czworokątach, wysokości w przypadku trójkątów, dwusiecznych w sześcianie).

UWAGA: JEŚLI KTOŚ Z JAKIEGOŚ POWODU PISZE SAM, TO W OBU PUNKTACH BIERZE SWÓJ NUMER ID WYTYCZNE DLA KAZDEGO ZADANIA

1. Pierwszy wierzchołek każdego nowego wielokąta powinien znajdować się w punkcie (0,0)
2. Nowa klasa powinna, tak jak klasa Kwadrat: umożliwiać dodawanie figur w sensie pola. Wynik dodawania powinien mieć pole powierzchni równe sumie pól powierzchni dodawanych figur i powinien być figurą oraz mieć proporcje odbiorcy komunikatu. Powinna mieć zatem komunikaty: pole i +.
3. Należy zdefiniować komunikat drukuj wypisujący wierzchołki i pole wielokąta. Komunikat ten zdefiniuj dla klasy Wielokąt. Dodając komunikaty przekształceń, dodaj również wypisywanie wyniku tych opracji.
4. Przy przekształceniu / wypisywaniu więcej niż jednego punktu proszę używać pętli. Proszę też używać wyrażeń matematycznych (pierwiastek/sinus itp.) a nie przybliżeń liczbowych. Smalltalk to normalny język programowania, który posiada wszelkie funkcje i instrukcje potrzebne do realizacji tego zadania.
5. Przekształcenie dodaj także do Kwadratu
6. Jeśli pracujecie w IDE, proszę przygotować do sprawdzenia plik .ws z testami poprawności – też wgrać na moodla. Gdy w edytorze on-line, umieśćcie testy na końcu pliku z rozwiązaniem.
7. Aby wygenerować paczkę w VisualWorks: Package/File out/Package…
8. Proszę napisać w komentarzu, w jakiego programu używaliście oraz kto jest studentem nr 1 a kto studentem nr 2. (Mam zainstalowany VisualWorks i Squeak. Mogą być kompilatory on-line – wtedy trzeba podać link.)

PRZYKŁADOWY PLIK Z TESTEM I WYNIK
Transcript clear.
k := (Kwadrat new) initialize:2.
t := (TrojkatRownoramienny new) initialize: 2
wysokosc: 2.
Transcript show: 'Dane sa wielokaty:'; cr.
t drukuj.
k drukuj.
Transcript cr; show: 't+k'.
t2 := t+ k.
t2 drukuj.
Transcript cr; show: 'k+t'.
k1 := k + t.
k1 drukuj.
t3 := t skaluj: 2.
t3 drukuj.
k2 := k skaluj: 0.5.
k2 drukuj.
k3 := k wysrodkuj.
k3 drukuj.
t4 := t wysrodkuj.
t4 drukuj.
Dane sa wielokaty:
Dana jest figura: Trojkat
rownoramienny
wierzcholek 1: 0 @ 0
wierzcholek 2: 2 @ 0
wierzcholek 3: 1 @ 2
Pole = 2.0
Dana jest figura: Kwadrat
wierzcholek 1: 0 @ 0
wierzcholek 2: 2 @ 0
wierzcholek 3: 2 @ 2
wierzcholek 4: 0 @ 2
Pole = 4
t+k
Dana jest figura: Trojkat
rownoramienny
wierzcholek 1: 0 @ 0
wierzcholek 2: 3.4641 @ 0
wierzcholek 3: 1.73205 @ 3.4641
Pole = 6.0
k+t
Dana jest figura: Kwadrat
wierzcholek 1: 0 @ 0
wierzcholek 2: 2.44949 @ 0
wierzcholek 3: 2.44949 @ 2.44949
wierzcholek 4: 0 @ 2.44949
Pole = 6.0
Przeskaluje boki figury: Trojkat
rownoramienny o liczbe 2
Dana jest figura: Trojkat
rownoramienny
wierzcholek 1: 0 @ 0
wierzcholek 2: 4 @ 0
wierzcholek 3: 2 @ 4.3589
Pole = 8.7178
Przeskaluje boki figury: Kwadrat o
liczbe 0.5
Dana jest figura: Kwadrat
wierzcholek 1: 0 @ 0
wierzcholek 2: 1.0 @ 0
wierzcholek 3: 1.0 @ 1.0
wierzcholek 4: 0 @ 1.0
Pole = 1.0
Wysrodkuje figure: Kwadrat
Srodek figury znajduje sie w
punkcie: 1 @ 1
Dana jest figura: Kwadrat
wierzcholek 1: -1 @ -1
wierzcholek 2: 1 @ -1
wierzcholek 3: 1 @ 1
wierzcholek 4: -1 @ 1
Pole = 4
Wysrodkuje figure: Trojkat
rownoramienny
Srodek figury znajduje sie w
punkcie: 1 @ (1 / 2)
Dana jest figura: Trojkat
rownoramienny
wierzcholek 1: -1 @ (-1 / 2)
wierzcholek 2: 1 @ (-1 / 2)
wierzcholek 3: 0 @ (3 / 2)
Pole = 2.0
