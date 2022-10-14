$Char = @{};$Monster1 = @{}
$Adverbs = @();$Actions = @();$Apps = @();$Objects = @();$Verbs = @()
$Mods = @();$Mats = @();$Items = @();$Bonuses = @();$Gear = @();$Alignments = @()
$Phrases = @();$Adjectives = @();$MonsterRaces = @();$Mobs = @();$MobHits = @();$YourHits = @()
$MobHits = @('hits','tickles','pokes','bonks','slaps','crushes','stabs',
    'punches')
$YourHits = @('hit','smash','bonk','slap','crush','stab',
    'punch','destroy','obliterate')
$Phrases = @('with a bonecrushing sound','in your eye','on the back of your head',
    'with an old keyboard','with a terminal','in the face','really hard')
$Adjectives = @('digital','electronic','green','smoke-stained','plastic',
    'grungy','virtual','cloud-based','shiny','dingy','brand new','state-of-the-art')
$MonsterRaces = @('IBM','Compaq','Dell','Apple','Aruba','Juniper','Cisco',
    'Gateway 2000','Mac','Microtech','Logitech','Polycom','Poly')
$Mobs = @('keyboard','mouse','SCSI cable','cell phone','iPad','switch',
    'router','PC','laptop','monitor','UPS','DOT Matrix Printer','Laser Printer',
	'flatbed scanner','backup tape','Phone')
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
    'SharePoint','Teams','Azure','the firewall','Bitlocker','Exchange','the portal')
$Objects = @('the database','directories','servers','websites','folders','email','users','phone numbers','hard drives',
    'floppy disks','IP Addresses','software','firmware','memory','firewall rules','routing tables','fiber optics','NIC cards',
    'CAT5 cables','spreadsheets')
$Mods = @('deadly','magical','digital','electronic','binary',
    'caffeinated')
$Mats = @('golden','platinum','silver','iron','mithril','emerald','ruby',
    'diamond','steel','bronze','copper','saphire')
$Items = @('visor','goggles','t-shirt','cell phone','USB stick','hard drive','CAT-5 cable','headset',
    'keyboard','mouse','monitor','disk','floppy disk')
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

Function Build-Title {
    Param(
         [int]$InputLevel
       )
    Switch ($InputLevel) {
    {$_ -in 1..9} {$Title = "Help Desk Monkey"}
    {$_ -in 10..19} {$Title = "System Administrator"}
    {$_ -in 20..39} {$Title = "IT Engineer"}
    {$_ -in 40..69} {$Title = "IT Engineer II"}
    {$_ -in 70..100} {$Title = "IT Architect"}
    {$_ -in 101..1000} {$Title = "CIO"}
    }
    $Title
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

Function Build-Gear {
    $Mod = Randomize-List -InputList $Mods
    $Mat = Randomize-List -InputList $Mats
    $Item = Randomize-List -InputList $Items
    $Bonus = Randomize-List -InputList $Bonuses
    $Mod = $Mod.substring(0,1).toupper()+$Mod.substring(1).tolower()
    $Roll = (Get-Random -Minimum 1 -Maximum 9)
	$Char.item = $Item
    "$Mod +$Roll $Mat $Item $Bonus"
}

function Get-Class {
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
    
    Start-Sleep -Milliseconds 700
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
    $Adjective = Randomize-List -InputList $Adjectives
    $MonsterRace = Randomize-List -InputList $MonsterRaces
    $Mob = Randomize-List -InputList $Mobs
    $Adjective = $Adjective.substring(0,1).toupper()+$Adjective.substring(1).tolower()
    "$Adjective $MonsterRace $Mob"
    $Monster1['adjective']=$Adjective
    $Monster1['race']=$MonsterRace
    $Monster1['mob']=$Mob
    }

Function Fight {
    if ((Get-Random -Minimum 1 -Maximum 100) -le 25) {
        Clear-Host
        Main-Menu
        $BigMob = (Get-Mob)
        Write-Host "You are interrupted by a $BigMob"
        $Rand = (Get-Random -Minimum 2 -Maximum 10)
        $Item = $Char.item
		$MobMob = ($Monster1.mob)
        for ($mob = 1; $mob -le $Rand; $mob++ ) {
            $MobAttack = (MobAttack-Roll)
            Show-Progress -text "     The $MobMob $MobAttack" -count 3
            Write-Host ""
                for ($you = 1; $you -le 1; $you++ ){
					$YourAttack = (Randomize-List -inputlist $YourHits)
                    Show-Progress -text "     You $YourAttack $MobMob with your $Item" -count 3
                    Write-Host ""
                    }
            Start-Sleep -Milliseconds 500
        }
        $Gear = Build-Gear
        $Char['Weapon'] = $Gear
        Write-Host "New loot: $Gear"
        $GLD = (Get-Random -Minimum 0 -Maximum 20)
        Write-Host "Gold earned: $GLD"
        $Char.gold += $GLD
    }
}

Function Do-Quest {
    Param(
     [int]$CurrentLevel
    )
    Clear-Host
    Main-Menu
    Write-Host "Rolling some quests..."
    $Exp = (Get-Random -Minimum 2 -Maximum 6)
    $QuestRoll = (Get-AsciiDice -Amount $Exp)
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
    Write-Host "Experience gained: $Exp"
    $Exp += $Char['Experience']
    $Char.Experience = $Exp
    if ($Exp -ge ($CurrentLevel * 10)){
        $Char.align = (Get-Align)
        $Char.Level++
        }
}

Function Main-Menu {
    $Name=($Char.name);$Level=($Char.level);$Race=($Char.race)
    $Class=($Char.class);$STR=($Char.str);$Con=($Char.con);$EXP=($Char.experience)
    $INT=($Char.int);$DEX=($Char.dex);$WIS=($Char.wis);$CHA=($Char.cha);$GLD=($Char.gold)
    $Alignment=$Char.align;$Weapon=($Char.weapon)
    $Title = (Build-Title $Level)
    Write-Host "================================================================="
    Write-Host "|"
    Write-Host "| Welcome $Name, $Race $Class"
    Write-Host "| $Alignment"
    Write-Host "| Level $Level $Title"
    Write-Host "| Current Weapon: "
    Write-Host "| $Weapon"
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

$Char.weapon = "stick"
$Char.item = "stick"

Write-Menu
Show-Progress "" -count 3;Get-Name
Show-Progress "" -count 3;Get-Race
Show-Progress "" -count 3;Get-Class
Show-Progress "" -count 3;Get-Align
Start-Sleep -Milliseconds 700
Get-Stats

do {
    Do-Quest $Level
    Fight
    Start-Sleep -Milliseconds 700
    $wsh = New-Object -ComObject WScript.Shell
    $wsh.SendKeys('+{F15}')
    #[console]::beep(500,300)
}
until ($Cont -eq 'n')