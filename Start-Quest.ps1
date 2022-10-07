$Char = @{}
$Adverbs = @();$Actions = @();$Apps = @();$Objects = @()
$Mods = @();$Mats = @();$Items = @();$Bonuses = @();$Gear = @()
$Alignments = @()
$Alignments = @('Lawful Good - White Hat','Neutral Good - Cream Hat','Chaotic Good - Beige Hat',
    'Lawful Neutral - Light-Grey Hat','True Neutral - Grey Hat','Chaotic Neutral - Dark-Grey Hat',
    'Lawful Evil - Light-Black Hat','Neutral Evil - Black Hat','Chaotic Evil - Suicide Hat') 
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

function Spin-Up([string]$input_text = 'Press any key to continue... ') {
    $spin="/-\|"
    #$spin=".oO0Oo."
    Write-Host "$input_text" -nonewline
    $i=0
    $RandomSpin = Get-Random 15
    while ($i -le $RandomSpin) {
        Write-Host "`b$($spin.Substring($i++%$spin.Length)[0])" -nonewline
        Start-Sleep -Milliseconds 100
        }
    #Write-Host ""
}

function Show-Progress([string]$input_text = 'Press any key to continue... ') {
    Write-Host "$input_text" -nonewline
    $i=0
    $RandomSpin = 2
    while ($i -le $RandomSpin) {
        Write-Host "." -NoNewline;$i++
        Start-Sleep -Milliseconds 100
        }
    #Write-Host ""
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
    }
    return $Title
}

Function Roll-Stat {
    $Stats = 1..4 | ForEach-Object {Get-Random -Minimum 1 -Maximum 7}
    $Smallest = $Stats | Measure-Object -Minimum | Select-Object -ExpandProperty Minimum
    $Sum = $Stats | Measure-Object -Sum | Select-Object -ExpandProperty Sum
    $Stat = ($Sum - $Smallest)
    Write-Output $Stat
}

function Get-Align {
    $Align = Randomize-List -InputList $Alignments
    Write-Output "$Align"
}

function Get-Quest {
    $Action = Randomize-List -InputList $Actions
    $App = Randomize-List -InputList $Apps
    $Action = $Action.substring(0,1).toupper()+$Action.substring(1).tolower()
    Write-Output "$Action $App"
}

function Get-Task {
    $Adverb = Randomize-List -InputList $Adverbs
    $Action = Randomize-List -InputList $Actions
    $Object = Randomize-List -InputList $Objects
    $Adverb = $Adverb.substring(0,1).toupper()+$Adverb.substring(1).tolower()
    Write-Output "$Adverb $Action $Object"
}

Function Build-Gear {
    $Mod = Randomize-List -InputList $Mods
    $Mat = Randomize-List -InputList $Mats
    $Item = Randomize-List -InputList $Items
    $Bonus = Randomize-List -InputList $Bonuses
    $Mod = $Mod.substring(0,1).toupper()+$Mod.substring(1).tolower()
    $Roll = (Get-Random -Minimum 1 -Maximum 9)
    Write-Output "$Mod +$Roll $Mat $Item $Bonus"
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
    $Exp = (Get-Random -Minimum 2 -Maximum 5)
    for($Q = 1; $Q -le $Exp; $Q++) {
        $Quest = (Get-Quest)
        Write-Host ""
        Show-Progress "Current Quest: $Quest"
        Write-Host "";Write-Host ""
        $RandomTask=(Get-Random -Minimum 2 -Maximum 10)
        for($T = 1; $T -le $RandomTask; $T++ ) {
            $Task = (Get-Task)
            Show-Progress "$Task"
            Write-Host ""
            Start-Sleep -Milliseconds (Get-Random 100)
            }
        }
    $Exp += $Char['Experience']
    $Char['Experience'] = $Exp
    $Gear = (Build-Gear)
    $Char['Weapon'] = $Gear
    if ($Exp -ge ($CurrentLevel * 10)){
        $Char.align = (Get-Align)
        $Char.Level++
    }
}

Function Get-Stats {
    Clear-Host
    $STR = (Roll-Stat)
    Show-Progress "Rolling STR"
    Write-Host "";Write-Host "$STR"
    $Char['str']=$STR
    $DEX = (Roll-Stat)
    Show-Progress "Rolling DEX"
    Write-Host "";Write-Host "$DEX"
    $Char['dex']=$DEX
    $CON = (Roll-Stat)
    Show-Progress "Rolling CON"
    Write-Host "";Write-Host "CON"
    $Char['con']=$CON
    $INT = (Roll-Stat)
    Show-Progress "Rolling INT"
    Write-Host "";Write-Host "$INT"
    $Char['int']=$INT
    $WIS = (Roll-Stat)
    Show-Progress "Rolling WIS"
    Write-Host "";Write-Host "$WIS"
    $Char['wis']=$WIS
    $CHA = (Roll-Stat)
    Show-Progress "Rolling CHA"
    Write-Host "";Write-Host "$CHA"
    $Char['cha']=$CHA
    $Char.align = (Get-Align)
    #Pause
    Start-Sleep 2
}

Function Main {
    Clear-Host
    $Name=($Char.name);$Level=($Char.level);$Race=($Char.race)
    $Class=($Char.class);$STR=($Char.str);$Con=($Char.con);$EXP=($Char.experience)
    $INT=($Char.int);$DEX=($Char.dex);$WIS=($Char.wis);$CHA=($Char.cha)
    $Alignment=$Char.align;$Weapon=($Char.weapon)
    $Title = (Build-Title $Level)
    Write-Host "========================================================================"
    Write-Host "|"
    Write-Host "| Welcome $Name, $Race $Class"
    Write-Host "| $Alignment"
    Write-Host "| Level $Level $Title"
    Write-Host "| Current Weapon: $Weapon"
    Write-Host "|"
    Write-Host "| Stats:"
    Write-Host "| Strength:     $STR"
    Write-Host "| Dexterity:    $DEX"
    Write-Host "| Constitution: $CON"
    Write-Host "| Intelligence: $INT"
    Write-Host "| Wisdom:       $WIS"
    Write-Host "| Charisma:     $CHA"
    Write-Host "| Experience:   $EXP"
    Write-Host "========================================================================"
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