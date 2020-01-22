# Rock Paper Scissors

## Dependencies
None

## Task Description
For this task, you will be creating a Rock-Paper-Scissors game in Julia. The game should be single-player and be played against an AI that you make.

This should be pretty straightforward so the caveat for this task is that you must not use if/else statements and are instead restricted to the use of the Ternary Operator which you can learn about more here.

Create a Julia program that is a single-player Rock-Paper-Scissors game.
Upload the code to GitHub as a Gist, Notebook, or Repository and link it here.
Provide screenshots on GitHub of how the game is played.
Note that you can not use if/else statements.
Please ping us on here or Slack if there are issues/questions doing this task.

## Preview
```
λ julia.exe app.jl
r for Rock, s for Scissor and p for Paper.
r
You:
                      :::::/
                 ::::oshdhyooo:
      :ooyyyyyyyyyhhdmNNNNNsyoo
     :oymNNNNNNNNNNNNNNNNNNyyso:
   :osdNNNNNNNNNNNNNmmNNNNNsyhysoo
  oshNNNNNNNNNNNmdhysomNNNNsyhhhyoo
  odNNNNNNNNNNNNsyhhhsyNNNNyshhhyo:
  syNNNNNNNNNNNNyshhhsyNNNNsyhhhhyoo
  osmNNNNNNNNNNNdshyshdNNNNsyhhhhhoo
  oodNNNNhshmNNNmyydNNNNNNNyshhhhso
 sohNNNNhshsyNNNNNNNNNNNNNmyshhhyo:
sodNNNNNmhsodNNNNNNNNNmhyysyhhhhhso
oomNNNNNNNmmNNNNNNNhysyyhhhhhhhhhhoo
/shNNNNNNNNNNNNNNNdohhhhhhhhhhhhhhoo
 osmNNNNNNNNNNmNNmyshhhhhhhhhhhhhyoo
 :odNNNNNNmhysysysyhhhhhhhhhhhhyso:
  oshhhyysyhhhhhhhhhhhhhhhhhhyso:
  oossyyhhhhhhhhhhhhyyyyssssoo:
    :::::ooyyyysssoo:::::
          ::::::


-------------------------------------
Computer:

   -ossyysso-
-oyhhyyyyhhyo-
oydyo----oydyo           -ohdNNNNNho-
ohdoo    oodho         :ohNNNNNNho-
oydyo----oydho-      :ohNNNNNNho-
-oyhhyyyyhdddhyo-  :ohNNNNNNho-
  -ossyysyhddddhyoohNNNNNNho-
         -oyhddhshNNNNNNho-
           -osshNddNNNho-
           :ohNNNddNhsyo:
         :ohNNNNNNhshddhyo:
  -osyhhyhNNNNNNhooshddddhyo:
-ohmNdhhdmNNNNho-  -oshddddhyo:
ohNho:---ohNmo-      -oshddddhyo:
oNNoo    ooNNo         -oshddddhyo:
ohNho:--:ohNho           -oshhdddhyo-
-oymNdhhdNmyo:
  -osyhhyso-

-------------------------------------
| Player  | Computer |
|    1    |    0     |
r for Rock, s for Scissor and p for Paper.
s
You:

   -ossyysso-
-oyhhyyyyhhyo-
oydyo----oydyo           -ohdNNNNNho-
ohdoo    oodho         :ohNNNNNNho-
oydyo----oydho-      :ohNNNNNNho-
-oyhhyyyyhdddhyo-  :ohNNNNNNho-
  -ossyysyhddddhyoohNNNNNNho-
         -oyhddhshNNNNNNho-
           -osshNddNNNho-
           :ohNNNddNhsyo:
         :ohNNNNNNhshddhyo:
  -osyhhyhNNNNNNhooshddddhyo:
-ohmNdhhdmNNNNho-  -oshddddhyo:
ohNho:---ohNmo-      -oshddddhyo:
oNNoo    ooNNo         -oshddddhyo:
ohNho:--:ohNho           -oshhdddhyo-
-oymNdhhdNmyo:
  -osyhhyso-

-------------------------------------
Computer:

   -ossyysso-
-oyhhyyyyhhyo-
oydyo----oydyo           -ohdNNNNNho-
ohdoo    oodho         :ohNNNNNNho-
oydyo----oydho-      :ohNNNNNNho-
-oyhhyyyyhdddhyo-  :ohNNNNNNho-
  -ossyysyhddddhyoohNNNNNNho-
         -oyhddhshNNNNNNho-
           -osshNddNNNho-
           :ohNNNddNhsyo:
         :ohNNNNNNhshddhyo:
  -osyhhyhNNNNNNhooshddddhyo:
-ohmNdhhdmNNNNho-  -oshddddhyo:
ohNho:---ohNmo-      -oshddddhyo:
oNNoo    ooNNo         -oshddddhyo:
ohNho:--:ohNho           -oshhdddhyo-
-oymNdhhdNmyo:
  -osyhhyso-

-------------------------------------
| Player  | Computer |
|    1    |    0     |
r for Rock, s for Scissor and p for Paper.
p
You:


hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
ssssssssssssssssssssssssshhhhhhhhhhhh
ssssssssssssssssssssssssshhhhhhhhhhhh
sssssssssssssssssssssssssshhhhhhhhhhh
:sssssssssssssssssssssssssyhhhhhhd/
-------------------------------------
Computer:
                      :::::/
                 ::::oshdhyooo:
      :ooyyyyyyyyyhhdmNNNNNsyoo
     :oymNNNNNNNNNNNNNNNNNNyyso:
   :osdNNNNNNNNNNNNNmmNNNNNsyhysoo
  oshNNNNNNNNNNNmdhysomNNNNsyhhhyoo
  odNNNNNNNNNNNNsyhhhsyNNNNyshhhyo:
  syNNNNNNNNNNNNyshhhsyNNNNsyhhhhyoo
  osmNNNNNNNNNNNdshyshdNNNNsyhhhhhoo
  oodNNNNhshmNNNmyydNNNNNNNyshhhhso
 sohNNNNhshsyNNNNNNNNNNNNNmyshhhyo:
sodNNNNNmhsodNNNNNNNNNmhyysyhhhhhso
oomNNNNNNNmmNNNNNNNhysyyhhhhhhhhhhoo
/shNNNNNNNNNNNNNNNdohhhhhhhhhhhhhhoo
 osmNNNNNNNNNNmNNmyshhhhhhhhhhhhhyoo
 :odNNNNNNmhysysysyhhhhhhhhhhhhyso:
  oshhhyysyhhhhhhhhhhhhhhhhhhyso:
  oossyyhhhhhhhhhhhhyyyyssssoo:
    :::::ooyyyysssoo:::::
          ::::::


-------------------------------------
| Player  | Computer |
|    2    |    0     |
r for Rock, s for Scissor and p for Paper.
p
You:


hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
ssssssssssssssssssssssssshhhhhhhhhhhh
ssssssssssssssssssssssssshhhhhhhhhhhh
sssssssssssssssssssssssssshhhhhhhhhhh
:sssssssssssssssssssssssssyhhhhhhd/
-------------------------------------
Computer:
                      :::::/
                 ::::oshdhyooo:
      :ooyyyyyyyyyhhdmNNNNNsyoo
     :oymNNNNNNNNNNNNNNNNNNyyso:
   :osdNNNNNNNNNNNNNmmNNNNNsyhysoo
  oshNNNNNNNNNNNmdhysomNNNNsyhhhyoo
  odNNNNNNNNNNNNsyhhhsyNNNNyshhhyo:
  syNNNNNNNNNNNNyshhhsyNNNNsyhhhhyoo
  osmNNNNNNNNNNNdshyshdNNNNsyhhhhhoo
  oodNNNNhshmNNNmyydNNNNNNNyshhhhso
 sohNNNNhshsyNNNNNNNNNNNNNmyshhhyo:
sodNNNNNmhsodNNNNNNNNNmhyysyhhhhhso
oomNNNNNNNmmNNNNNNNhysyyhhhhhhhhhhoo
/shNNNNNNNNNNNNNNNdohhhhhhhhhhhhhhoo
 osmNNNNNNNNNNmNNmyshhhhhhhhhhhhhyoo
 :odNNNNNNmhysysysyhhhhhhhhhhhhyso:
  oshhhyysyhhhhhhhhhhhhhhhhhhyso:
  oossyyhhhhhhhhhhhhyyyyssssoo:
    :::::ooyyyysssoo:::::
          ::::::


-------------------------------------
| Player  | Computer |
|    3    |    0     |
```
