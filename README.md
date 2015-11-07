# Wprowadzenie do Algorytmów
## Rozwiązania zadań i problemów

Niniejsze opracowanie zawiera rozwiązania zadań i problemów z drugiego wydania monografii *Introduction to Algorithms* autorstwa Thomasa H. Cormena, Charlesa E. Leisersona, Ronalda L. Rivesta i Clifforda Steina.
Przy opracowywaniu rozwiązań korzystałem równolegle z polskiego tłumaczenia pt. *Wprowadzenie do algorytmów* w wydaniu szóstym.
Na chwilę obecną dokument pokrywa jedynie rozdziały należące do części pierwszej (rozdz. 1-5) i drugiej (rozdz. 6-9) oraz dodatki wypełniające część ósmą książki.
Kolejne wydania będą sukcesywnie uzupełniane o rozwiązania zadań z kolejnych części, wprowadzając jednocześnie poprawki znalezionych błędów i ewentualnie doskonaląc istniejące rozwiązania.

Moim celem jest stworzenie kompletnego zbioru rozwiązań, który pomaga w przyswajaniu materiału z *Wprowadzenia do algorytmów* (określanego dalej jako "Podręcznik"), będąc czymś w rodzaju wzorcowego "klucza odpowiedzi", z którym student weryfikuje uzyskany przez siebie rezultat.
Oczywiście gorąco zachęcam do uprzedniego zmierzenia się z zadaniami samodzielnie, zamiast natychmiastowego zaglądania do odpowiedzi -- z pewnością więcej można się w ten sposób nauczyć, a samo rozwiązywanie problemów może dostarczyć mnóstwa satysfakcji.
Wyznaczony przeze mnie cel rzetelności przedstawionych tu treści zaowocował zastosowaniem języka formalnego i w wielu miejscach niewątpliwie trudnego, jednak należy mieć na uwadze to, że dokładność i precyzja powinny być nieodłącznymi cechami pozycji matematycznych i informatycznych.

Zwracam uwagę na to, że sami Autorowie Podręcznika dostarczają rozwiązań niektórych zadań i problemów -- można je pobrać ze [strony WWW] (http://mitpress.mit.edu/algorithms) książki.
Stanowią one jednak niewielki ułamek wszystkich rozwiązań -- niemal połowa rozdziałów Podręcznika jest w całości pominięta, a pozostałe są opracowane tylko częściowo.
Ponadto wiele rozwiązań jest napisana zbyt szczegółowo i obszernie.
Niektóre posłużyły mi jako podstawa dla moich własnych rozwiązań, zawsze jednak dążyłem do przeformułowania ich treści do bardziej skondensowanych (i niejednokrotnie bardziej precyzyjnych) form.

Wspomnę teraz o kilku kwestiach technicznych i zasadach, którymi kierowałem się podczas opracowywania rozwiązań.
Dokument został utworzony za pomocą systemu LaTeX 2e, który pozwala na precyzyjną i estetyczną prezentację nie tylko tekstu, ale także formuł matematycznych, tabel i pseudokodów.
Do złożenia tych ostatnich użyłem pakietu `clrscode` opracowanego przez Thomasa H. Cormena.
Z pakietu tego korzystano również w oryginalnym tekście Podręcznika, a więc styl pseudokodów w rozwiązaniach jest identyczny jak w książce.
Rozumowania w wielu miejscach ilustrują rysunki, przy tworzeniu których wykorzystywałem język METAPOST.
Dzięki zastosowaniu płaskiej numeracji mogę równocześnie i jednoznacznie odnosić się do rysunków i tabel zarówno z rozwiązań, jak i z Podręcznika, w którym to numeracja jest dwupoziomowa.

Niektóre konwencje notacji i nomenklatury pojęć matematycznych odbiegają nieco względem tych z Podręcznika.
Głównym tego powodem były kwestie ujednolicenia zapisu, a także sprowadzenie ich do postaci częściej spotykanych w polskiej literaturze.
Dla przykładu wszystkie ciągi, krotki i tablice obejmuję nawiasami trójkątnymi, a jako synonimu pojęcia "funkcja monotonicznie rosnąca" zdefiniowanego w Podręczniku używam pojęcia "funkcja niemalejąca".
Notację `a..b` stosuję do oznaczania zakresu liczb całkowitych od `a` do `b`, natomiast znane z literatury matematycznej `(a, b)`, `(a, b]`, `[a, b)` i `[a, b]` -- dla zakresów (przedziałów) liczb rzeczywistych.
Z kolei często wykorzystywanym przeze mnie skrótem myślowym jest zapis "indeksy `i < j`" w znaczeniu "indeksy `i`, `j`, gdzie `i < j`".

Rozwiązania często powołują się na fakty przedstawione w Podręczniku, wymagana jest zatem znajomość całego materiału przynajmniej z bieżącego rozdziału.
W wielu tekstach rozwiązań znajdziemy także odnośniki do innych zadań, szczególnie wówczas, gdy dane zadanie korzysta z wyniku innego we własnym rozwiązaniu.
Na ogół wykorzystujemy rozwiązania zadań występujących w tekście wcześniej względem danego, choć nie jest to zasadą.
W początkowych rozdziałach można zatem zaobserwować nieco większą koncentrację na szczegółach, a w późniejszych -- więcej odsyłaczy do zadań, w których szczegóły te omówiono.

O każdym znalezionym błędzie lub nieścisłości w treściach zadań zwracam uwagę w krótkich notkach przed rozwiązaniem danego zadania.
Wskazuję, czy błąd występuje zarówno w oryginale, jak i w polskim tłumaczeniu, czy tylko w jednym z tekstów.
Uwzględniam jednakże [erratę] (http://www.cs.dartmouth.edu/~thc/clrs-2e-bugs/bugs.php) do oryginału -- jeśli znajduje się w niej wpis o pewnej poprawce, to przyjmuję, że błąd został ostatecznie naprawiony w którejś wersji tekstu i wspominam o jego istnieniu tylko wówczas, gdy występuje w tłumaczeniu.

W porównaniu z poprzednim wydaniem (oznaczonym numerem 0.3), oprócz dodania rozwiązań z części II, wprowadziłem także ogromną ilość poprawek do zadań z części I i VIII.
Poprawiłem wiele błędów logicznych, przeredagowałem mnóstwo paragrafów, a część rozwiązań została nawet przepisana w całości.
Z kolei wiele rysunków składa się teraz z kilku części identyfikowanych za pomocą kolejnych liter alfabetu, co pozwala lepiej zilustrować np. działanie algorytmu.
W związku z tak dużą ilością zmian uznaję wydanie 0.3 za przestarzałe.

Rozwiązania powstają bardzo powoli głównie z powodu mojego rygorystycznego i drobiazgowego podejścia w ich opracowywaniu.
Nic więc dziwnego, że w międzyczasie zdążyło się ukazać kolejne, trzecie wydanie *Introduction to Algorithms*, zawierające nowy materiał, jak i wiele nowych zadań i problemów.
Dlatego też, natychmiast po zakończeniu prac nad niniejszym opracowaniem, zostanie przygotowana wersja z rozwiązaniami zadań z nowego wydania książki.

Dołożyłem wszelkich starań, aby każde rozwiązanie zostało dokładnie sprawdzone.
Jeśli jednak znalazłeś błąd merytoryczny lub typograficzny, bądź twierdzisz, że znasz znacznie krótsze lub prostsze rozwiązanie jakiegoś zadania lub problemu, powiadom mnie o tym niezwłocznie, pisząc na adres kwojtas@gmail.com.
Jeśli sugestia okaże się trafna, Twoje nazwisko pojawi się w podziękowaniach, a kolejne wydania tego opracowania będą dzięki Tobie bliższe ideału.

Ważną metodą weryfikacji rozwiązań jest implementowanie ich w rzeczywistym języku programowania i testowanie ich przy użyciu testów jednostkowych.
Projekt, w którym implementuję algorytmy i struktury dancyh zarówno z rozwiązań, jak i te przedstawione w Podręczniku, znajduje się [tutaj] (https://github.com/wojtask/CormenImpl).
Implementacje podane są w języku Java i testowane są za pomocą biblioteki JUnit 4.
