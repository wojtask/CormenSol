# Wprowadzenie do Algorytmów
![Build PDF](https://github.com/wojtask/CormenSol/actions/workflows/build.yml/badge.svg)

Od 1 stycznia 2023 ten projekt jest **zamrożony**.
Nie są wprowadzane do niego żadne niekrytyczne modyfikacje.
Aktywnie rozwijany jest natomiast [projekt rozwiązań do najnowszego wydania książki](https://github.com/wojtask/clrs4e-solutions).

## Rozwiązania zadań i problemów

Niniejsze opracowanie zawiera rozwiązania zadań i problemów z drugiego wydania monografii *Introduction to Algorithms* autorstwa Thomasa H. Cormena, Charlesa E. Leisersona, Ronalda L. Rivesta i Clifforda Steina.
Treści rozwiązań powstały na podstawie polskiego tłumaczenia pt. *Wprowadzenie do algorytmów* w wydaniu szóstym.
Obecne wydanie swoją treścią pokrywa rozdziały wchodzące w skład części I-IV (rozdz. 1-17) oraz dodatki wypełniające część VIII.

Jako cel powziąłem sobie stworzenie rzetelnego i kompletnego zbioru rozwiązań, służącego jako uzupełnienie w studiowaniu materiału z Podręcznika.
Moim zamierzeniem co do opracowywanych treści było zapewnienie przede wszystkim ich poprawności i kompletności, a także spójności z treściami zadań i materiałem w Podręczniku oraz technicznej elegancji.
W związku z tym spędziłem mnóstwo czasu na weryfikację rozwiązań, nie tylko pod kątem merytorycznym, ale także językowym i typograficznym.
Zwracam uwagę na dostarczanie optymalnych algorytmów, które następnie implementuję i testuję, ilustruję operacje i przykłady dokładnymi i spójnymi z tekstem rysunkami, wreszcie dbam o spójność tekstów rozwiązań z tekstem Podręcznika, także tym oryginalnym.

Niewielka część mojej pracy jest też odtwórcza.
Należy wspomnieć, że sami Autorowie Podręcznika dostarczają rozwiązań niektórych zadań i problemów &ndash; można je pobrać ze [strony WWW książki](http://mitpress.mit.edu/algorithms).
W sieci można znaleźć też rozwiązania innych autorów, np.:
* [rozwiązania autorstwa Michelle Bodnar i Andrew Lohra](http://sites.math.rutgers.edu/~ajl213/CLRS/CLRS.html),
* [rozwiązania autorstwa Stefana Kaneva](https://ita.skanev.com),
* [rozwiązania autorstwa Dona R. Walsha](https://donrwalsh.github.io/CLRS/),
* [rozwiązania koordynowane przez Peng-Yu Chena, opracowywane na zasadach crowdsourcingu](https://walkccc.github.io/CLRS),
* [strona książki na portalu Quizlet](https://quizlet.com/explanations/textbook-solutions/introduction-to-algorithms-2nd-edition-9780262032933).

Żadne z tych źródeł nie pokrywa wszystkich zadań z Podręcznika albo niektóre z tych rozwiązań nie są najwyższej jakości.
Jednak prace te stanowiły dla mnie źródło inspiracji, innych podejść i punktów widzenia.
Korzystając z nich, zawsze miałem na celu stworzenie na ich podstawie autorskich wersji rozwiązań, niejednokrotnie poprawionych i ulepszonych.
W porównaniu z poprzednim wydaniem opracowania, obecne nie zawiera rozwiązań nowych zadań, ale ogrom wprowadzonych poprawek i ulepszeń do istniejących, dzięki odniesieniu się do powyższych źródeł skłonił mnie do opublikowania ich jako wersji 0.7.

Rozwiązania często powołują się na fakty przedstawione w Podręczniku, wymagana jest zatem znajomość całego materiału przynajmniej z bieżącego rozdziału.
W wielu tekstach rozwiązań znajdziemy także odnośniki do innych zadań, szczególnie wówczas, gdy dane zadanie korzysta z wyniku innego we własnym rozwiązaniu.
Na ogół wykorzystywane są rozwiązania zadań występujących w tekście wcześniej względem danego, choć nie jest to regułą.
W początkowych rozdziałach można zatem zaobserwować nieco większą koncentrację na szczegółach, a w późniejszych &ndash; więcej odsyłaczy do zadań, w których szczegóły te zostały już omówione.

O każdym znalezionym błędzie lub nieścisłości w treściach zadań zwracam uwagę w krótkich notkach przed rozwiązaniem danego zadania.
Bazuję przede wszystkim na polskim tłumaczeniu, ale wskazuję, czy błąd występuje także w oryginale.
Uwzględniam jednakże [erratę](http://www.cs.dartmouth.edu/~thc/clrs-2e-bugs/bugs.php) do oryginału &ndash; jeśli znajduje się w niej wpis o pewnej poprawce, to przyjmuję, że błąd został naprawiony i wspominam o jego istnieniu tylko wówczas, gdy występuje w tłumaczeniu.

Jak podkreśliłem wcześniej, przykładam szczególną uwagę do zapewnienia poprawności przedstawianych algorytmów i operacji na strukturach danych.
Każdy pseudokod lub opis algorytmu zamieszczony w rozwiązaniach, jak i w Podręczniku przez Autorów, implementuję w języku Python i testuję pod kątem poprawności.
W planach jest też przygotowanie swego rodzaju testów obciążeniowych, mających na celu (przynajmniej do pewnego stopnia) uzasadnienie złożoności czasowych implementowanych algorytmów.
Projekt z implementacjami dostępny jest na [GitHub](https://github.com/wojtask/CormenPy).
Nie zalecam jednak wykorzystywania go jako biblioteki algorytmów do rzeczywistych zastosowań, ponieważ głównym celem projektu jest jak najwierniejsze odwzorowanie pseudokodów w rzeczywistym języku programowania i dokładne przetestowanie powstałego kodu.

Opracowanie w obecnej formie powstaje od 2009 roku.
Z powodu mojego perfekcjonistycznego podejścia w przygotowywaniu rozwiązań i tego, że przeznaczam na to swój wolny czas, postęp prac jest niezwykle powolny.
Od rozpoczęcia projektu, w 2009 roku ukazało się trzecie oryginalne wydanie Podręcznika, a w 2022 roku &ndash; jego czwarte wydanie.
W związku z tym podjąłem decyzję o zamrożeniu obecnego projektu i przeniesieniu uwagi w całości na opracowanie [rozwiązań do czwartego wydania](https://github.com/wojtask/clrs4e-solutions).
Poniżej zamieszczam plan rozwoju obecnego projektu po ewentualnym odmrożeniu go w przyszłości, jednak dokończenie go będzie zależało od tego, czy wciąż będę widział taką konieczność po zakończeniu prac nad najnowszym wydaniem:
* **wersja 0.8**: dodanie rozwiązań z części V, dokończenie problemu 16-4,
* **wersja 0.9**: dodanie rozwiązań z części VI, weryfikacja problemu 15-5,
* **wersja 1.0**: dodanie rozwiązań z części VII, ostateczne poprawki.

Dokument został przygotowany w systemie LaTeX 2&epsilon;, który pozwala na precyzyjną i estetyczną prezentację nie tylko tekstu technicznego, ale także formuł matematycznych, tabel i pseudokodów, dbając także o odpowiedni układ stron, sekcji, paragrafów itd.
Do składania pseudokodów użyłem pakietu `clrscode` opracowanego przez Thomasa H. Cormena na potrzeby pseudokodów stosowanych w Podręczniku.
Ilustracje zostały przygotowane w językach PGF/TikZ, przy dążeniu do uzyskania spójnego stylu do tego z Podręcznika.

Dołożyłem wszelkich starań, aby każde rozwiązanie zostało dokładnie sprawdzone.
Jeśli jednak znalazłeś błąd merytoryczny, językowy, typograficzny lub jakikolwiek inny, bądź twierdzisz, że jesteś w stanie ulepszyć aktualne rozwiązanie, proszę [zgłoś to](https://github.com/wojtask/CormenSol/issues/new).
Jestem otwarty na każdą sugestię i chęć pomocy.

&mdash; Krzysztof Wojtas
