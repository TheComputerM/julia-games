game_over = false

rock = """
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
            ::::::"""

paper = """
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
:sssssssssssssssssssssssssyhhhhhhd/"""

scissor = """
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
   -osyhhyso-"""

score = [0, 0]

while !game_over
    println("r for Rock, s for Scissor and p for Paper.")
    inp = string(readline())
    println("You: ")
    println(inp == "r" ? rock : "")
    println(inp == "s" ? scissor : "")
    println(inp == "p" ? paper : "")
    println("-------------------------------------")
    println("Computer: ")
    comp = rand(["r", "s", "p"])
    println(comp == "r" ? rock : "")
    println(comp == "s" ? scissor : "")
    println(comp == "p" ? paper : "")
    println("-------------------------------------")

    comp == "r" && inp == "p" ? score[1] += 1 : ""
    comp == "p" && inp == "s" ? score[1] += 1 : ""
    comp == "s" && inp == "r" ? score[1] += 1 : ""

    comp == "p" && inp == "r" ? score[2] += 1 : ""
    comp == "s" && inp == "p" ? score[2] += 1 : ""
    comp == "r" && inp == "s" ? score[2] += 1 : ""

    println("| Player  | Computer |")
    println("|    $(score[1])    |    $(score[2])     |")

    score[1] == 3 || score[2] == 3 ? exit() : sleep(1)
end
