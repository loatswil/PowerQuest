$Char = @{};$Char.Weapon = @{};$Char.Helmet = @{};$Char.Shoulders = @{};$Char.Gloves = @{}
$Char.Chest = @{};$Char.Arms = @{};$Char.Legs = @{};$Char.Feet = @{}
$Char.Weapon = @{}
$Monster1 = @{}
$Adverbs = @();$Actions = @();$Apps = @();$Objects = @();$Verbs = @()
$Mods = @();$Mats = @();$Items = @();$Bonuses = @();$Gear = @();$Alignments = @();$Helmets = @()
$Phrases = @();$Adjectives = @();$MonsterRaces = @();$Mobs = @();$MobHits = @();$YourHits = @()
$MobHits = @('hits','tickles','pokes','bonks','slaps','crushes','stabs','defrags',
    'punches')
$YourHits = @('hit','smash','bonk','slap','crush','stab','reboot','compile','defrag',
    'punch','destroy','obliterate')
$Phrases = @('with a power cord','in your eye','on the back of your head','with a USB cable',
    'with an old keyboard','with a terminal','in the face','really hard')
$Adjectives = @('digital','electronic','green','smoke-stained','plastic',
    'grungy','virtual','cloud-based','shiny','dingy','brand new','state-of-the-art')
$MonsterRaces = @('IBM','Compaq','Dell','Apple','Aruba','Juniper','Cisco',
    'Gateway 2000','Mac','Microtech','Logitech','Polycom','Poly')
$Mobs = @('keyboard','mouse','SCSI cable','cell phone','iPad','switch',
    'router','PC','laptop','monitor','UPS','DOT matrix printer','laser printer',
	'flatbed scanner','backup tape','phone')
$Alignments = @('Lawful Good - White Hat','Neutral Good - Cream Hat','Chaotic Good - Beige Hat',
    'Lawful Neutral - Light-Grey Hat','True Neutral - Grey Hat','Chaotic Neutral - Dark-Grey Hat',
    'Lawful Evil - Light-Black Hat','Neutral Evil - Black Hat','Chaotic Evil - Suicide Hat') 
$Verbs = @('compact','extract','hack','defrag','extend','request','update','upgrade','package','research',
    'prepare','disable','search','calculate','manage','format','deploy','delete','restore','correlate','patch',
    'compile')
$Adverbs = @('quickly','painstakingly','randomly','slowly','literally','boldly','bravely','brightly',
    'cheerfully','deftly','devotedly','eagerly','elegantly','faithfully','gleefully','gracefully',
    'happily','honestly','innocently','kindly','merrily','obediently','perfectly','politely','powerfully',
    'safely','victoriously','warmly','vivaciously','achingly','angrily','annoyingly','anxiously','badly',
    'boastfully','dejectedly','enviously','foolishly','hopelessly','irritably','jealously','joylessly',
    'lazily','miserably','morosely','obnoxiously','painfully','poorly','rudely','sadly','selfishly','terribly',
    'unhappily','wearily','finally','frequently','generally','nightly','normally','occasionally','regularly',
    'still','briskly','casually','expeditiously','fleetingly','gradually','haltingly','hastily','hurriedly',
    'immediately','instantly','languidly','lazily','leisurely','promptly','quickly','rapidly','slowly','speedily',
    'swiftly','tediously','audibly','deafeningly','ear-splittingly','emphatically','faintly','inaudibly','loudly',
    'noiselessly','noisily','quietly','resonantly','resoundingly','shrilly','silently','softly','soundlessly',
    'thunderously','uproariously','vociferously','weakly','accidentally','awkwardly','blindly','coyly','crazily',
    'cruelly','defiantly','deliberately','doubtfully','dramatically','dutifully','enormously','excitedly','hungrily',
    'madly','mortally','mysteriously','nervously','seriously','shakily','restlessly','solemnly','sternly',
    'unexpectedly','wildly')
$Actions = @('compacting','extracting','hacking','defragging','extending','requesting','updating','upgrading',
    'packaging','researching','preparing','disabling','searching','calculating','managing','formatting','deploying',
    'deleting','restoring','correlating','patching')
$Apps = @('Net Neutrality','Big Data','Data Mining','Actionable Analytics','Artificial Intelligence (AI)',
    'Machine Learning','Personalization','Voice Recognition','Chatbots','Augmented Reality (AR)','Virtual Reality (VR)',
    'Robotics','Smart Industry 4.0','Internet Of Things (IoT)','Quantum Computing','Blockchain','Technological Unemployment',
    'Multi-Factor Authentication','Everything-as-a-Service','PowerBI','Artificial Inteligence','DUO','Blackboard',
    'Identity Management','Canvas','DNS','Skype','Active Directory','the network','the cloud',
    'SharePoint','Teams','Azure','the firewall','Bitlocker','Exchange','the portal','the CMDB')
$Objects = @('the database','directories','servers','websites','folders','email','users','phone numbers','hard drives',
    'floppy disks','IP Addresses','software','firmware','memory','firewall rules','routing tables','fiber optics','NIC cards',
    'CAT5 cables','spreadsheets')
$Mods = @('deadly','magical','digital','electronic','binary',
    'caffeinated')
$Mats = @('wooden','leather','golden','platinum','silver','iron','mithril','emerald','ruby','cloud based','high tech','digital',
    'diamond','steel','bronze','copper','saphire','laser','virtual','cyber')
$Weapons = @('pen','pencil','pager','cell phone','USB stick','hard drive','CAT-5 cable','power cord','web cam','mouse pad',
    'mouse','compact disk','floppy disk','halberd','cutlass','axe','rock')
$Helmets = @('fedora','visor','goggles','skull cap','baseball hat','trucker hat','pith helmet','VR goggles',
    'scarf','coif','mask','beanie','cowboy hat','beret','top hat','turban')
$Shoulders = @('spaulders','pauldrons','wings','shoulders','shoulder pads','back-brace','body camera',
    'cloak','jet pack','backpack','parachute','cape')
$Gloves = @('gauntlets','gloves','cuffs','braclet','handwarmers','riding gloves','boxing gloves','haptic gloves',
    'prosthetic finger','ring','pinkie ring','mouse')
$Chests = @('chest guard','t-shirt','hoodie','tuxedo coat','tail coat','lab coat','waist coat','windbreaker','battery pack',
    'cuirass','hauberk','blazer','parka','fur coat','rain coat','puffy jacket','overcoat')
$Arms = @('vambraces','bracers','arm guards','compression sleeves','solar arm bands',
    'cuff links')
$Legs = @('greaves','jeans','compression socks','leg warmers','bell bottoms','cargo pants','leggings','sweat pants',
    'tube socks','money clip','knee brace')
$Feet = @('Altras','Nikes','sabatons','cleets','sandals','crocs','Lone Peak 5s','sneakers','flip flops','moccasins','snow boots',
    'boots','hiking boots','track shoes','Ugg Boots')
$Shields = @('keyboard','monitor','tape reel',
    'recycle bin','mousepad','cabinet door','CPU fan')
$Bonuses = @('of greping','of editing','of application slaying','of Cloud slaying','of database monitoring',
    'of spreadsheet sorting','of log searching','of portal slaying','of Azure','of ticket closing','of event parsing')
$Classes = @('Druid','Mage','Warrior',
    'Ranger','Monk','Cleric','Paladin')
$Races = @('Human','Elf','Dwarf','Hobbit',
    'Orc','Goblin')

function Randomize-List {
   Param(
     [array]$InputList
   )
   return $InputList | Get-Random -Count 1
}

function Show-Progress {
    param (
        [string]$text='Waiting',
        [int]$count=3
        ) 
    Write-Host "$text" -nonewline
    for($i=1;$i -le $count;$i++) {
        Write-Host "." -NoNewline
        Start-Sleep -Milliseconds 300
        }
}

function d4 {
    Get-Random -Minimum 1 -Maximum 5
    }

function d6 {
    Get-Random -Minimum 1 -Maximum 7
    }

function d8 {
    Get-Random -Minimum 1 -Maximum 9
    }

function d12 {
    Get-Random -Minimum 1 -Maximum 13
    }

function d20 {
    Get-Random -Minimum 1 -Maximum 21
    }

Function Get-Title {
    Param(
         [int]$InputLevel
       )
    Switch ($InputLevel) {
    {$_ -in 1..4} {$Title = "Help Desk Monkey"}
    {$_ -in 5..8} {$Title = "System Administrator"}
    {$_ -in 9..12} {$Title = "IT Engineer"}
    {$_ -in 13..16} {$Title = "IT Engineer II"}
    {$_ -in 17..19} {$Title = "IT Architect"}
    {$_ -in 20..1000} {$Title = "CIO"}
    }
    $Title
}

Function Get-Loot {
    $LootRoll = (Get-Random -Minimum 1 -Maximum 10)
    Switch ($LootRoll) {
    {$_ -eq 1} {$Loot = (Build-Weapon)}
    {$_ -eq 2} {$Loot = (Build-Helmet)}
    {$_ -eq 3} {$Loot = (Build-Shoulders)}
    {$_ -eq 4} {$Loot = (Build-Gloves)}
    {$_ -eq 5} {$Loot = (Build-Chest)}
    {$_ -eq 6} {$Loot = (Build-Arms)}
    {$_ -eq 7} {$Loot = (Build-Legs)}
    {$_ -eq 8} {$Loot = (Build-Feet)}
    {$_ -eq 9} {$Loot = (Build-Shield)}
    }
    $Loot
}

Function Get-Modifier {
    Param(
         [int]$Stat
       )
    Switch ($Stat) {
    {$_ -eq 1} {$Modifier = -5}
    {$_ -in 2..3} {$Modifier = -4}
    {$_ -in 4..5} {$Modifier = -3}
    {$_ -in 6..7} {$Modifier = -2}
    {$_ -in 8..9} {$Modifier = -1}
    {$_ -in 10..11} {$Modifier = 0}
    {$_ -in 12..13} {$Modifier = 1}
    {$_ -in 14..15} {$Modifier = 2}
    {$_ -in 16..17} {$Modifier = 3}
    {$_ -in 18..19} {$Modifier = 4}
    {$_ -eq 20..21} {$Modifier = 5}
    {$_ -eq 22..23} {$Modifier = 6}
    {$_ -eq 24..25} {$Modifier = 7}
    {$_ -eq 26..27} {$Modifier = 8}
    {$_ -eq 28..29} {$Modifier = 9}
    {$_ -eq 30..100} {$Modifier = 10}
    }
    $Modifier

}

Function Get-Level {
    Param(
         [int]$Exp
       )
    Switch ($Exp) {
    {$_ -in 0..299} {$Level = 1}
    {$_ -in 300..899} {$Level = 2}
    {$_ -in 900..2699} {$Level = 3}
    {$_ -in 2700..6499} {$Level = 4}
    {$_ -in 6500..139999} {$Level = 5}
    {$_ -in 14000..22999} {$Level = 6}
    {$_ -in 23000..33999} {$Level = 7}
    {$_ -in 34000..47999} {$Level = 8}
    {$_ -in 48000..63999} {$Level = 9}
    {$_ -in 64000..84999} {$Level = 10}
    {$_ -in 85000..99999} {$Level = 11}
    {$_ -in 100000..119999} {$Level = 12}
    {$_ -in 120000..139999} {$Level = 13}
    {$_ -in 140000..164999} {$Level = 14}
    {$_ -in 165000..194999} {$Level = 15}
    {$_ -in 195000..224999} {$Level = 16}
    {$_ -in 225000..264999} {$Level = 17}
    {$_ -in 265000..304999} {$Level = 18}
    {$_ -in 305000..354999} {$Level = 19}
    {$_ -in 355000..1000000} {$Level = 20}
    }
    $Level
}

Function Roll-Stat {
    #$Stats = 1..4 | ForEach-Object {Get-Random -Minimum 1 -Maximum 7}
    $Stats = (Get-AsciiDice -Amount 4)
    $Smallest = $Stats | Measure-Object -Minimum | Select-Object -ExpandProperty Minimum
    $Sum = $Stats | Measure-Object -Sum | Select-Object -ExpandProperty Sum
    $Stat = ($Sum - $Smallest)
    $Stat
}

function Get-Quest {
    $Verb = Randomize-List -InputList $Verbs
    $App = Randomize-List -InputList $Apps
    $Verb = $Verb.substring(0,1).toupper()+$Verb.substring(1).tolower()
    "$Verb $App"
}

function Get-Task {
    $Adverb = Randomize-List -InputList $Adverbs
    $Action = Randomize-List -InputList $Actions
    $Object = Randomize-List -InputList $Objects
    $Adverb = $Adverb.substring(0,1).toupper()+$Adverb.substring(1).tolower()
    "$Adverb $Action $Object"
}

Function Build-Weapon {
    $Char.Weapon = @{}
    $Mod = Randomize-List -InputList $Mods
    $Mat = Randomize-List -InputList $Mats
    $Type = Randomize-List -InputList $Weapons
    $Bonus = Randomize-List -InputList $Bonuses
    $Mod = $Mod.substring(0,1).toupper()+$Mod.substring(1).tolower()
    $Roll = (Get-Random -Minimum 1 -Maximum 9)
	$Char.Weapon.Roll = $Roll
    $Char.Weapon.Mod = $Mod
    $Char.Weapon.Mat = $Mat
    $Char.Weapon.Type = $Type
    $Char.Weapon.Bonus = $Bonus
    $Char.Weapon.Weapon = "$Mod +$Roll $Mat $Type $Bonus"
    $Char.Weapon.Weapon
}

Function Build-Helmet {
    $Char.Helmet = @{}
    $Mat = Randomize-List -InputList $Mats
    $Mat = $Mat.substring(0,1).toupper()+$Mat.substring(1).tolower()
    $Type = Randomize-List -InputList $Helmets
    $Char.Helmet.Mat = $Mat
    $Char.Helmet.Type = $Type
    $Char.Helmet.Helmet = "$Mat $Type"
    $Char.Helmet.Helmet
}

Function Build-Shoulders {
    $Char.Shoulders = @{}
    $Mat = Randomize-List -InputList $Mats
    $Mat = $Mat.substring(0,1).toupper()+$Mat.substring(1).tolower()
    $Type = Randomize-List -InputList $Shoulders
    $Char.Shoulders.Mat = $Mat
    $Char.Shoulders.Type = $Type
    $Char.Shoulders.Shoulders = "$Mat $Type"
    $Char.Shoulders.Shoulders
}

Function Build-Gloves {
    $Char.Gloves = @{}
    $Mat = Randomize-List -InputList $Mats
    $Mat = $Mat.substring(0,1).toupper()+$Mat.substring(1).tolower()
    $Type = Randomize-List -InputList $Gloves
    $Char.Gloves.Mat = $Mat
    $Char.Gloves.Type = $Type
    $Char.Gloves.Gloves = "$Mat $Type"
    $Char.Gloves.Gloves
}

Function Build-Chest {
    $Char.Chests = @{}
    $Mat = Randomize-List -InputList $Mats
    $Mat = $Mat.substring(0,1).toupper()+$Mat.substring(1).tolower()
    $Type = Randomize-List -InputList $Chests
    $Char.Chests.Mat = $Mat
    $Char.Chests.Type = $Type
    $Char.Chests.Chest = "$Mat $Type"
    $Char.Chests.Chest
}

Function Build-Arms {
    $Char.Arms = @{}
    $Mat = Randomize-List -InputList $Mats
    $Mat = $Mat.substring(0,1).toupper()+$Mat.substring(1).tolower()
    $Type = Randomize-List -InputList $Arms
    $Char.Arms.Mat = $Mat
    $Char.Arms.Type = $Type
    $Char.Arms.Arms = "$Mat $Type"
    $Char.Arms.Arms
}

Function Build-Legs {
    $Char.Legs = @{}
    $Mat = Randomize-List -InputList $Mats
    $Mat = $Mat.substring(0,1).toupper()+$Mat.substring(1).tolower()
    $Type = Randomize-List -InputList $Legs
    $Char.Legs.Mat = $Mat
    $Char.Legs.Type = $Type
    $Char.Legs.Legs = "$Mat $Type"
    $Char.Legs.Legs
}

Function Build-Feet {
    $Char.Feet = @{}
    $Mat = Randomize-List -InputList $Mats
    $Mat = $Mat.substring(0,1).toupper()+$Mat.substring(1).tolower()
    $Type = Randomize-List -InputList $Feet
    $Char.Feet.Mat = $Mat
    $Char.Feet.Type = $Type
    $Char.Feet.Feet = "$Mat $Type"
    $Char.Feet.Feet
}

Function Build-Shield {
    $Char.Shield = @{}
    $Mat = Randomize-List -InputList $Mats
    $Mat = $Mat.substring(0,1).toupper()+$Mat.substring(1).tolower()
    $Type = Randomize-List -InputList $Shields
    $Char.Shield.Mat = $Mat
    $Char.Shield.Type = $Type
    $Char.Shield.Shield = "$Mat $Type"
    $Char.Shield.Shield
}

Function Get-Class {
    $Class = Randomize-List -InputList $Classes
    $Char.class = $Class
    Write-Output "$Class"
}

function Get-Race {
    $Race = Randomize-List -InputList $Races
    $Char.race = $Race
    Write-Output "$Race"
}

Function Get-Name {
    $Name = ($env:username)
    $Char['name']=$Name
    Write-Output $Name
}

function Get-Align {
    $Align = Randomize-List -InputList $Alignments
    $Char.align = $Align
    Write-Output $Align
}

Function Get-Stats {
    Clear-Host
    Show-Progress "Rolling up your stats" -numbers 3
	Write-Host ""
    
    $STR = (Roll-Stat)
    Write-Host "Strength: $STR"
    $Char['str']=$STR

    $DEX = (Roll-Stat)
    Write-Host "Dexterity: $DEX"
    $Char['dex']=$DEX
    
    $CON = (Roll-Stat)
    Write-Host "Constitution: $CON"
    $Char['con']=$CON
    
    $INT = (Roll-Stat)
    Write-Host "Intelligence: $INT"
    $Char['int']=$INT
    
    $WIS = (Roll-Stat)
    Write-Host "Wisdom: $WIS"
    $Char['wis']=$WIS
    
    $CHA = (Roll-Stat)
    Write-Host "Charisma: $CHA"
    $Char['cha']=$CHA
    
    Start-Sleep -Milliseconds 900
}

function Get-AsciiDice {
    Param
  (
      [parameter(Mandatory=$true,
      ParameterSetName="Amount")]
      [int]$Amount
      )
  
    $NumberSet = (1..$Amount | foreach {Get-Random -Maximum 7 -Minimum 1})
    $NumberSet | foreach { if ($_ -gt '6'){Write-Error -Message "Only supports digits 1-6" -ErrorAction Stop} }
  
    $d = @{
        1 = '     ','  o  ','     '
 
        2 = '   o ','     ',' o   '
        
        3 = ' o   ','  o  ','   o '
        
        4 = 'o   o','     ','o   o'
        
        5 = 'o   o','  o  ','o   o'
        
        6 = 'o   o','o   o','o   o'
    }
 
    Write-Host (" _____   " * $NumberSet.Count) -NoNewline
    0..2 | ForEach-Object {
        Write-Host
        foreach($n in $NumberSet) {
            Write-Host "|$($d[$n][$_])|  " -NoNewline
        }
    }
    Write-Host
    Write-Host (" -----   " * $NumberSet.Count)
    $NumberSet
}

Function MobAttack-Roll {
    param (
            [string]$Subject='you'
            ) 
    $MobHit = Randomize-List -InputList $MobHits
    $Phrase = Randomize-List -InputList $Phrases
    "$MobHit $Subject $Phrase"
    }

function Get-Mob {
    Param(
    [int]$Level
    )
    $Adjective = Randomize-List -InputList $Adjectives
    $MonsterRace = Randomize-List -InputList $MonsterRaces
    $Mob = Randomize-List -InputList $Mobs
    $Adjective = $Adjective.substring(0,1).toupper()+$Adjective.substring(1).tolower()
    "$Adjective $MonsterRace $Mob"
    $HP = (($Level * 10)+10)
    $Monster1.lvl=$Level
    $Monster1.adjective=$Adjective
    $Monster1.race=$MonsterRace
    $Monster1.mob=$Mob
    $Monster1.hp=$HP
    }

Function Fight {
        param(
            [int]$Level
        )
        if ((Get-Random -Minimum 1 -Maximum 100) -le 100) {
        Clear-Host
        Main-Menu
        $BigMob = (Get-Mob $Level)
        $MobMaxHP = $Monster1.hp
        $MobHP = $MobMaxHP
        $MobMob = $Monster1.Mob
        $MobAC = 10
        $Moblvl = $Monster1.lvl

        $WeaponType = $Char.Weapon.Type
        $MyMaxHP = $Char.MaxHP
        $MyHp = $MyMaxHP
        $MyAC = $Char.AC
        $MyStrBonus = (Get-Modifier $Char.Str)
        Write-Host "You are interrupted by a level $Moblvl $BigMob"
        Write-Host ""
        do {
            $MyHit = 0
            $MobHit = 0
            $MyHit = (d20)
            if ($MyHit -ge ($MobAC +1)){
                if ($MyHit -eq 20){
                    $YourDamage = (((d12)+$MyStrBonus)*2)
                    $MobHP = ($MobHP - $YourDamage)
                    Show-Progress -text "You hit $MobMob with a BONECRUSHING SOUND!" -count 3
                    Write-Host "($MobHP/$MobMaxHp)"
                    } else {
                        $YourAttack = (Randomize-List -inputlist $YourHits)
                        $YourDamage = ((d12)+$MyStrBonus)
                        $MobHP = ($MobHP - $YourDamage)
                        Show-Progress -text "You $YourAttack $MobMob with your $WeaponType" -count 3
                        Write-Host "($MobHP/$MobMaxHp)"
                        }            
                    } else {Show-Progress -text "You try to hit $MobMob, but fail" -count 3
                    Write-Host "($MobHP/$MobMaxHp)"
                    }
            $MobHit = (d20)
            if ($MobHit -ge ($MyAC +1)){
                if ($MobHit -eq 20){
                    $MobDamage = (((d8)+4)*2)
                    $MyHP = ($MyHP - $MobDamage)
                    Show-Progress -text "The $MobMob hits you with a BONECRUSHING SOUND!" -count 3
                    Write-Host "($MyHP/$MyMaxHP)"
                    Write-Host ""
                    } else {
                        $MobAttack = (MobAttack-Roll)
                        $MobDamage = ((d8)+4)
                        $MyHP = ($MyHP - $MobDamage)
                        Show-Progress -text "The $MobMob $MobAttack" -count 3
                        Write-Host "($MyHP/$MyMaxHP)"
                        Write-Host ""
                    }
                    } else {
                    Show-Progress -text "The $MobMob tries to hit you, but fails" -count 3
                    Write-Host "($MyHP/$MyMaxHP)"
                    Write-Host ""    
                    }
                    Start-Sleep 2
                    } while ($MobHP -ge 1)

            $Loot = (Get-Loot)
            Write-Host "New loot: $Loot"
            $GLD = (Get-Random -Minimum 0 -Maximum 20)
            Write-Host "Gold earned: $GLD"
            $Char.gold += $GLD
            $NewExp = ($Level * 100)
            Write-Host "Experience earned: $NewExp"
            $Char.experience = ($Char.experience += $NewExp)
            Start-Sleep -Milliseconds 1500
    }
}

Function Quest {
    param(
        [int]$Level
    )
    Clear-Host
    Main-Menu
    Write-Host "Rolling some quests..."
    $Quests = (Get-Random -Minimum 2 -Maximum 6)
    $QuestRoll = (Get-AsciiDice -Amount $Quests)
    Foreach($Q in $QuestRoll) {
        $Quest = (Get-Quest)
        Write-Host ""
        Show-Progress -text "Current Quest: $Quest" -count 0
        Write-Host ""
        For($T = 1; $T -le $Q; $T++ ) {
            $Task = (Get-Task)
            Show-Progress -text "     $Task" -count 3
            Write-Host ""
            Start-Sleep -Milliseconds 300
            }
    }
    Write-Host ""
    $Exp = ($Quests * 50)
    Write-Host "Experience gained: $Exp"
    $Char.experience = ($Char.experience += $Exp)
    Start-Sleep -Milliseconds 1500
}

Function Main-Menu {
    $Char.Level = (Get-Level $Char.Experience)
    $Char.Title = (Get-Title $Char.Level)
    $Char.AC = ((Get-Modifier $Char.DEX)+15)
    $Char.MaxHP = (((Get-Modifier $Char.Con)+20)+($Char.Level * 10))
    $Name=($Char.Name);$Race=($Char.Race)
    $Class=($Char.Class);$Level = $Char.Level;$STR=($Char.Str);$Con=($Char.Con);$EXP=($Char.Experience)
    $INT=($Char.Int);$DEX=($Char.dex);$WIS=($Char.Wis);$CHA=($Char.Cha);$GLD=($Char.Gold)
    $Alignment=$Char.Align;$Weapon=($Char.Weapon.Weapon);$Helmet=($Char.Helmet.Helmet)
    $Shoulders=($Char.Shoulders.Shoulders);$Gloves=($Char.Gloves.Gloves);$Shield=($Char.Shield.Shield)
    $Chest=($Char.Chests.Chest);$Arms=($Char.Arms.Arms);$Legs=($Char.Legs.Legs);$Feet=($Char.Feet.Feet)
    $MyAC=($Char.AC)
    $MyMaxHP=($Char.MaxHP)
    $Title = ($Char.Title)
    Write-Host "================================================================="
    Write-Host "|"
    Write-Host "| Welcome $Name, $Race $Class"
    Write-Host "| $Alignment"
    Write-Host "| Level $Level $Title"
    Write-Host "| Weapon:"
    Write-Host "| $Weapon"
    Write-Host "| Armor Class: $MyAC  Hit Points: $MyMaxHP"
    Write-Host "|    Helm:      $Helmet"
    Write-Host "|    Shoulders: $Shoulders"
    Write-Host "|    Shield:    $Shield"
    Write-Host "|    Hands:     $Gloves"
    Write-Host "|    Chest:     $Chest"
    Write-Host "|    Arms:      $Arms"
    Write-Host "|    Legs:      $Legs"
    Write-Host "|    Feet:      $Feet"
    Write-Host "| Experience: $EXP"
    Write-Host "| Gold: $GLD"
    Write-Host "|"
    Write-Host "| Stats:"  
    Write-Host "| Strength:     $STR"
    Write-Host "| Dexterity:    $DEX"
    Write-Host "| Constitution: $CON"
    Write-Host "| Intelligence: $INT"
    Write-Host "| Wisdom:       $WIS"
    Write-Host "| Charisma:     $CHA"
    Write-Host "|" 
    Write-Host "================================================================="
}

function Write-Menu {
    Clear-Host
    Write-Information "" -InformationAction Continue
    Write-Information "*********************************" -InformationAction Continue
    Write-Information "*                               *" -InformationAction Continue
    Write-Information "* oO[-Welcome to PowerQuest-]Oo *" -InformationAction Continue
    Write-Information "*                               *" -InformationAction Continue
    Write-Information "*********************************" -InformationAction Continue
    Write-Information "" -InformationAction Continue
    Show-Progress "Sensing your virtual self" -count 3
    Write-Information "" -InformationAction Continue
    Write-Information "" -InformationAction Continue
}

$Char.experience = 0
$Char.level = 1
Build-Weapon

Write-Menu
Write-Host "Name" -NoNewline;Show-Progress "" -count 3;Get-Name
Write-Host "Race" -NoNewline;Show-Progress "" -count 3;Get-Race
Write-Host "Class" -NoNewline;Show-Progress "" -count 3;Get-Class
Write-Host "Alignment" -NoNewline;Show-Progress "" -count 3;Get-Align
Start-Sleep -Milliseconds 900
Get-Stats

While(1) {
    $Level = ($Char.Level)
    (Quest $Level)
    (Fight $Level)
    Start-Sleep -Milliseconds 700
    $wsh = New-Object -ComObject WScript.Shell
    $wsh.SendKeys('+{F15}')
    #[console]::beep(500,300)
}