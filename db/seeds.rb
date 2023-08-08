# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating seeds"

puts "Making Users"

user = User.create(username: "coolio", email: "coolio@coolio.com", password: "coolio")

puts "Made user #{user.email}"

puts "Next Countries"
countries = "Afghanistan,
  Albania,
  Algeria,
  Andorra,
  Angola,
  Antigua and Barbuda,
  Argentina,
  Armenia,
  Australia,
  Austria,
  Azerbaijan,
  The Bahamas,
  Bahrain,
  Bangladesh,
  Barbados,
  Belarus,
  Belgium,
  Belize,
  Benin,
  Bhutan,
  Bolivia,
  Bosnia and Herzegovina,
  Botswana,
  Brazil,
  Brunei,
  Bulgaria,
  Burkina Faso,
  Burundi,
  Cabo Verde,
  Cambodia,
  Cameroon,
  Canada,
  Central African Republic,
  Chad,
  Chile,
  China,
  Colombia,
  Comoros,
  Democratic Republic of the Congo,
  Republic of the Congo,
  Costa Rica,
  Côte dIvoire,
  Croatia,
  Cuba,
  Cyprus,
  Czech Republic,
  Denmark,
  Djibouti,
  Dominica,
  Dominican Republic,
  East Timor (Timor-Leste),
  Ecuador,
  Egypt,
  El Salvador,
  Equatorial Guinea,
  Eritrea,
  Estonia,
  Eswatini,
  Ethiopia,
  Fiji,
  Finland,
  France,
  Gabon,
  The Gambia,
  Georgia,
  Germany,
  Ghana,
  Greece,
  Grenada,
  Guatemala,
  Guinea,
  Guinea-Bissau,
  Guyana,
  Haiti,
  Honduras,
  Hungary,
  Iceland,
  India,
  Indonesia,
  Iran,
  Iraq,
  Ireland,
  Israel,
  Italy,
  Jamaica,
  Japan,
  Jordan,
  Kazakhstan,
  Kenya,
  Kiribati,
  North Korea,
  South Korea,
  Kosovo,
  Kuwait,
  Kyrgyzstan,
  Laos,
  Latvia,
  Lebanon,
  Lesotho,
  Liberia,
  Libya,
  Liechtenstein,
  Lithuania,
  Luxembourg,
  Madagascar,
  Malawi,
  Malaysia,
  Maldives,
  Mali,
  Malta,
  Marshall Islands,
  Mauritania,
  Mauritius,
  Mexico,
  Federated States of Micronesia,
  Moldova,
  Monaco,
  Mongolia,
  Montenegro,
  Morocco,
  Mozambique,
  Myanmar (Burma),
  Namibia,
  Nauru,
  Nepal,
  Netherlands,
  New Zealand,
  Nicaragua,
  Niger,
  Nigeria,
  North Macedonia,
  Norway,
  Oman,
  Pakistan,
  Palau,
  Panama,
  Papua New Guinea,
  Paraguay,
  Peru,
  Philippines,
  Poland,
  Portugal,
  Qatar,
  Romania,
  Russia,
  Rwanda,
  Saint Kitts and Nevis,
  Saint Lucia,
  Saint Vincent and the Grenadines,
  Samoa,
  San Marino,
  Sao Tome and Principe,
  Saudi Arabia,
  Senegal,
  Serbia,
  Seychelles,
  Sierra Leone,
  Singapore,
  Slovakia,
  Slovenia,
  Solomon Islands,
  Somalia,
  South Africa,
  Spain,
  Sri Lanka,
  Sudan,
  South Sudan,
  Suriname,
  Sweden,
  Switzerland,
  Syria,
  Taiwan,
  Tajikistan,
  Tanzania,
  Thailand,
  Togo,
  Tonga,
  Trinidad and Tobago,
  Tunisia,
  Turkey,
  Turkmenistan,
  Tuvalu,
  Uganda,
  Ukraine,
  United Arab Emirates,
  United Kingdom,
  United States,
  Uruguay,
  Uzbekistan,
  Vanuatu,
  Vatican City,
  Venezuela,
  Vietnam,
  Yemen,
  Zambia,
  Zimbabwe".split(",")
countries.each do |country|
  place = Country.create(name: country.gsub("\n", "").delete(' '))
  p "created country #{place.name} with id #{place.id}"
end
puts "finished making countries"

# next topics

puts "Making topics"
topics = ["Coup in Niger", "Kremlin", "Ukraine", "Saudi Arabia Peace talks", "South Korea Heatwave"]

topics.each do |t|
  topic = Topic.create(name: t)
  p "created #{topic.name} with id #{topic.id}"
end


puts "finished making topics"
# require 'net/http'

# next articles
# uri = URI('https://gnews.io/api/v4/top-headlines?country=us&category=general&apikey=c74773216f7bc318b072a88e2891eee4')
# response = Net::HTTP.get(uri)
# json_r = JSON.parse(response)
# p json_r["articles"][0]["description"]

puts "Making articles"
article = Article.create(url: "https://apnews.com/article/coup-niger-extremists-sahel-c4ff0bc653c8b73366705b19b8c74c3e", title: "West Africa defense chiefs finalize Niger intervention plan as junta negotiations deadlock", content: "BY SAM MEDNICK AND CHINEDU ASADU
  Updated 11:11 AM GMT+9, August 5, 2023
  Share
  NIAMEY, Niger (AP) — Defense chiefs from West African nations finalized an intervention plan Friday and urged militaries to ready resources after negotiations deadlocked with Niger’s military junta, which says it is severing military agreements with France, its former colonial ruler.

  With two days remaining before a deadline set by the regional bloc to release and reinstate President Mohamed Bazoum or face possible force, the junta announced that it was firing some of the previous government’s key ambassadors and warning citizens of the West African nation to watch for foreign armies and spies. In a plea published in a Washington Post opinion piece, Bazoum said, “I write this as a hostage” and urged the U.S. and partners to help.

  The junta’s announcement late Thursday deepens the post-coup isolation for what had been the United States’ and allies’ last major security partner in the Sahel, the vast region south of the Sahara Desert that Islamic extremist groups have turned into the global center of terrorism.

  ADVERTISEMENT


  Niger’s soldiers, who staged a mutiny July 26, face a Sunday deadline set by the regional bloc known as ECOWAS, whose envoys arrived Thursday for talks. But those discussions stalled, with the delegation unable to meet with the coup leader, Gen. Abdourahmane Tchiani, or go into the capital, Niamey, according to a person with close knowledge of the talks who spoke on condition of anonymity because they weren’t authorized to comment.

  OTHER NEWS
  FILE - Supporters of Niger's ruling junta gather at the start of a protest called to fight for the country's freedom and push back against foreign interference in Niamey, Niger, Aug. 3, 2023. As several European countries evacuate Niger, the Biden administration is showing itself unusually intent on staying. It sees Niger as the United States' last, best counterterrorism outpost — and until the coup, a promising democracy — in a region plagued by instability. (AP Photo/Sam Mednick, File)
  In Niger, the US seeks to hang on to its last, best counterterrorist outpost in West Africa
  Supporters of Niger's ruling junta hold a Russian flag at the start of a protest called to fight for the country's freedom and push back against foreign interference in Niamey, Niger, Thursday, Aug. 3, 2023. The march falls on the West African nation's independence day from its former colonial ruler, France, and as anti-French sentiment spikes, more than one week after mutinous soldiers ousted the country's democratically elected president. (AP Photo/Sam Mednick)
  International pressure mounts on coup leaders in Niger while hundreds rally in support of junta
  French and other nationals gather at the international Airport to be airlifted back to France on a French military aircraft, in Niamey, Niger, Wednesday, Aug. 2, 2023, to be airlifted back to France on a French military aircraft. French forces in the capital, Niamey, evacuated hundreds of mostly French nationals to Paris on two flights Tuesday, following concerns that their citizens and other Europeans risked becoming trapped by last week’s military coup, which ousted and detained President Mohamed Bazoum. (AP Photo/Sam Mednick)
  Niger’s military ruler warns against foreign meddling, urges population to defend the country
  However, defense chiefs from ECOWAS countries excluding Mali, Burkina Faso, Chad, Guinea and Niger met Friday in Abuja, Nigeria, concluding with several measures including a military intervention outlined as recommendations to the regional leaders.

  “All the elements that would go into any eventual intervention have been brought out here and been refined, including the timing, the resources needed and the how and where and when we are going to deploy such a force,” said Abdel-Fatau Musah, ECOWAS commissioner for political affairs, peace and security.

  Musah did not say whether ECOWAS would deploy such a force at the end of the one-week deadline given to the junta but added that the junta should reinstate Bazoum as president in the coming days or “we will make them handover to the civilians authorities.”

  Nigerian chief of defense staff asked the regional military chiefs to follow “a sense of urgency” and allocate the necessary resources as they had agreed.

  ADVERTISEMENT


  “ECOWAS will not be used for coups. Democracy is what we stand for and democracy is what we will sustain,” said Christopher Musa, the Nigerian defense chief. He called for action to also address security lapses in West Africa, saying the latest mutiny highlights “the fragility of our region.”

  The junta’s announcement brought further skepticism about any deal. It said it was terminating the military agreements and protocols signed with France and announced the end of functions for Niger’s ambassadors to France, the United States, Togo and neighboring Nigeria, which is leading ECOWAS efforts on dialogue.

  “All aggression or attempt at aggression against the state of Niger will see an immediate response and without warning,” said a spokesman for the coup leaders, Col. Maj. Amadou Abdramane, with the exception of Mali, Burkina Faso and Guinea, which have expressed support for the coup. Mali and Burkina Faso have said such an intervention would be a declaration of war against them.

  France’s Foreign Ministry responded that Paris only recognizes “the legitimate Nigerien authorities,” dismissing the move by coup leaders. France reiterated its call for “the re-establishment of the democratic institutions of Niger,” the ministry said.

  The United States said late Friday it was suspending some assistance programs that benefit the government of Niger, making good on threats to pull financial support unless mutinous forces reversed their takeover.

  ADVERTISEMENT


  Secretary of State Antony Blinken gave no details, but stressed in a statement that Washington would continue life-saving humanitarian and food aid.

  The Biden administration, which has given impoverished Niger hundreds of millions of dollars in civilian and security assistance, paused its security partnerships with the country earlier in the coup.

  Bazoum wrote that Niger’s security situation had been improving before the coup, in contrast to neighboring Mali and Burkina Faso that are led by military juntas, but said that’s now at risk because Niger would lose aid from foreign partners and extremist groups would take advantage of the country’s instability.

  “In our hour of need, I call on the U.S. government and the entire international community to help us restore our constitutional order,” he wrote.

  France has 1,500 military personnel in Niger, which had been envisioned as the base for counterterror operations in the region after anti-French sentiments grew elsewhere.

  ADVERTISEMENT


  The U.S. has 1,100 military personnel in Niger, including at a key drone base, and indicates it’s reluctant to leave, especially with the growing influence of the Russian private military group Wagner in the Sahel.

  Kremlin spokesman Dmitry Peskov told reporters it was concerned about emerging regional tensions but the “interference by non-regional powers is unlikely to change the situation for the better.”

  ECOWAS has been unsuccessful in stemming coups and is trying to change course with Niger in a region that has seen five of them in the past three years — two each in Mali and Burkina Faso.

  Nigeria’s President Bola Tinubu, fulfilling a legal requirement, informed lawmakers Friday of the ECOWAS intention to intervene militarily in Niger if the coup leaders “remain recalcitrant.”

  But there are risks that any intervention could get Bazoum killed, said James Barnett, a researcher specializing in West Africa at the Hudson Institute.

  ADVERTISEMENT


  “You would have to have a very surgical rescue operation to ensure that doesn’t happen,” he said.

  Another concern is that the junta might arm civilian militias to resist any intervention.

  “I fear the junta would gladly use its own people as cannon fodder or human shields, and ECOWAS militaries don’t have a good record when it comes to avoiding collateral damage,” Barnett said.

  Many people in Niamey didn’t appear concerned that ECOWAS will use force, while others wondered why the regional bloc hasn’t had the same resolve to tackle extremist violence.

  “If ECOWAS has an army, it could mobilize 1,000 soldiers per country ... 15,000 soldiers. If ECOWAS was serious, why didn’t it consider mobilizing 15,000 soldiers to help Mali, Burkina and Niger, which are undergoing insecurity?” said Annassa Djibrilla, president of the Dynamic Citizen activist group.

  Niger’s roughly 25 million people live in one of the poorest countries in the world, and any cuts in foreign aid could be disastrous. Already, citizens are feeling the effects after ECOWAS suspended all commercial and financial transactions between its member states and Niger and froze Nigerien assets held in regional central banks.

  The bloc’s sanctions include halting energy transactions with Niger, which gets up to 90% of its power from Nigeria, according to the International Renewable Energy Agency. Earlier this week, power transmission from Nigeria to Niger was cut off, an official at one of Nigeria’s main electricity companies said, speaking on condition of anonymity because they were not authorized to comment.

  The People’s Coalition for the Sahel, an informal alliance of several dozen Sahelian and West African civil society organizations, expressed concern for the military takeover and called for the protection of civilian populations to be a priority for all parties.

  “Nigerien civil and political liberties must be preserved and safeguarded, including protecting the rights of civil society organizations and human rights defenders to continue their activities freely and safely,” the group said in a statement.

  ___
  Asadu reported from Abuja, Nigeria; AP writers Elaine Ganley in Paris; Carley Petesch in Chicago and James Heintz contributed.".gsub("ADVERTISEMENT", ""))
puts "Made article #{article.title} with the url #{article.url}"

article = Article.create(url: "https://www.aljazeera.com/news/2023/8/4/west-african-leaders-make-plan-for-military-intervention-in-niger", title: "West African leaders make plan for military intervention in Niger", content: "West African defence chiefs have made a plan for potential military intervention to reverse last week’s coup in Niger, including how and when to deploy forces.

  The Economic Community of West African States (ECOWAS) will not divulge to the coup plotters when and where it will strike, but Abdel-Fatau Musah – ECOWAS commissioner for political affairs, peace and security – said on Friday the decision will be taken by the bloc’s heads of state.

  KEEP READING
  list of 4 items
  list 1 of 4
  Nigeria’s Tinubu seeks Senate support for ECOWAS intervention in Niger
  list 2 of 4
  Kremlin says interference of non-regional actors unlikely to help Niger
  list 3 of 4
  France: Deals revoked by Niger military were signed with ‘legitimate’ gov’t
  list 4 of 4
  Niger’s Bazoum warns of ‘devastating’ fallout for world if coup succeeds
  end of list
  “All the elements that will go into any eventual intervention have been worked out here, including the resources needed, the how and when we are going to deploy the force,” Musah said at the close of a three-day meeting in Nigeria’s capital, Abuja.

  ECOWAS has already imposed sanctions on Niger and said it could authorise the use of force if the coup leaders do not restore power to elected President Mohamed Bazoum by Sunday.

  The 15-member body sent a delegation to Niger on Thursday seeking an “amicable resolution”, but a source in the entourage said a meeting at the airport with the military’s representatives yielded no breakthrough.

  “We want diplomacy to work, and we want this message clearly transmitted to them that we are giving them every opportunity to reverse what they have done,” Musah said.


  Nigerian President Bola Tinubu told his government to prepare for options, including the deployment of military personnel, in a letter read out to the Senate on Friday. Senegal has also said it would send troops.

  Niger’s military rulers denounced outside interference and said they would fight back.

  The 59-year-old coup leader, Abdourahamane Tchiani, served as battalion commander for ECOWAS forces during conflicts in Ivory Coast in 2003, so he knows what such missions involve.

  Support for him from other military leaders in neighbouring Mali and Burkina Faso, which are both ECOWAS members, could also undermine the regional response. The two countries have said they would come to Niger’s defence.

  Sign up for Al Jazeera
  Week in the Middle East
  Catch up on our coverage of the region, all in one place.
  E-mail address
  Sign up
  By signing up, you agree to our Privacy Policy
  Play Video
  Video Duration 03 minutes 50 seconds
  03:50
  Burkina Faso & Mali warn against intervention after Niger coup
  Borders opened
  The coup leaders closed the borders of Niger on July 26 when announcing they had removed Bazoum from power. The borders were opened five days later.


  Niger, which borders seven African countries – including Libya, Chad and Nigeria – is seen by the United States and former colonial ruler France as an important partner to address security threats in the region.

  The country is the largest recipient of US military assistance in West Africa, having received an estimated $500m since 2012.

  The country also hosts more than 2,000 Western troops, mostly from the US and France. Various Western nations have cancelled aid and cooperation agreements with the military administration since the putsch.

  Niger’s coup was the seventh military takeover in less than three years in Western and Central Africa.

  Given its uranium and oil riches and pivotal role in the war with rebels in the Sahel region, Niger also has strategic significance for China, Europe and Russia.


  Bazoum, 63, who was elected in 2021, was detained at the presidential residence in Niamey. He said in his first remarks since the coup that he was a hostage in need of US and international help.

  “If it [the coup] succeeds, it will have devastating consequences for our country, our region and the entire world,” he wrote in a Washington Post opinion piece.

  Linda Thomas-Greenfield, the US envoy to the UN, said the United States recognised Bazoum as the legitimate leader of Niger, and Washington supported ECOWAS to find a path forward in resolving the situation.

  “We are engaging diplomatically with countries in the region and at the United Nations to condemn what this military has done, and we will continue to keep pressure on them until they make the decision to allow this democratically elected government resume its place,” she told Al Jazeera.

  Niger’s deposed gov’t says ECOWAS can restore power by force
  SOURCE: AL JAZEERA AND NEWS AGENCIES")

puts "Made article #{article.title} with the url #{article.url}"

puts "Made articles"

puts "Next Creating Tags"

tag1 = Tag.create(country: Country.find(129), article: Article.find(1), topic: Topic.find(1))

tag2 = Tag.create(country: Country.find_by(name: "United Kingdom"), article: Article.find(2), topic: Topic.find(2))

puts tag1
puts tag2
