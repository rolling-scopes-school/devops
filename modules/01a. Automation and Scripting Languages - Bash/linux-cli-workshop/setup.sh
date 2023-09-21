mkdir /expected

# step 2
mkdir -p /findme/0{1..9}/00{1..9}
echo 415-726-078 > /findme/0$(( $RANDOM % 9 + 1))/00$(( $RANDOM % 9 + 1))/secret1
echo 150-419-834 > /findme/0$(( $RANDOM % 9 + 1))/00$(( $RANDOM % 9 + 1))/secret2
echo 576-254-398 > /findme/0$(( $RANDOM % 9 + 1))/00$(( $RANDOM % 9 + 1))/secret3

# step 3
mkdir /encoded_names
cd /encoded_names || exit
touch t2h34e_m49a25tr5ix
touch 68l28ord6_of93_th54e_ri3n34g2s
touch 1k1i1l1l1_1b1il1l1

# step 4
mkdir /words
cat > /words/.word_list << EOD
abject
aberration
abjure
abnegation
abrogate
abscond
abstruse
accede
accost
accretion
acumen
adamant
admonish
adumbrate
adverse
advocate
affluent
aggrandize
alacrity
alias
ambivalent
amenable
amorphous
anachronistic
anathema
annex
antediluvian
antiseptic
apathetic
antithesis
apocryphal
approbation
arbitrary
arboreal
arcane
archetypal
arrogate
ascetic
aspersion
assiduous
atrophy
bane
bashful
beguile
bereft
blandishment
bilk
bombastic
cajole
callous
calumny
camaraderie
candor
capitulate
carouse
carp
caucus
cavort
circumlocution
circumscribe
circumvent
clamor
cleave
cobbler
cogent
cognizant
commensurate
complement
compunction
concomitant
conduit
conflagration
congruity
connive
consign
constituent
construe
contusion
contrite
contentious
contravene
convivial
corpulence
covet
cupidity
dearth
debacle
debauch
debunk
defunct
demagogue
denigrate
derivative
despot
diaphanous
didactic
dirge
disaffected
discomfit
disparate
dispel
disrepute
divisive
dogmatic
dour
duplicity
duress
eclectic
edict
ebullient
egregious
elegy
elicit
embezzlement
emend
emollient
empirical
emulate
enervate
enfranchise
engender
ephemeral
epistolary
equanimity
equivocal
espouse
evanescent
evince
exacerbate
exhort
execrable
exigent
expedient
expiate
expunge
extraneous
extol
extant
expurgate
fallacious
fatuous
fetter
flagrant
foil
forbearance
fortuitous
fractious
garrulous
gourmand
grandiloquent
gratuitous
hapless
hegemony
heterogenous
iconoclast
idiosyncratic
impecunious
impetuous
impinge
impute
inane
inchoate
incontrovertible
incumbent
inexorable
inimical
injunction
inoculate
insidious
instigate
insurgent
interlocutor
intimation
inure
invective
intransigent
inveterate
irreverence
knell
laconic
largesse
legerdemain
libertarian
licentious
linchpin
litigant
maelstrom
maudlin
maverick
mawkish
maxim
mendacious
modicum
morass
mores
munificent
multifarious
nadir
negligent
neophyte
noisome
noxious
obdurate
obfuscate
obstreperous
officious
onerous
ostensible
ostracism
palliate
panacea
paradigm
pariah
partisan
paucity
pejorative
pellucid
penchant
penurious
pert
pernicious
pertinacious
phlegmatic
philanthropic
pithy
platitude
plaudit
plenitude
plethora
portent
potentate
preclude
predilection
preponderance
presage
probity
proclivity
profligate
promulgate
proscribe
protean
prurient
puerile
pugnacious
pulchritude
punctilious
quaint
quixotic
quandary
recalcitrant
redoubtable
relegate
remiss
reprieve
reprobate
rescind
requisition
rife
sanctimonious
sanguine
scurrilous
semaphore
serendipity
sobriety
solicitous
solipsism
spurious
staid
stolid
subjugate
surfeit
surreptitious
swarthy
tangential
tome
toady
torpid
travesty
trenchant
trite
truculent
turpitude
ubiquitous
umbrage
upbraid
utilitarian
veracity
vestige
vicissitude
vilify
virtuoso
vitriolic
vituperate
vociferous
wanton
winsome
yoke
zephyr
wily
tirade
EOD

cat < /words/.word_list | while IFS= read -r word
  do
    touch "/words/$word"
  done

# step 5
mkdir /permissions
cd /permissions
touch r_only owner_rwx_group_other_r group_rwx_owner_other_r other_rwx_owner_group_read all_rwx all_rw owner_rx_group_rw_other_wx owner_r_group_x_other_w fully_blocked
chmod "$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))" r_only
chmod "$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))" owner_rwx_group_other_r
chmod "$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))" group_rwx_owner_other_r
chmod "$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))" other_rwx_owner_group_read
chmod "$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))" all_rwx
chmod "$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))" all_rw
chmod "$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))" owner_rx_group_rw_other_wx
chmod "$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))" owner_r_group_x_other_w
chmod "$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))$(( $RANDOM % 8 ))" fully_blocked

# step 6
mkdir /dante
cat > /dante/divine_comedy_canto_1 << EOD
In the midway of this our mortal life,
I found me in a gloomy wood, astray
Gone from the path direct: and e'en to tell
It were no easy task, how savage wild
That forest, how robust and rough its growth,
Which to remember only, my dismay
Renews, in bitterness not far from death.
Yet to discourse of what there good befell,
All else will I relate discover'd there.
How first I enter'd it I scarce can say,
Such sleepy dullness in that instant weigh'd
My senses down, when the true path I left,
But when a mountain's foot I reach'd, where clos'd
The valley, that had pierc'd my heart with dread,
I look'd aloft, and saw his shoulders broad
Already vested with that planet's beam,
Who leads all wanderers safe through every way.
Then was a little respite to the fear,
That in my heart's recesses deep had lain,
All of that night, so pitifully pass'd:
And as a man, with difficult short breath,
Forespent with toiling, 'scap'd from sea to shore,
Turns to the perilous wide waste, and stands
At gaze; e'en so my spirit, that yet fail'd
Struggling with terror, turn'd to view the straits,
That none hath pass'd and liv'd. My weary frame
After short pause recomforted, again
I journey'd on over that lonely steep,
The hinder foot still firmer. Scarce the ascent
Began, when, lo! a panther, nimble, light,
And cover'd with a speckled skin, appear'd,
Nor, when it saw me, vanish'd, rather strove
To check my onward going; that ofttimes
With purpose to retrace my steps I turn'd.
The hour was morning's prime, and on his way
Aloft the sun ascended with those stars,
That with him rose, when Love divine first mov'd
Those its fair works: so that with joyous hope
All things conspir'd to fill me, the gay skin
Of that swift animal, the matin dawn
And the sweet season. Soon that joy was chas'd,
And by new dread succeeded, when in view
A lion came, 'gainst me, as it appear'd,
With his head held aloft and hunger-mad,
That e'en the air was fear-struck. A she-wolf
Was at his heels, who in her leanness seem'd
Full of all wants, and many a land hath made
Disconsolate ere now. She with such fear
O'erwhelmed me, at the sight of her appall'd,
That of the height all hope I lost. As one,
Who with his gain elated, sees the time
When all unwares is gone, he inwardly
Mourns with heart-griping anguish; such was I,
Haunted by that fell beast, never at peace,
Who coming o'er against me, by degrees
Impell'd me where the sun in silence rests.
While to the lower space with backward step
I fell, my ken discern'd the form one of one,
Whose voice seem'd faint through long disuse of speech.
When him in that great desert I espied,
"Have mercy on me!” cried I out aloud,
"Spirit! or living man! what e'er thou be!”
He answer'd: "Now not man, man once I was,
And born of Lombard parents, Mantuana both
By country, when the power of Julius yet
Was scarcely firm. At Rome my life was past
Beneath the mild Augustus, in the time
Of fabled deities and false. A bard
Was I, and made Anchises' upright son
The subject of my song, who came from Troy,
When the flames prey'd on Ilium's haughty towers.
But thou, say wherefore to such perils past
Return'st thou? wherefore not this pleasant mount
Ascendest, cause and source of all delight?”
"And art thou then that Virgil, that well-spring,
From which such copious floods of eloquence
Have issued?” I with front abash'd replied.
"Glory and light of all the tuneful train!
May it avail me that I long with zeal
Have sought thy volume, and with love immense
Have conn'd it o'er. My master thou and guide!
Thou he from whom alone I have deriv'd
That style, which for its beauty into fame
Exalts me. See the beast, from whom I fled.
O save me from her, thou illustrious sage!
"For every vein and pulse throughout my frame
She hath made tremble.” He, soon as he saw
That I was weeping, answer'd, "Thou must needs
Another way pursue, if thou wouldst 'scape
From out that savage wilderness. This beast,
At whom thou criest, her way will suffer none
To pass, and no less hindrance makes than death:
So bad and so accursed in her kind,
That never sated is her ravenous will,
Still after food more craving than before.
To many an animal in wedlock vile
She fastens, and shall yet to many more,
Until that greyhound come, who shall destroy
Her with sharp pain. He will not life support
By earth nor its base metals, but by love,
Wisdom, and virtue, and his land shall be
The land 'twixt either Feltro. In his might
Shall safety to Italia's plains arise,
For whose fair realm, Camilla, virgin pure,
Nisus, Euryalus, and Turnus fell.
He with incessant chase through every town
Shall worry, until he to hell at length
Restore her, thence by envy first let loose.
I for thy profit pond'ring now devise,
That thou mayst follow me, and I thy guide
Will lead thee hence through an eternal space,
Where thou shalt hear despairing shrieks, and see
Spirits of old tormented, who invoke
A second death; and those next view, who dwell
Content in fire, for that they hope to come,
Whene'er the time may be, among the blest,
Into whose regions if thou then desire
T' ascend, a spirit worthier than I
Must lead thee, in whose charge, when I depart,
Thou shalt be left: for that Almighty King,
Who reigns above, a rebel to his law,
Adjudges me, and therefore hath decreed,
That to his city none through me should come.
He in all parts hath sway; there rules, there holds
His citadel and throne. O happy those,
Whom there he chooses!" I to him in few:
"Bard! by that God, whom thou didst not adore,
I do beseech thee (that this ill and worse
I may escape) to lead me, where thou saidst,
That I Saint Peter's gate may view, and those
Who as thou tell'st, are in such dismal plight.”
Onward he mov'd, I close his steps pursu'd.
EOD

# step 9
mkdir /scripts
cat > /scripts/perfect_script.sh << EOD
#!/bin/bash

echo SCV good to go, sir.
sleep 2
echo Orders received.
sleep 3
echo Job\'s finished.
EOD

cat > /scripts/imperfect_script.sh << EOD
#!/bin/bash

echo SCV good to go, sir.
sleep 2
echo Yes sir?
sleep 2
echo Affirmative.
sleep 3
echo [ERROR] I cannot build it. Something is in the way > /dev/stderr
EOD

# step 10
mkdir /grep_challenges
cat > /grep_challenges/emails << EOD
In the heart of a bustling metropolis stood the magnificent
Arkadian Tower coolcat123@gmail.com, a marvel of modern
architecture that seemed to touch the sky. Its sleek glass
façade shimmered under the foodie456@outlook.com the sun, casting a
sunnyday456@yandex.com upon the city streets below. Inside, a
labyrinth of corridors led to state-of-the-art offices and
bustling conference rooms where ideas flowed like a river.
The city itself was a vibrant tapestry of diversity, with
people from all adventuresee789@outlook.com in a harmonious
dance. Street vendors peddled exotic foods, their tantalizing
aromas happygolucky321@hotmail.com, enticing passersby to indulge
in culinary delights. Musicians beachbum789@gmail.com with
their melodic tunes, while artists adorned walls with
breathtaking techguru123@yandex.com stories of hope and resilience.
Amidst the hustle and bustle, a sportsfanatic123@outlook.com society
known as the Shadow Syndicate thrived. They were the puppet
masters, pulling the strings behind closed doors,
orchestrating events to their advantage. Their operatives
were masters of disguise, blending seamlessly into the fabric
of society, manipulating politicians and businessmen alike to
further their clandestine agenda. Contact them at
oozyfox987@gmail.com. But not all was dark and mysterious.
In the outskirts of the city, fitnessjunkie567@yandex.com reserve known
as Serenity Valley offered respite from the chaos. Its lush
greenery and starrynight567@yandex.com provided solace to weary souls
seeking refuge from the concrete jungle. Here, hikers explored
winding trails, birdwatchers marveled at the colorful plumage
of rare species, and yoga enthusiasts found inner peace in
sunlit clearings. For more information, email
serenevalley@email.com. As night fell, musiclover789@hotmail.com
into a dazzling spectacle of lights. Neon signs flickered to
life, illuminating the nocturnal adventures that awaited. Clubs
fashionista123@outlook.com beats, dreamweaver654@yandex.com alive with
bodies swaying to the music. The aroma of freshly brewed coffee
wafted from trendy cafés (brewmasters@email.com), inviting night
owls to engage in animallover789@hotmail.com or simply indulge in
moments of quiet introspection. Amidst the vibrant nightlife,
you could also contact nightjive@email.com to discover hidden
gems or get recommendations for the hottest parties in town.
And for those seeking employment opportunities within the city,
jobseekers@email.com provided a platform to connect with
prospective employers. And so, curiousmind234@gmail.com, its heart
beating to the rhythm of human existence. It was a place where
dreams were bookworm456@hotmail.com forged, where the extraordinary
mingled with the wanderlust123@outlook.com life's tapestry was woven
with threads of joy, naturelover789@hotmail.com in between. For
artenthusiast123@gmail.com and community initiatives, feel free
to reach out to citylife@email.com.
EOD

cat > /grep_challenges/mac_addresses << EOD
The value of π (pi) d7:2b:8c:fa:6e:5f 3.14159. When
multiplied by the radius squared, a4:0e:1d:7b:cf:58
of a circle. For example, if the radius is 5 units,
76:fd:e4:9a:2c:5b be π * (5^2) = 3.14159 * 25 =
78.53975 square units. In algebra, solving equations
6a:8f:4e:1d:9b:0c working with numbers. For instance,
consider the equation 2x + 5 = 15. To isolate the
variable x, we can subtract 5 from c3:7a:f1:5e:b9:d8
2x + 5 - 5 = 15 - 5. 98:76:54:32:10 to 2x = 10.
Dividing both sides by 2, we find x = 5. When dealing
with fractions, numbers play a crucial role. For instance,
if we have the fraction 3/4, it 24:6b:dc:a8:0f:3e 3 parts
out of 4 equal parts. b1:5f:d8:43:c9:0e fraction by 2
gives us (3/4) * 2 = 6/4 =1.5. Thus, 1.5 is equivalent
to 3/4 when multiplied by 2. In geometry, the Pythagorean
theorem 12:34:567:89:0a:bc a right triangle, the square of
the length of the hypotenuse (the side opposite the
right angle) is equal to the sum of the squares of
the other two sides. zz:bb:cc:dd:ee:ff, if the two legs
of a right triangle have lengths 3 and 4 units, the
length of the :ab:cd:ef:12:34 found using the equation
c^2 = a^2 + b^2, where a = 3 and b = 4. Therefore,
c^2 = 3^2 + 4^2 = 9 + 16 = 25. Taking the square root of
both sides, we get c = √25 = 5. 5e:3d:ab:7c:90:f8 the
study of numbers, their properties, and 9d:2c:7f:50:1e:3b,
which are 00:1g:2b:3c:4d:5e fields and real-life
applications. Whether it's calculating the speed of an
object, analyzing 8a:e9:3d:f6:c2:a5, or solving complex
equations, numbers are at the heart of mathematical
concepts.
EOD

cat > /grep_challenges/website.html << EOD
<!DOCTYPE html><!-- This site was created in Webflow. https://www.webflow.com --><!-- Last Published: Tue Jun 13 2023 17:14:32 GMT+0000 (Coordinated Universal Time) -->
<html data-wf-domain="gloutir.com" data-wf-page="63c373576a006235361d32bd" data-wf-site="62af52cf612c974768d3d8c9">
<head>
<meta charset="utf-8"/>
<title>Design &amp; Development - Gloutir</title>
<meta content="A workhorse design and development studio that executes extremely creative ideas at a pace fast enough to keep the existential dread at bay." name="description"/>
<meta content="Gloutir - Design &amp; Development" property="og:title"/>
<meta content="A workhorse design and development studio." property="og:description"/>
<meta content="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62bc9378964e2e281604d3de_opengraph1.png" property="og:image"/>
<meta content="Gloutir - Design &amp; Development" property="twitter:title"/>
<meta content="A workhorse design and development studio." property="twitter:description"/>
<meta content="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62bc9378964e2e281604d3de_opengraph1.png" property="twitter:image"/>
<meta property="og:type" content="website"/>
<meta content="summary_large_image" name="twitter:card"/>
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="Webflow" name="generator"/>
<link href="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/css/gloutir.webflow.8b582fc5e.css" rel="stylesheet" type="text/css"/>
<link href="https://fonts.googleapis.com" rel="preconnect"/>
<link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous"/>
<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
<script type="text/javascript">WebFont.load({google: {families: ["Inconsolata:400,700"]}});</script>
<script type="text/javascript">!function (o, c) {
var n = c.documentElement, t = " w-mod-";
n.className += t + "js", ("ontouchstart" in o || o.DocumentTouch && c instanceof DocumentTouch) && (n.className += t + "touch")
}(window, document);</script>
<link href="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b6665f896b325e90f8aff7_Vectorarf%20(3).png" rel="shortcut icon" type="image/x-icon"/>
<link href="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66629c338e024e0618531_Vectorarf.png" rel="apple-touch-icon"/>
<!-- Memberstack -->
<script src="https://api.memberstack.io/static/memberstack.js?custom" data-memberstack-id="900f5ef16bfaf4b2736831738cf98559"></script>
<!-- Please keep this css code to improve the font quality-->
</head>
<body class="body-2">
<div data-collapse="medium" data-animation="over-left" data-duration="400" data-w-id="7f61f00a-1386-3b84-471d-34cbaf0fd510" data-easing="ease" data-easing2="ease" role="banner" class="navbar3_component w-nav">
<div class="navbar3_container">
<div class="navbar3_menu-button w-nav-button">
<div class="menu-icon3">
<div class="menu-icon3_line-top"></div>
<div class="menu-icon3_line-middle"></div>
<div class="menu-icon3_line-bottom"></div>
</div>
</div>
<nav role="navigation" class="navbar3_menu w-nav-menu">
<a href="#" class="navbar3_logo-link-menu w-nav-brand"><img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62af572752fa1b4ae8d7d418_gblack.svg" loading="lazy" alt="Gloutir Logo" width="80" class="image-7"/></a><a href="#plans" class="navbar3_link w-nav-link">Plans</a><a href="#services" class="navbar3_link w-nav-link">Services</a><a href="#work" class="navbar3_link w-nav-link">Work</a>
<div class="text-block-10">A workhorse design and development studio.<br/><br/><span class="text-span-11">Houston, Tx</span>
</div>
</nav>
<a href="/" aria-current="page" class="navbar3_logo-link w-nav-brand w--current"><img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62af572752fa1b4ae8d7d418_gblack.svg" loading="lazy" width="120" data-w-id="7f61f00a-1386-3b84-471d-34cbaf0fd52d" alt="Gloutir" class="navbar3_logo"/></a>
<div class="button-row is-button-row-center">
<a href="mailto:howdy@gloutir.com?subject=Howdy%20stranger" class="link-block-2 w-inline-block">
<div class="text-block-11">Let&#x27;s Talk</div>
</a>
<div class="text-block-12">
<a href="mailto:howdy@gloutir.com?subject=Work%20inquiry" class="link-3">Contact</a></div>
</div>
<div style="opacity:0" class="navbar3_menu-background"></div>
</div>
</div>
<header class="section-header75">
<div class="page-padding">
<div class="container-large">
<div class="header75_component">
<div class="header75_content">
<div class="text-align-center">
<div data-w-id="09847c68-a981-5461-f71a-46f014b0a36d" style="opacity:0" class="max-width-xlarge align-center">
<div class="margin-bottom margin-small z">
<div class="text-weight-semibold title">BOUTIQUE, IN-HOUSE</div>
<h1 class="heading">Design &amp; <br/>Development</h1></div>
<p class="text-size-medium-2">An <span class="text-span">award winning design and development studio</span>
that executes extremely creative ideas at a pace <span class="text-span-12">fast enough to keep the existential dread at bay.</span>
</p>
<div class="margin-top margin-medium">
<div class="button-row is-button-row-center _2 _34">
<a href="#scale" class="button pushable in-your-face-box left w-button"><span class="front">Learn More</span></a>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</header>
<section class="section-layout4">
<div class="page-padding boxed wee pookie">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba29da3d3d7a2f8c56e7c8_dAsset%202donut2.svg" loading="lazy" data-w-id="39c4c738-515a-fb33-9104-6e2eb7210afe" alt="Big 3d Donut" class="image-4"/>
</div>
</section>
<section class="section-layout4">
<div id="scale" class="page-padding boxed sdftry">
<div class="container-large">
<div class="padding-vertical padding-xhuge">
<div class="w-layout-grid layout4_component">
<div class="layout4_content">
<div class="margin-bottom margin-xsmall">
<div class="text-weight-semibold">ON TIME AND ON DEMAND</div>
</div>
<div class="margin-bottom margin-small df"><h2 class="heading-4 asd">Quickly Scale Your
Team</h2></div>
</div>
<p class="text-size-medium-3 cdg">Assembling a fully capable design and development team is
prohibitively expensive, difficult and time consuming. <span class="text-span-15">Gloutir helps you immediately scale your team overnight</span>,
allowing you to get back to focusing on... whatever it is you should be focusing on. </p></div>
</div>
</div>
</div>
</section>
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b62e5b8f51508f0b0d9e95_Frame%20(13).svg" loading="lazy" alt="" class="image-16"/>
<section class="section-layout4">
<div id="services" class="page-padding boxed spec">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba29da3d3d7a2f8c56e7c8_dAsset%202donut2.svg" loading="lazy" style="opacity:0" data-w-id="5e4fd1c6-9e7d-6bbf-d389-04e76406c40d" alt="" class="image-10"/>
<div class="text-block-7"><span class="text-span-7">Webflow Design &amp; Development</span>,
<span class="text-span-19">Brand Identity</span>, <span class="text-span-8">Wordpress Design &amp; Development</span>,
Advertising, <span class="text-span-9">UI / UX</span>, Agitprop, <span class="text-span-10">Existential Therapy</span>
</div>
<div class="w-layout-grid grid">
<div id="w-node-_85c3913e-ae5c-ecf4-af5c-4ecafbb28442-361d32bd" class="narlo">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c319347798834e3c9d87f9_wordpress.svg" loading="lazy" alt="Wordpress design and development"/>
</div>
<div id="w-node-_3b974b7e-af74-4978-99cb-6e5f83d3596b-361d32bd" class="narlo">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c31934f5f3e396cad33cd0_webflow.svg" loading="lazy" alt="Webflow design and development" class="image-18"/>
</div>
<div id="w-node-bbf4b97f-b516-0236-5a76-53dcbea8b8e6-361d32bd" class="narlo">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c31934d8698c199e2db338_woocommerce.svg" loading="lazy" alt="WooCommerce Support"/>
</div>
<div id="w-node-_60c066d6-76dd-227a-b173-4805ccff108d-361d32bd" class="narlo">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/640b6b3338ea4d4052c9a310_Frame%20(6).svg" loading="lazy" alt="cPanel" class="narlo"/>
</div>
<div id="w-node-_368068bd-d2f7-f844-ea19-9b85fbae42ac-361d32bd" class="narlo">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c31934070a0548bbbee6fc_cloudflare.svg" loading="lazy" alt="Cloudflare Support"/>
</div>
</div>
<div class="text-block-7 metad heading-2">We specialize in the design and development of your Webflow, Shopify
or WordPress powered website. Webhosting support through Webflow, WP Engine or equivalent. SEO best
practices with a focus on page speed optimization. Familiarity with MySQL, PHP, JavaScript, Cloudflare, and
WooCommerce.
</div>
<div class="w-layout-grid grid-3">
<div id="w-node-edb9c276-6d7c-0241-d400-7e63dfdedcec-361d32bd" class="text-block-16">Product Design</div>
<div id="w-node-f48ccdcc-1fe1-8280-fe41-9bf80a568445-361d32bd" class="text-block-16">User Interface</div>
<div id="w-node-_27dc86ba-b2b5-9f13-8fa2-066d50240876-361d32bd" class="text-block-16">User Experience</div>
<div id="w-node-df93120b-3f06-6dfd-0f1f-0c9d20f24731-361d32bd" class="text-block-16">Brand Identity</div>
<div id="w-node-_406c5175-1dcd-294d-1987-1f355a0d9c52-361d32bd" class="text-block-16">Interaction Design
</div>
<div id="w-node-b2ebca5d-dca0-9a5d-b4dc-aa852b94f355-361d32bd" class="text-block-16">WordPress Development
</div>
<div id="w-node-_08ed5e4f-8155-b784-eb98-233e255eeff2-361d32bd" class="text-block-16">Webflow Development
</div>
<div id="w-node-_5d0c6914-a586-2bad-4313-fbda18abf763-361d32bd" class="text-block-16">Shopify Development
</div>
<div id="w-node-_7aaaa158-26e1-2b52-3f1b-aac198a25912-361d32bd" class="text-block-16">Mobile Design</div>
<div id="w-node-fbeb63bc-cb7b-eb6e-1f71-cd999c088915-361d32bd" class="text-block-16">Advertising</div>
<div id="w-node-_10729db3-263e-73af-aad5-a7b76dbf8f26-361d32bd" class="text-block-16">Agitprop</div>
<div id="w-node-d10a12f3-6494-08c0-85a5-d832a45a22d8-361d32bd" class="text-block-16">
<span class="text-span-21">Existential Therapy</span></div>
</div>
</div>
</section>
<section class="section-layout4 socialproof">
<div class="page-padding boxed noop errr">
<section data-w-id="db4693ee-de7d-a253-ef0e-22e3802865b4" class="section-logo3-2">
<div class="padding-vertical padding-xxlarge">
<div class="logo3_component">
<div class="logo3_list">
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865b8-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66bd1b4569078ac361042_Ham-Cycles-1.svg" loading="lazy" alt="Ham Cycles" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865ba-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66c0703d9611e82b55d80_Frame-16.svg" loading="lazy" alt="REMAX" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865bc-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66bac7d8adbf3fc004c4c_Standard.svg" loading="lazy" alt="Ordinary Standard" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865be-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66baa4a319788c625c0bb_Roam-2.svg" loading="lazy" alt="Roam By Land" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865c0-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c0b2b9efce29131aca249d_rice%20(1).svg" loading="lazy" alt="Rice University" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865c2-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66baacfc6235b49a474c8_Absurdly.svg" loading="lazy" alt="Absurdly" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865c4-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66baa013435f4ad1a6841_SSI.svg" loading="lazy" alt="Society of Spiritual Incision " class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865c6-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66d2fe64009d7ad2ffa66_Frame-8.svg" loading="lazy" alt="Cemex" class="logo3_logo"/>
</div>
</div>
<div class="logo3_list">
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865c9-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66bd1b4569078ac361042_Ham-Cycles-1.svg" loading="lazy" alt="Ham Cycles" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865cb-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66c0703d9611e82b55d80_Frame-16.svg" loading="lazy" alt="REMAX" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865cd-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66bac7d8adbf3fc004c4c_Standard.svg" loading="lazy" alt="Ordinary Standard" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865cf-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66baa4a319788c625c0bb_Roam-2.svg" loading="lazy" alt="Roam By Land" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865d1-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c0b2b9efce29131aca249d_rice%20(1).svg" loading="lazy" alt="Rice University" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865d3-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66baacfc6235b49a474c8_Absurdly.svg" loading="lazy" alt="Absurdly" class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865d5-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66baa013435f4ad1a6841_SSI.svg" loading="lazy" alt="Society of Spiritual Incision " class="logo3_logo"/>
</div>
<div id="w-node-db4693ee-de7d-a253-ef0e-22e3802865d7-361d32bd" class="logo3_wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b66d2fe64009d7ad2ffa66_Frame-8.svg" loading="lazy" alt="Cemex" class="logo3_logo"/>
</div>
</div>
</div>
</div>
</section>
</div>
</section>
<section class="section-layout4">
<div id="work" class="page-padding boxed work pookie">
<div class="padding-vertical padding-xhuge">
<div class="gallery16_component">
<div data-delay="2000" data-animation="slide" class="gallery16_slider w-slider" data-autoplay="false" data-easing="ease-in-out" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="3" data-duration="500" data-infinite="false">
<div class="gallery16_mask w-slider-mask">
<div class="gallery16_slide w-slide">
<a href="#" class="gallery16_lightbox-link w-inline-block w-lightbox">
<div class="gallery16_image-wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe27a148b79fc347c7d_Frame-16.png" loading="lazy" sizes="(max-width: 479px) 72vw, (max-width: 767px) 64vw, (max-width: 991px) 32vw, 35vw" srcset="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe27a148b79fc347c7d_Frame-16-p-500.png 500w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe27a148b79fc347c7d_Frame-16-p-800.png 800w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe27a148b79fc347c7d_Frame-16.png 1343w" alt="Portfolio Project" class="gallery16_image"/>
</div>
<script type="application/json" class="w-json">{
"items": [],
"group": ""
}</script>
</a></div>
<div class="gallery16_slide w-slide">
<a href="#" class="gallery16_lightbox-link w-inline-block w-lightbox">
<div class="gallery16_image-wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe2180b42344a060c12_Frame-13.png" loading="lazy" sizes="(max-width: 479px) 72vw, (max-width: 767px) 64vw, (max-width: 991px) 32vw, 35vw" srcset="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe2180b42344a060c12_Frame-13-p-500.png 500w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe2180b42344a060c12_Frame-13-p-800.png 800w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe2180b42344a060c12_Frame-13-p-1080.png 1080w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe2180b42344a060c12_Frame-13.png 1343w" alt="Portfolio Project" class="gallery16_image"/>
</div>
<script type="application/json" class="w-json">{
"items": [],
"group": ""
}</script>
</a></div>
<div class="gallery16_slide w-slide">
<a href="#" class="gallery16_lightbox-link w-inline-block w-lightbox">
<div class="gallery16_image-wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba19e6d2f5f5654eb748d6_Group%201073.png" loading="lazy" sizes="(max-width: 479px) 72vw, (max-width: 767px) 64vw, (max-width: 991px) 32vw, 35vw" srcset="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba19e6d2f5f5654eb748d6_Group%201073-p-500.png 500w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba19e6d2f5f5654eb748d6_Group%201073-p-800.png 800w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba19e6d2f5f5654eb748d6_Group%201073-p-1080.png 1080w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba19e6d2f5f5654eb748d6_Group%201073.png 1343w" alt="Portfolio Project" class="gallery16_image"/>
</div>
<script type="application/json" class="w-json">{
"items": [],
"group": ""
}</script>
</a></div>
<div class="gallery16_slide w-slide">
<a href="#" class="gallery16_lightbox-link w-inline-block w-lightbox">
<div class="gallery16_image-wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe203e60a15a548a2ca_Frame-14.png" loading="lazy" sizes="(max-width: 479px) 72vw, (max-width: 767px) 64vw, (max-width: 991px) 32vw, 35vw" srcset="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe203e60a15a548a2ca_Frame-14-p-500.png 500w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe203e60a15a548a2ca_Frame-14-p-800.png 800w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe203e60a15a548a2ca_Frame-14-p-1080.png 1080w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe203e60a15a548a2ca_Frame-14.png 1343w" alt="Portfolio Project" class="gallery16_image"/>
</div>
</a></div>
<div class="gallery16_slide w-slide">
<a href="#" class="gallery16_lightbox-link w-inline-block w-lightbox">
<div class="gallery16_image-wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b7601f8c56f54bce04a5d8_Frame%2019%20(3)%20(1).png" loading="lazy" sizes="(max-width: 479px) 72vw, (max-width: 767px) 64vw, (max-width: 991px) 32vw, 35vw" srcset="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b7601f8c56f54bce04a5d8_Frame%2019%20(3)%20(1)-p-500.png 500w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b7601f8c56f54bce04a5d8_Frame%2019%20(3)%20(1)-p-800.png 800w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b7601f8c56f54bce04a5d8_Frame%2019%20(3)%20(1)-p-1080.png 1080w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b7601f8c56f54bce04a5d8_Frame%2019%20(3)%20(1).png 1343w" alt="Portfolio Project" class="gallery16_image"/>
</div>
</a></div>
<div class="gallery16_slide w-slide">
<a href="#" class="gallery16_lightbox-link w-inline-block w-lightbox">
<div class="gallery16_image-wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba1eb4e3ca2a76c5dab724_Mask%20group%20(4)%20(1).png" loading="lazy" sizes="(max-width: 479px) 72vw, (max-width: 767px) 64vw, (max-width: 991px) 32vw, 35vw" srcset="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba1eb4e3ca2a76c5dab724_Mask%20group%20(4)%20(1)-p-500.png 500w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba1eb4e3ca2a76c5dab724_Mask%20group%20(4)%20(1)-p-800.png 800w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba1eb4e3ca2a76c5dab724_Mask%20group%20(4)%20(1).png 1343w" alt="Portfolio Project" class="gallery16_image"/>
</div>
</a></div>
<div class="gallery16_slide w-slide">
<a href="#" class="gallery16_lightbox-link w-inline-block w-lightbox">
<div class="gallery16_image-wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe1a4fdc455f5205a59_Frame-17.png" loading="lazy" sizes="(max-width: 479px) 72vw, (max-width: 767px) 64vw, (max-width: 991px) 32vw, 35vw" srcset="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe1a4fdc455f5205a59_Frame-17-p-500.png 500w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe1a4fdc455f5205a59_Frame-17-p-800.png 800w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b4afe1a4fdc455f5205a59_Frame-17.png 1343w" alt="Portfolio Project" class="gallery16_image"/>
</div>
<script type="application/json" class="w-json">{
"items": [],
"group": ""
}</script>
</a></div>
<div class="gallery16_slide w-slide">
<a href="#" class="gallery16_lightbox-link w-inline-block w-lightbox">
<div class="gallery16_image-wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c34e24d95819a1cb9223f1_aef%20(1).png" loading="lazy" sizes="(max-width: 479px) 72vw, (max-width: 767px) 64vw, (max-width: 991px) 32vw, 35vw" srcset="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c34e24d95819a1cb9223f1_aef%20(1)-p-500.png 500w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c34e24d95819a1cb9223f1_aef%20(1)-p-800.png 800w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c34e24d95819a1cb9223f1_aef%20(1)-p-1080.png 1080w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c34e24d95819a1cb9223f1_aef%20(1).png 1343w" alt="Portfolio Project" class="gallery16_image"/>
</div>
<script type="application/json" class="w-json">{
"items": [],
"group": ""
}</script>
</a></div>
<div class="gallery16_slide w-slide">
<a href="#" class="gallery16_lightbox-link w-inline-block w-lightbox">
<div class="gallery16_image-wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba207fcfc08449a665d0d2_work%20(1).png" loading="lazy" sizes="(max-width: 479px) 72vw, (max-width: 767px) 64vw, (max-width: 991px) 32vw, 35vw" srcset="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba207fcfc08449a665d0d2_work%20(1)-p-500.png 500w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba207fcfc08449a665d0d2_work%20(1)-p-800.png 800w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba207fcfc08449a665d0d2_work%20(1).png 1343w" alt="Portfolio Project" class="gallery16_image"/>
</div>
</a></div>
<div class="gallery16_slide w-slide">
<a href="#" class="gallery16_lightbox-link w-inline-block w-lightbox">
<div class="gallery16_image-wrapper">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c0748e57e0c58a079cce2c_Frame%2020%20(3)%20(1).png" loading="lazy" sizes="(max-width: 479px) 72vw, (max-width: 767px) 64vw, (max-width: 991px) 32vw, 35vw" srcset="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c0748e57e0c58a079cce2c_Frame%2020%20(3)%20(1)-p-500.png 500w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c0748e57e0c58a079cce2c_Frame%2020%20(3)%20(1)-p-800.png 800w, https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62c0748e57e0c58a079cce2c_Frame%2020%20(3)%20(1).png 1343w" alt="Portfolio Project" class="gallery16_image"/>
</div>
</a></div>
</div>
<div class="gallery16_arrow hide-mobile-landscape left w-slider-arrow-left">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62af52cf612c971f47d3d8fa_icon_slider-arrow-left.svg" loading="lazy" width="30" alt="Arrow Left"/>
</div>
<div class="gallery16_arrow hide-mobile-landscape w-slider-arrow-right">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62af52cf612c973633d3d905_icon_slider-arrow-right.svg" loading="lazy" width="30" alt="Arrow Right"/>
</div>
<div class="gallery16_slide-nav w-slider-nav w-slider-nav-invert w-round"></div>
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b7e2fe4674e444a0268e3f_Group%20(4).svg" loading="lazy" alt="" width="20" class="image-8"/>
</div>
</div>
<div class="container w-container"><a href="https://zchry.org/" target="_blank" class="button-2 w-button">View
Complete Portfolio →</a></div>
</div>
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba29da3d3d7a2f8c56e7c8_dAsset%202donut2.svg" loading="lazy" alt="" class="image-10 wertw"/>
</div>
</section>
<section class="section-layout4">
<div class="page-padding boxed theend rty">
<div class="container-large">
<div class="padding-vertical padding-xhuge">
<div class="margin-bottom margin-large">
<div id="plans" class="text-align-center">
<div class="max-width-large align-center">
<div class="margin-bottom margin-small pricer2"><h2 class="heading-6 pricer">
<span>The</span> Plans</h2></div>
<p class="text-size-medium-3 _232">Transparent, flexible retainer options to suit your
needs. </p>
<p class="text-size-medium-3 _232 asdfh">One-time payment options are available for one off
projects.</p></div>
<div class="w-layout-grid pricing25_plans">
<div class="pricing25_plan">
<div class="pricing25_content">
<div class="margin-bottom margin-tiny">
<div class="heading-xsmall">Just<br/>Design</div>
</div>
<div class="pricing25_divider"></div>
<div class="text-block priceboxer">Your own personal design studio. Ideal for
companies with ongoing design collateral needs from web, print to social media.
</div>
<div class="margin-vertical margin-xxsmall">
<div class="heading-xxlarge price">$4,500
<span class="heading-medium">/ mo</span></div>
<div class="pricing25_divider"></div>
</div>
<div class="margin-top margin-medium">
<a href="https://buy.stripe.com/7sI8ABgD89dL2A0bIM" class="button pushable in-your-face-box wop w-button"><span class="front">Sign Up</span></a>
</div>
</div>
</div>
<div class="pricing25_plan">
<div class="pricing25_content">
<div class="margin-bottom margin-tiny">
<div class="heading-xsmall">Design &amp; <br/>Development</div>
</div>
<div class="pricing25_divider"></div>
<div class="text-block priceboxer">A turnkey design and development solution, ideal
for startups and companies looking to grow. You focus on your products, we’ll
handle the rest.
</div>
<div class="margin-vertical margin-xxsmall">
<div class="heading-xxlarge price">
$5,500<span class="heading-medium"> / mo</span></div>
<div class="pricing25_divider"></div>
</div>
<div class="margin-top margin-medium">
<a data-ms-price:add="" href="https://buy.stripe.com/aEU2cd4UqblT8Yo28d" class="button pushable in-your-face-box wop w-button"><span class="front">Sign Up</span></a>
</div>
</div>
</div>
<div class="pricing25_plan">
<div class="pricing25_content">
<div class="margin-bottom margin-tiny">
<div class="heading-xsmall">The<br/>Weekly</div>
</div>
<div class="pricing25_divider"></div>
<div class="text-block priceboxer">A design and development solution billed weekly.
Ideal for projects with a smaller scope needing to launch quickly.
</div>
<div class="margin-vertical margin-xxsmall">
<div class="heading-xxlarge price">
$2,000<span class="heading-medium"> / wk</span></div>
<div class="pricing25_divider"></div>
</div>
<div class="margin-top margin-medium">
<a href="https://buy.stripe.com/14k189dqWahP0rS8wx" class="button pushable in-your-face-box wop w-button"><span class="front">Sign Up</span></a>
</div>
</div>
</div>
<div class="pricing25_plan narpo">
<div class="pricing25_content">
<div class="margin-bottom margin-tiny">
<div class="heading-xsmall smallery">1 Space Available</div>
</div>
</div>
</div>
<div class="pricing25_plan narpo">
<div class="pricing25_content">
<div class="margin-bottom margin-tiny">
<div class="heading-xsmall smallery">1 Space Available</div>
</div>
</div>
</div>
<div class="pricing25_plan narpo">
<div class="pricing25_content">
<div class="margin-bottom margin-tiny">
<div class="heading-xsmall smallery">0 Spaces Available</div>
</div>
</div>
</div>
</div>
<div class="w-layout-grid layout4_component nart">
<div class="layout4_content">
<div class="margin-bottom margin-xsmall">
<div class="text-weight-semibold">small by design</div>
</div>
<div class="margin-bottom margin-small"><h2 class="heading-4">High Standards,<br/>High
Quality</h2></div>
</div>
<p class="text-size-medium-3 cdg">Delivering the highest quality of work means keeping our
focus very narrow. To that end, we&#x27;ve placed a hard cap on how many clients we will
work with simultaneously. <span class="text-span-18">Our goal is to provide an amazing service for a select group of great clients.</span>
</p></div>
</div>
</div>
</div>
</div>
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/63ba29da3d3d7a2f8c56e7c8_dAsset%202donut2.svg" loading="lazy" data-w-id="1a5c465d-0c4f-58f1-79e9-34b98dca8924" alt="" class="image-10 speclly"/>
</div>
</section>
<section class="section-layout4">
<div class="page-padding boxed spec asdg pookie">
<img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62be84ad8c2d68fa28188038_logo%20black%20(2).svg" loading="lazy" alt="Gloutir Logo" class="nmanar"/>
</div>
</section>
<section class="section-pricing25 bigcta">
<a id="holler" href="mailto:howdy@gloutir.com?subject=Hey%20uhhh%2C%20whats%20up." class="page-padding big bigcta w-inline-block">
<div class="container-large">
<div class="padding-vertical padding-xhuge">
<div class="margin-bottom margin-large">
<div class="text-align-center">
<div class="max-width-large align-center">
<div class="margin-bottom margin-small pricer2"><h2 class="heading-6 pricer _456657">Book A
Call</h2></div>
<p class="text-size-medium-3 _232">We can talk about how big this button is.</p></div>
</div>
</div>
</div>
</div>
</a></section>
<div class="footer4_component">
<div class="page-padding">
<div class="container-large">
<div class="padding-vertical padding-xxlarge">
<div class="padding-bottom padding-xxlarge">
<div class="w-layout-grid footer4_top-wrapper">
<a href="/" id="w-node-bd2aa593-078b-6cf0-5704-fb9f0c22c89f-361d32bd" aria-current="page" class="footer4_logo-link w-nav-brand w--current"><img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62af572752fa1b4ae8d7d418_gblack.svg" loading="lazy" alt="Gloutir Logo" height="" class="image-15"/></a>
<div class="w-layout-grid footer4_link-list">
<a id="w-node-bd2aa593-078b-6cf0-5704-fb9f0c22c8a2-361d32bd" href="https://www.youtube.com/watch?v=JkZUU_NbYok" target="_blank" class="footer4_link">Made
With</a><img src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/62b733ef70c1727616efc73b_hat-cowboy-solid.svg" loading="lazy" data-w-id="bd2aa593-078b-6cf0-5704-fb9f0c22c8a4" width="32" id="w-node-bd2aa593-078b-6cf0-5704-fb9f0c22c8a4-361d32bd" alt="Cowboy Hat"/><a id="w-node-bd2aa593-078b-6cf0-5704-fb9f0c22c8a5-361d32bd" href="https://www.youtube.com/watch?v=_iTfoFLz5nA" target="_blank" class="footer4_link">In
Houston, Tx</a></div>
<div id="w-node-bd2aa593-078b-6cf0-5704-fb9f0c22c8a7-361d32bd" class="w-layout-grid footer4_social-list">
<a href="https://instagram.com/gloutir" target="_blank" class="footer4_social-link w-inline-block">
<div class="social-icon w-embed">
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M16 3H8C5.23858 3 3 5.23858 3 8V16C3 18.7614 5.23858 21 8 21H16C18.7614 21 21 18.7614 21 16V8C21 5.23858 18.7614 3 16 3ZM19.25 16C19.2445 17.7926 17.7926 19.2445 16 19.25H8C6.20735 19.2445 4.75549 17.7926 4.75 16V8C4.75549 6.20735 6.20735 4.75549 8 4.75H16C17.7926 4.75549 19.2445 6.20735 19.25 8V16ZM16.75 8.25C17.3023 8.25 17.75 7.80228 17.75 7.25C17.75 6.69772 17.3023 6.25 16.75 6.25C16.1977 6.25 15.75 6.69772 15.75 7.25C15.75 7.80228 16.1977 8.25 16.75 8.25ZM12 7.5C9.51472 7.5 7.5 9.51472 7.5 12C7.5 14.4853 9.51472 16.5 12 16.5C14.4853 16.5 16.5 14.4853 16.5 12C16.5027 10.8057 16.0294 9.65957 15.1849 8.81508C14.3404 7.97059 13.1943 7.49734 12 7.5ZM9.25 12C9.25 13.5188 10.4812 14.75 12 14.75C13.5188 14.75 14.75 13.5188 14.75 12C14.75 10.4812 13.5188 9.25 12 9.25C10.4812 9.25 9.25 10.4812 9.25 12Z" fill="CurrentColor"/>
</svg>
</div>
</a><a href="https://twitter.com/gloutir" target="_blank" class="footer4_social-link w-inline-block">
<div class="social-icon w-embed">
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M20.9728 6.7174C20.5084 7.33692 19.947 7.87733 19.3103 8.31776C19.3103 8.47959 19.3103 8.64142 19.3103 8.81225C19.3154 11.7511 18.1415 14.5691 16.0518 16.6345C13.962 18.6999 11.1312 19.8399 8.19405 19.7989C6.49599 19.8046 4.81967 19.4169 3.29642 18.6661C3.21428 18.6302 3.16131 18.549 3.16162 18.4593V18.3604C3.16162 18.2313 3.26623 18.1267 3.39527 18.1267C5.06442 18.0716 6.67402 17.4929 7.99634 16.4724C6.48553 16.4419 5.12619 15.5469 4.5006 14.1707C4.46901 14.0956 4.47884 14.0093 4.52657 13.9432C4.57429 13.8771 4.653 13.8407 4.73425 13.8471C5.19342 13.8932 5.65718 13.8505 6.1002 13.7212C4.43239 13.375 3.17921 11.9904 2.99986 10.2957C2.99349 10.2144 3.02992 10.1357 3.096 10.0879C3.16207 10.0402 3.24824 10.0303 3.32338 10.062C3.77094 10.2595 4.25409 10.3635 4.74324 10.3676C3.28184 9.40846 2.65061 7.58405 3.20655 5.92622C3.26394 5.76513 3.40181 5.64612 3.5695 5.61294C3.73718 5.57975 3.90996 5.63728 4.02432 5.76439C5.99639 7.86325 8.70604 9.11396 11.5819 9.25279C11.5083 8.95885 11.4721 8.65676 11.4741 8.35372C11.501 6.76472 12.4842 5.34921 13.9634 4.76987C15.4425 4.19054 17.1249 4.56203 18.223 5.71044C18.9714 5.56785 19.695 5.31645 20.3707 4.96421C20.4202 4.93331 20.483 4.93331 20.5325 4.96421C20.5634 5.01373 20.5634 5.07652 20.5325 5.12604C20.2052 5.87552 19.6523 6.50412 18.9509 6.92419C19.5651 6.85296 20.1685 6.70807 20.7482 6.49264C20.797 6.45942 20.8611 6.45942 20.9099 6.49264C20.9508 6.51134 20.9814 6.54711 20.9935 6.59042C21.0056 6.63373 20.998 6.68018 20.9728 6.7174Z" fill="CurrentColor"/>
</svg>
</div>
</a><a href="https://www.linkedin.com/in/zchry/" target="_blank" class="footer4_social-link w-inline-block">
<div class="social-icon w-embed">
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
<path fill-rule="evenodd" clip-rule="evenodd" d="M5 3H19C20.1046 3 21 3.89543 21 5V19C21 20.1046 20.1046 21 19 21H5C3.89543 21 3 20.1046 3 19V5C3 3.89543 3.89543 3 5 3ZM8 18C8.27614 18 8.5 17.7761 8.5 17.5V10.5C8.5 10.2239 8.27614 10 8 10H6.5C6.22386 10 6 10.2239 6 10.5V17.5C6 17.7761 6.22386 18 6.5 18H8ZM7.25 9C6.42157 9 5.75 8.32843 5.75 7.5C5.75 6.67157 6.42157 6 7.25 6C8.07843 6 8.75 6.67157 8.75 7.5C8.75 8.32843 8.07843 9 7.25 9ZM17.5 18C17.7761 18 18 17.7761 18 17.5V12.9C18.0325 11.3108 16.8576 9.95452 15.28 9.76C14.177 9.65925 13.1083 10.1744 12.5 11.1V10.5C12.5 10.2239 12.2761 10 12 10H10.5C10.2239 10 10 10.2239 10 10.5V17.5C10 17.7761 10.2239 18 10.5 18H12C12.2761 18 12.5 17.7761 12.5 17.5V13.75C12.5 12.9216 13.1716 12.25 14 12.25C14.8284 12.25 15.5 12.9216 15.5 13.75V17.5C15.5 17.7761 15.7239 18 16 18H17.5Z" fill="CurrentColor"/>
</svg>
</div>
</a></div>
</div>
</div>
</div>
</div>
</div>
</div>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=62af52cf612c974768d3d8c9" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://uploads-ssl.webflow.com/62af52cf612c974768d3d8c9/js/webflow.d67d20f78.js" type="text/javascript"></script>
</body>
</html>
EOD

# step 11
mkdir /awk_challenges
cat > /awk_challenges/drivers << EOD
Driver              Nationality  Team                               Wins  Podiums  Pole_Positions  Championships
Lewis Hamilton      British      Mercedes-AMG Petronas              100   189      104             7
Sebastian Vettel    German       Aston Martin Cognizant F1 Team     53    122      57              4
Max Verstappen      Dutch        Red Bull Racing Honda              15    52       10              -
Valtteri Bottas     Finnish      Mercedes-AMG Petronas              10    64       18              -
Charles Leclerc     Monégasque   Scuderia Ferrari                   2     12       7               -
Sergio Pérez        Mexican      Red Bull Racing Honda              3     11       -               -
Daniel Ricciardo    Australian   McLaren Mercedes                   8     32       3               -
Pierre Gasly        French       Scuderia AlphaTauri                1     2        -               -
Esteban Ocon        French       Alpine F1 Team                     1     2        -               -
Lando Norris        British      McLaren Mercedes                   -     7        -               -
Carlos Sainz Jr.    Spanish      Scuderia Ferrari                   -     11       -               -
Fernando Alonso     Spanish      Alpine F1 Team                     32    97       22              2
George Russell      British      Mercedes-AMG Petronas              -     -        -               -
Kimi Räikkönen      Finnish      Alfa Romeo Racing ORLEN            21    103      18              1
Antonio Giovinazzi  Italian      Alfa Romeo Racing ORLEN            -     -        -               -
Mick Schumacher     German       Uralkali Haas F1 Team              -     -        -               -
Nikita Mazepin      Russian      Uralkali Haas F1 Team              -     -        -               -
Yuki Tsunoda        Japanese     Scuderia AlphaTauri                -     2        -               -
Nicholas Latifi     Canadian     Williams Racing                    -     -        -               -
Callum Ilott        British      Alfa Romeo Racing ORLEN            -     -        -               -
Guanyu Zhou         Chinese      Alpine F1 Team                     -     -        -               -
EOD

# step 11
mkdir /env
cat > /env/variables.env << EOD
ENABLE_FEATURE_C=true
API_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9
PROXY_PORT=8081
SESSION_COOKIE_NAME=myapp_session
DATABASE_MAX_CONNECTIONS=20
SERVER_PORT=8080
DATABASE_URL=jdbc:mysql://localhost:3306/db
CORS_ALLOWED_ORIGIN=*
LOG_FILE=/var/log/app.log
LOG_FILE=/var/log/myapp.log
BACKUP_RETENTION=30
FILE_STORAGE_PATH=/var/files
TEMP_DIR=/tmp
LOG_ROLLING_SIZE=100000000
ENABLE_FEATURE_A=true
AWS_ACCESS_KEY_ID=t9NHm5AzB2!v!N
MAX_REQUESTS=10000
MONITORING_PORT=8081
DATABASE_POOL_TIMEOUT=30000
AUTHENTICATION_LDAP_BASE_DN=ou=users,dc=example,dc=com
DEBUGGER_PORT=3000
API_TIMEOUT=30
ENABLE_SSL=true
LOG_LEVEL=debug
ENABLE_MONITORING=true
SECURITY_KEY=SeCrEtKeY
AWS_SECRET_ACCESS_KEY=SEBX%8aoN5YNqs
DATABASE_DRIVER=com.mysql.jdbc.Driver
ENABLE_CORS=true
MAX_USERS=1000
DEFAULT_THEME=dark
AUTHENTICATION_PROVIDER=ldap
MAX_THREADS=4
QUEUE_NAME=my-queue
HOME_DIR=/home/user
AUTHENTICATION_LDAP_URL=ldap://ldap.example.com
API_KEY=abcdef123456
DEBUG_MODE=true
SESSION_STORE_PORT=6379
CACHE_TIMEOUT=300
LOG_ROLLING=true
DATABASE_PASSWORD=dbpass
API_VERSION=v2
MONITORING_INTERVAL=60
APP_NAME=MyApp
MAX_ITEMS=50
ENABLE_NOTIFICATIONS=false
RATE_LIMIT_BLOCK_DURATION=3600
SESSION_COOKIE_EXPIRY=3600
MIN_ITEMS=10
PROXY_HOST=proxy.example.com
CACHE_PORT=6379
MAX_UPLOAD_SIZE=10485760
SMTP_USERNAME=user@example.com
DATABASE_USERNAME=dbuser
DATABASE_NAME=mydb
LOG_LEVEL=info
S3_BUCKET_NAME=my-bucket
RATE_LIMIT_THRESHOLD=100
RATE_LIMIT_INTERVAL=60
AWS_REGION=us-west-2
LOG_DIRECTORY=/var/log/app
SESSION_STORE_TYPE=redis
FILE_MAX_SIZE=5242880
SESSION_TIMEOUT=1800
SESSION_STORE_HOST=redis.example.com
CACHE_SERVER=cache.example.com
SEARCH_INDEX_NAME=my-index
USERNAME=JohnDoe
SEARCH_API_KEY=asdfghjkl1234567890
MAX_CONNECTIONS=10
ENVIRONMENT=production
BACKUP_FREQUENCY=daily
PASSWORD=SEBX%8aoN5YNqs
DEFAULT_LOCALE=en_US
BACKUP_PATH=/var/backup
ANALYTICS_KEY=ABCDEF1234567890
QUEUE_URL=http://localhost:5000
ENABLE_AUTHENTICATION=true
SSL_CERT_FILE=/etc/ssl/cert.pem
DEFAULT_LANGUAGE=en
ENABLE_FEATURE_B=false
SEARCH_API_URL=http://search.example.com
SEARCH_TIMEOUT=5000
CORS_ALLOWED_METHODS=GET,POST,PUT,DELETE
DATA_DIR=/var/data
SECRET_KEY=42@OpqR!
ENABLE_ANALYTICS=true
ENABLE_DEBUGGER=false
SESSION_STORE_PASSWORD=G4H^pdCtRkbuJT
ENABLE_LOGGING=true
ENABLE_CACHING=true
SEARCH_RESULT_LIMIT=100
SMTP_SERVER=smtp.example.com
ENABLE_RATE_LIMITING=true
LOG_ENABLED=true
ENABLE_SECURITY=true
SMTP_PASSWORD=F5H#pdTcRkbuJT
CORS_ALLOWED_HEADERS=Content-Type,Authorization
EOD