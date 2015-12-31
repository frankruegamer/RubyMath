# RubyMath
Eine Sammlung verschiedene Ruby-Skripte für Mathematische Algorithmen

Die überschneidenden Skripte, namentlich 'prime' und 'eukld' decken sich in der Funktionalität mit denen der [Python-Skripte](https://github.com/frankruegamer/PythonMath)

## count_letters.rb
#### Zweck
Zählt in übergebenen Texten die Häufigkeiten der Buchstaben des Alphabets.

Anschließend werden die Ergebnisse absteigend ausgegeben. Bei gleicher Häufigkeit zweier oder mehrerer Buchstaben wird die Reihenfolge durch das erste Vorkommen dieser Buchstaben bestimmt.

#### Verwendung
`count_letters.rb text1 [text2 ...]`

Besteht der Text aus mehr als einem Wort muss er mit Anführungszeichen umschlossen werden, andernfalls werden die Worte als getrennte Texte betrachtet.

## iban_check.rb
#### Zweck
Prüft übergebene IBANs auf deren Korrektheit. Alternativ kann die Prüfziffer berechnet werden.

#### Verwendung
`iban_check.rb iban1 [iban2 ...]`

`iban_check.rb`

Werden keine IBANs übergeben, so wird der Benutzer durch eine Benutzereingabe dazu aufgefordert eine einzugeben.

Das Formatierung der IBAN ist nicht entscheidend. Wichtig ist, dass die Nummer folgendem Muster entspricht:

`CNPR BANK LZHL KONT NUMM ER`, wobei `CN` dem Länderkürzel und `XX` der Prüfziffer entspricht. Außerdem ist die Verwendung von Leerzeichen nebensächlich.

Zur Berechnung einer Prüfziffer muss diese durch einen Dummy maskiert werden. "XX" beispielsweise bietet sich an.

Konkret würde bei der Eingabe von `DEXX 0000 0001 0000 0000 01` eine Prüfziffer berechnet und ausgegeben werden werden.
