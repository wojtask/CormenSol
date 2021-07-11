# Wprowadzenie do Algorytmów
![Build PDF](https://github.com/wojtask/CormenSol/actions/workflows/build.yml/badge.svg)
## Rozwiązania zadań i problemów

Niniejsze opracowanie zawiera rozwiązania zadań i problemów z drugiego wydania monografii *Introduction to Algorithms* autorstwa Thomasa H. Cormena, Charlesa E. Leisersona, Ronalda L. Rivesta i Clifforda Steina.
Przy opracowywaniu rozwiązań korzystałem równolegle z polskiego tłumaczenia pt. *Wprowadzenie do algorytmów* w wydaniu szóstym.
Na chwilę obecną opracowanie pokrywa rozdziały wchodzące w skład części I–IV (rozdz. 1-17) oraz dodatki wypełniające część VIII.
Kolejne wersje będą sukcesywnie uzupełniane o rozwiązania zadań z kolejnych części, wprowadzając jednocześnie poprawki znalezionych błędów i ewentualnie doskonaląc poprzednie rozwiązania.

Moim celem jest stworzenie kompletnego zbioru rozwiązań, który pomaga w przyswajaniu materiału z *Wprowadzenia do algorytmów* (określanego dalej jako "Podręcznik"), będąc czymś w rodzaju wzorcowego "klucza odpowiedzi", z którym student weryfikuje uzyskany przez siebie rezultat.
Oczywiście gorąco zachęcam do uprzedniego zmierzenia się z zadaniami samodzielnie, zamiast natychmiastowego zaglądania do odpowiedzi -- z pewnością więcej można się w ten sposób nauczyć, a samo rozwiązywanie problemów może dostarczyć mnóstwa satysfakcji.
Wyznaczony przeze mnie cel rzetelności przedstawionych tu treści zaowocował zastosowaniem języka formalnego i w wielu miejscach niewątpliwie trudnego, jednak należy mieć na uwadze to, że dokładność i precyzja powinny być nieodłącznymi cechami tekstów ścisłych.

Zwracam uwagę na to, że sami Autorowie Podręcznika dostarczają rozwiązania niektórych zadań i problemów -- można je pobrać ze [strony WWW](http://mitpress.mit.edu/algorithms) książki.
Stanowią one jednak niewielki ułamek wszystkich rozwiązań -- niemal połowa rozdziałów Podręcznika jest w całości pominięta, a pozostałe są opracowane tylko częściowo.
Ponadto wiele rozwiązań jest napisana zbyt drobiazgowo.
Niektóre posłużyły mi jako podstawa dla moich własnych rozwiązań, zawsze jednak dążyłem do przeformułowania ich treści do bardziej skondensowanych (i niejednokrotnie bardziej precyzyjnych) form.

Wspomnę teraz o kilku kwestiach technicznych i zasadach, którymi kierowałem się podczas opracowywania rozwiązań.
Dokument został utworzony za pomocą systemu LaTeX2e, który pozwala na precyzyjną i estetyczną prezentację nie tylko tekstu, ale także formuł matematycznych, tabel i pseudokodów.
Do złożenia tych ostatnich użyłem pakietu `clrscode` opracowanego przez Thomasa H. Cormena.
Z pakietu tego korzystano również w oryginalnym tekście Podręcznika, a więc styl pseudokodów w rozwiązaniach jest identyczny jak w książce.
Rozumowania w wielu miejscach ilustrują rysunki, przy tworzeniu których wykorzystywałem języki PGF/TikZ.
Dzięki zastosowaniu płaskiej numeracji mogę równocześnie i jednoznacznie odnosić się do rysunków i tabel zarówno z rozwiązań, jak i z Podręcznika, w którym to numeracja jest dwupoziomowa.

Niektóre konwencje notacji i nomenklatury pojęć matematycznych odbiegają nieco względem tych z Podręcznika.
Głównym tego powodem były kwestie ujednolicenia zapisu, a także sprowadzenie ich do postaci częściej spotykanych w polskiej literaturze.
Dla przykładu wszystkie ciągi, krotki i tablice obejmuję nawiasami trójkątnymi, a jako synonimu pojęcia "funkcja monotonicznie rosnąca" zdefiniowanego w Podręczniku używam pojęcia "funkcja niemalejąca".
Notację `a..b` stosuję do oznaczania zakresu liczb całkowitych od `a` do `b` (włącznie), natomiast znane z literatury matematycznej notacje `(a, b)`, `(a, b]`, `[a, b)`, `[a, b]` -- dla zakresów (przedziałów) liczb rzeczywistych.
Z kolei często wykorzystywanym przeze mnie skrótem myślowym jest zapis "indeksy `i < j`" w znaczeniu "indeksy `i`, `j`, gdzie `i < j`".

Rozwiązania często powołują się na fakty przedstawione w Podręczniku, wymagana jest zatem znajomość całego materiału przynajmniej z bieżącego rozdziału.
W wielu tekstach rozwiązań znajdziemy także odnośniki do innych zadań, szczególnie wówczas, gdy dane zadanie korzysta z wyniku innego we własnym rozwiązaniu.
Na ogół wykorzystywane są rozwiązania zadań występujących w tekście wcześniej względem danego, choć nie jest to zasadą.
W początkowych rozdziałach można zatem zaobserwować nieco większą koncentrację na szczegółach, a w późniejszych -- więcej odsyłaczy do zadań, w których szczegóły te zostały już omówione.

O każdym znalezionym błędzie lub nieścisłości w treściach zadań zwracam uwagę w krótkich notkach przed rozwiązaniem danego zadania.
Bazuję przede wszystkim na polskim tłumaczeniu, ale wskazuję, czy błąd występuje także w oryginale.
Uwzględniam jednakże [erratę](http://www.cs.dartmouth.edu/~thc/clrs-2e-bugs/bugs.php) do oryginału -- jeśli znajduje się w niej wpis o pewnej poprawce, to przyjmuję, że błąd został ostatecznie naprawiony w którejś wersji tekstu i wspominam o jego istnieniu tylko wówczas, gdy występuje w tłumaczeniu.

Algorytmy i struktury danych z Podręcznika i rozwiązań implementowane są w języku Python i testowane pod kątem poprawności.
Projekt dostępny jest na platformie [GitHub](https://github.com/wojtask/CormenPy).
Nie zalecam jednak wykorzystywania tej implementacji jako biblioteki algorytmów do rzeczywistych zastosowań, ponieważ głównym celem projektu jest jak najwierniejsze odwzorowanie pseudokodów w rzeczywistym języku programowania i dokładne przetestowanie powstałego kodu.

Opracowanie powstaje od 2009 roku.
Z powodu mojego perfekcjonistycznego podejścia w przygotowywaniu rozwiązań, częstotliwość wydawania kolejnych wersji jest dość niska.
Na podstawie obserwacji tego tempa estymuję, że prawdopodobnym terminem ukończenia projektu jest rok 2025.
Po wydaniu finalnej wersji niniejszego opracowania mam zamiar przygotować podobne, bazujące na nowszych wydaniach Podręcznika (trzeciego oraz ewentualnych przyszłych), a także przetłumaczyć ich tekst na język angielski, aby dotrzeć do szerszego grona odbiorców.

Dołożyłem wszelkich starań, aby każde rozwiązanie zostało dokładnie sprawdzone.
Jeśli jednak znalazłeś błąd merytoryczny lub typograficzny, bądź twierdzisz, że znasz znacznie krótsze lub prostsze rozwiązanie jakiegoś zadania lub problemu, powiadom mnie o tym niezwłocznie, pisząc na adres kwojtas@gmail.com.
Jeśli sugestia okaże się trafna, Twoje nazwisko pojawi się w podziękowaniach, a kolejne wersje tego opracowania będą dzięki Tobie bliższe ideału.
