$Char = @{}
$Adverbs = @();$Actions = @();$Apps = @();$Objects = @();$Verbs = @()
$Mods = @();$Mats = @();$Items = @();$Bonuses = @();$Gear = @()
$Alignments = @()
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
        Start-Sleep -Milliseconds 100
        }
}

function Show-Bar {
    param ([int]$count=3) 
    For($i=1;$i -le $count;$i++) {
        Write-Host "o" -NoNewline
        Start-Sleep -Milliseconds 100
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

function Get-Align {
    $Align = Randomize-List -InputList $Alignments
    "$Align"
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
    "$Mod +$Roll $Mat $Item $Bonus"
}

function Get-Class {
    $Class = Randomize-List -InputList $Classes
    Write-Output "$Class"
    $Char.class = $Class
}

Function Choose-Class {
    param (
        [string]$Title = 'Choose your class:'
    )
    Clear-Host
    Write-Host "$Title"
    Write-Host "[D]ruid (default)"
    Write-Host "[M]age"
    Write-Host "[W]arrior"
    Write-Host "[R]anger"
    Write-Host "M[O]nk"
    Write-Host "[C]leric"
    Write-Host "[P]aladin"
    Write-Host ""
    $Class = Read-Host "Choose your class"
    $Class = switch ($Class) {
    D {'Druid'}
    M {'Mage'}
    W {'Warrior'}
    R {'Ranger'}
    O {'Monk'}
    C {'Cleric'}
    P {'Paladin'}
    default {'Druid'}
    }
    $Char['Class']=$Class
}

function Get-Race {
    $Race = Randomize-List -InputList $Races
    Write-Output "$Race"
    $Char.race = $Race
}

function Choose-Race {
    param (
        [string]$Title = 'Choose your race:'
    )
    Clear-Host
    Write-Host "$Title"
    Write-Host "[H]uman (default)"
    Write-Host "[E]lf"
    Write-Host "[D]warf"
    Write-Host "Hob[B]it"
    Write-Host "[O]rc"
    Write-Host "[G]oblin"
    Write-Host ""
    $Race = Read-Host "Choose your race"
    $Race = switch ($Race ) {
    H {'Human'}
    E {'Elf'}
    D {'Dwarf'}
    B {'Hobbit'}
    O {'Orc'}
    G {'Goblin'}
    default {'Human'}
    }
    $Char['Race']=$Race
}

Function Get-Name {
    $Char['name']=($env:username)
}

Function Choose-Name {
    $Name = Read-Host "Character name?"
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
}

Function Do-Quest {
    Param(
     [int]$CurrentLevel
    )
    Write-Host "Rolling some quests..."
    $Exp = (Get-Random -Minimum 2 -Maximum 6)
    $QuestRoll = (Get-AsciiDice -Amount $Exp)
    Foreach($Q in $QuestRoll) {
        $Quest = (Get-Quest)
        Write-Host ""
        Show-Progress -text "Current Quest: $Quest" -count 1
        Write-Host ""
        For($T = 1; $T -le $Q; $T++ ) {
            $Task = (Get-Task)
            Show-Progress -text "     $Task" -count (Get-Random -Minimum 2 -Maximum 20)
            Write-Host ""
            Start-Sleep -Milliseconds (Get-Random 100)
            }
    }
    Write-Host ""
    $GLD = (Get-Random -Minimum 0 -Maximum $Exp)
    Write-Host "Gold earned: $GLD"
    $Char.gold += $GLD
    Write-Host "Experience gained: $Exp"
    $Exp += $Char['Experience']
    $Char.Experience = $Exp
    if ((Get-Random -Minimum 1 -Maximum 100) -le 25) {
        $Gear = Build-Gear
        $Char['Weapon'] = $Gear
        Write-Host "New loot: $Gear"
        }
    if ($Exp -ge ($CurrentLevel * 10)){
        $Char.align = (Get-Align)
        $Char.Level++
        }
}

Function Get-Stats {
    Clear-Host
    Write-Host "Rolling up your stats..."
    
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
    
    $Char.align = (Get-Align)
    #Pause
    Start-Sleep 2
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

Function Main {
    Clear-Host
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
    Do-Quest $Level
}

if (!($Char.level)){$Char.level = 1}
if (!($Char.name)){$Char.name = "Wilgrin"}
#if (!($Name)){$Name = "Gwendoveer"}

Write-Menu
#Choose-Name
Get-Name
#Choose-Class
Get-Class
#Choose-Race
Get-Race
Get-Stats

do {
    Main
    Start-Sleep 5
    $wsh = New-Object -ComObject WScript.Shell
    $wsh.SendKeys('+{F15}')
}
until ($Cont -eq 'n')