module Lita
  module Handlers
    class RulesOfAcquisition < Handler
      route(
        /ferengi rule|latinum|greed|money|profit|sale|discount|opportunity/,
        :rule,
        help: {
          "ferengi rule|latinum|greed|money|profit|sale|discount|opportunity" => "Returns a Ferengi Rule of Acquisition"
        }
      )

      def rule(response)
        rules = [
          "Ferengi Rule of Acquisition #1:\n> Once you have their money, you never give it back.\n> -- Star Trek: Deep Space 9, \"The Nagus\", \"Heart of Stone\"",
          "Ferengi Rule of Acquisition #3:\n> Never pay more for an acquisition than you have to.\n> -- Star Trek: Deep Space 9, \"The Maquis, Part II\"",
          "Ferengi Rule of Acquisition #6:\n> Never allow family to stand in the way of opportunity.\n> -- Star Trek: Deep Space 9, \"The Nagus\"",
          "Ferengi Rule of Acquisition #7:\n> Keep your ears open.\n> -- Star Trek: Deep Space 9, \"In the Hands of the Prophets\"",
          "Ferengi Rule of Acquisition #8:\n> Small print leads to large risk.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #9:\n> Opportunity plus instinct equals profit.\n> -- Star Trek: Deep Space 9, The Storyteller",
          "Ferengi Rule of Acquisition #10:\n> Greed is eternal.\n> -- Star Trek: Deep Space 9, Prophet Motive",
          "Ferengi Rule of Acquisition #13:\n> Anything worth doing is worth doing for money.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #16:\n> A deal is a deal... until a better one comes along.\n> -- Star Trek: Deep Space 9, \"Melora\"",
          "Ferengi Rule of Acquisition #17:\n> A contract is a contract is a contract... but only between Ferengi.\n> -- Star Trek: Deep Space 9, \"Body Parts\"",
          "Ferengi Rule of Acquisition #18:\n> A Ferengi without profit is no Ferengi at all.\n> -- Star Trek: Deep Space 9, \"Heart of Stone\"",
          "Ferengi Rule of Acquisition #19:\n> Satisfaction is not guaranteed.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #21:\n> Never place friendship above profit.\n> -- Star Trek: Deep Space 9, \"Rule of Acquisition\"",
          "Ferengi Rule of Acquisition #22:\n> A wise man can hear profit in the wind.\n> -- Star Trek: Deep Space 9, \"Rule of Acquisition\"",
          "Ferengi Rule of Acquisition #27:\n> There is nothing more dangerous than an honest businessman\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #28:\n> Whisper your way to success.\n> -- Star Trek: Deep Space 9, \"Treachery, Faith, and the Great River\"",
          "Ferengi Rule of Acquisition #31:\n> Never make fun of a Ferengi's mother.\n> -- Star Trek: Deep Space 9, \"The Siege\"",
          "Ferengi Rule of Acquisition #33:\n> It never hurts to suck up to the boss.\n> -- Star Trek: Deep Space 9, \"Rule of Acquisition\", \"The Dogs of War\"",
          "Ferengi Rule of Acquisition #34:\n> War is good for business.\n> -- Star Trek: Deep Space 9, \"Destiny\"",
          "Ferengi Rule of Acquisition #35:\n> Peace is good for business.\n> -- Star Trek: Deep Space 9, \"The Perfect Mate\"; Star Trek: The Next Generation, \"Destiny\"",
          "Ferengi Rule of Acquisition #40:\n> She can touch your lobes, but never your latinum.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #41:\n> Profit is its own reward.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #44:\n> Never confuse wisdom with luck.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #47:\n> Never trust a man wearing a better suit than your own.\n> -- Star Trek: Deep Space 9, \"Rivals\"",
          "Ferengi Rule of Acquisition #48:\n> The bigger the smile, the sharper the knife.\n> -- Star Trek: Deep Space 9, \"Rule of Acquisition\"",
          "Ferengi Rule of Acquisition #52:\n> Never ask when you can take.\n> -- Star Trek: Deep Space 9, \"Rule of Acquisition\"",
          "Ferengi Rule of Acquisition #57:\n> Good customers are as rare as latinum. Treasure them.\n> -- Star Trek: Deep Space 9, \"Armageddon Game\"",
          "Ferengi Rule of Acquisition #58:\n> There is no substitute for success.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #59:\n> Free advice is seldom cheap.\n> -- Star Trek: Deep Space 9, \"Rule of Acquisition\"",
          "Ferengi Rule of Acquisition #60:\n> Keep your lies consistent.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #62:\n> The riskier the road, the greater the profit.\n> -- Star Trek: Deep Space 9, \"Rule of Acquisition\"",
          "Ferengi Rule of Acquisition #65:\n> Win or lose, there's always Hupyrian beetle snuff.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #75:\n> Home is where the heart is, but the stars are made of latinum.\n> -- Star Trek: Deep Space 9, \"Civil Defense\"",
          "Ferengi Rule of Acquisition #76:\n> Every once in a while, declare peace. It confuses the hell out of your enemies.\n> -- Star Trek: Deep Space 9, \"The Homecoming\"",
          "Ferengi Rule of Acquisition #79:\n> Beware of the Vulcan greed for knowledge.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #82:\n> The flimsier the product, the higher the price.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #85:\n> Never let the competition know what you're thinking.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #89:\n> Ask not what your profits can do for you, but what you can do for your profits.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #94:\n> Females and finances don't mix.\n> -- Star Trek: Deep Space 9, \"Ferengi Love Songs\"",
          "Ferengi Rule of Acquisition #97:\n> Enough ... is never enough.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #98:\n> Every man has his price.\n> -- Star Trek: Deep Space 9, \"In the Pale Moonlight\"",
          "Ferengi Rule of Acquisition #99:\n> Trust is the biggest liability of all.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #102:\n> Nature decays, but latinum lasts forever.\n> -- Star Trek: Deep Space 9, \"The Jem'Hadar\"",
          "Ferengi Rule of Acquisition #103:\n> Sleep can interfere with your lust for latinum\n> -- Star Trek: Deep Space 9, \"Rule of Acquisition\"",
          "Ferengi Rule of Acquisition #104:\n> Faith moves mountains ... of inventory.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #106:\n> There is no honor in poverty.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #109:\n> Dignity and an empty sack is worth the sack.\n> -- Star Trek: Deep Space 9, \"Rivals\"",
          "Ferengi Rule of Acquisition #111:\n> Treat people in your debt like family... exploit them.\n> -- Star Trek: Deep Space 9, \"Past Tense, Part I\", \"The Darkness and the Light\"",
          "Ferengi Rule of Acquisition #112:\n> Never have sex with the boss's sister.\n> -- Star Trek: Deep Space 9, \"Playing God\"",
          "Ferengi Rule of Acquisition #113:\n> Always have sex with the boss.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #121:\n> Everything is for sale, even friendship.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #123:\n> Even a blind man can recognize the glow of latinum.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #125:\n> You can't make a deal if you're dead.\n> -- Star Trek: Deep Space 9, \"The Siege of AR-558\"",
          "Ferengi Rule of Acquisition #139:\n> Wives serve, brothers inherit.\n> -- Star Trek: Deep Space 9, \"Necessary Evil\"",
          "Ferengi Rule of Acquisition #141:\n> Only fools pay retail.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #144:\n> There's nothing wrong with charity... as long as it winds up in your pocket.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #162:\n> Even in the worst of times, someone turns a profit.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #168:\n> Whisper your way to success.\n> -- Star Trek: Deep Space 9, \"Treachery, Faith, and the Great River\"",
          "Ferengi Rule of Acquisition #177:\n> Know your enemies... but do business with them always.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #181:\n> Not even dishonesty can tarnish the shine of profit.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #189:\n> Let others keep their reputation. You keep their latinum.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #190:\n> Hear all, trust nothing.\n> -- Star Trek: Deep Space 9, \"Call to Arms\"",
          "Ferengi Rule of Acquisition #192:\n> Never cheat a Klingon ... unless you can get away with it.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #194:\n> It's always good to know about new customers before they walk in your door.\n> -- Star Trek: Deep Space 9, \"Whispers\"",
          "Ferengi Rule of Acquisition #202:\n> The justification for profit is profit.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #203:\n> New customers are like razor-toothed gree worms. They can be succulent, but sometimes they bite back.\n> -- Star Trek: Deep Space 9, \"Little Green Men\"",
          "Ferengi Rule of Acquisition #208:\n> Sometimes the only thing more dangerous than the question is an answer.\n> -- Star Trek: Deep Space 9, \"Ferengi Love Songs\"",
          "Ferengi Rule of Acquisition #211:\n> Employees are the rungs on the ladder of success. Don't hesitate to step on them.\n> -- Star Trek: Deep Space 9, \"Bar Association\"",
          "Ferengi Rule of Acquisition #214:\n> Never begin a negotiation on an empty stomach.\n> -- Star Trek: Deep Space 9, \"The Maquis, Part I\"",
          "Ferengi Rule of Acquisition #217:\n> You can't free a fish from water.\n> -- Star Trek: Deep Space 9, \"Past Tense, Part I\"",
          "Ferengi Rule of Acquisition #218:\n> Always know what you're buying.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #223:\n> Beware the man who doesn't make time for oo-mox.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #229:\n> Latinum lasts longer than lust.\n> -- Star Trek: Deep Space 9, \"Ferengi Love Songs\"",
          "Ferengi Rule of Acquisition #236:\n> You can't buy fate.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #239:\n> Never be afraid to mislabel a product.\n> -- Star Trek: Deep Space 9, \"Body Parts\"",
          "Ferengi Rule of Acquisition #242:\n> More is good. All is better.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #255:\n> A wife is a luxury ... a smart accountant a necessity.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #261:\n> A wealthy man can afford anything except a conscience.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #266:\n> When in doubt, lie.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #263:\n> Never let doubt interfere with your lust for latinum.\n> -- Star Trek: Deep Space 9, \"Bar Association\"",
          "Ferengi Rule of Acquisition #284:\n> Deep down, everyone's a Ferengi.\n> -- Star Trek: Legends of the Ferengi",
          "Ferengi Rule of Acquisition #285:\n> No good deed ever goes unpunished.\n> -- Star Trek: Deep Space 9, \"The Collaborator\""
        ]

        input = response.matches.flatten.first
        matching_rules = rules.select do |rule|
          rule.downcase.include?(input.downcase)
        end

        selected_rule = matching_rules.sample || rules.sample
        response.reply(selected_rule)
      end
    end

    Lita.register_handler(RulesOfAcquisition)
  end
end
