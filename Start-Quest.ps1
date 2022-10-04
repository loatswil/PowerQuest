$Adverbs = @();$Actions = @();$Apps = @();$Objects = @()
$Mods = @();$Mats = @();$Items = @();$Bonuses = @();$Gear = @()
$Titles = @{};$Char = @{}
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
    'Identity Management','Canvas','DNS','Skype for Business','Active Directory','the network','the cloud',
    'SharePoint','Teams','Azure','the firewall','Bitlocker','Exchange','the portal','the load balancer')
$Objects = @('the database','directories','servers','websites','folders','email','users','phone numbers','hard drives',
    'floppy disks','IP Addresses','software','firmware','memory','firewall rules','routing tables','fiber optics','NIC cards',
    'CAT5 cables','spreadsheets','floppy disks','disk drives')
$Mods = @('deadly','magical','digital','electronic','binary',
    'caffeinated','cloud based','virtual')
$Mats = @('golden','platinum','silver','iron','mithril','emerald','ruby',
    'diamond','steel','bronze','copper','saphire')
$Items = @('goggles','mouse pad','haptic gloves','t-shirt','headset','visor','pocket protector','CAT5 cable',
    'keyboard','mouse','monitor','USB stick','floppy disk','hard drive')
$Bonuses = @('of grepping','of editing','of application slaying','of cloud slaying','of database monitoring',
    'of spreadsheet sorting','of log searching','of portal slaying','of Azure','of event parsing')

function Randomize-List {
   Param(
     [array]$InputList
   )
   return $InputList | Get-Random -Count 1
}

function Get-Align {
    $Align = Randomize-List -InputList $Alignments
    Write-Output "$Align"
}

function Get-Quest {
    $Action = Randomize-List -InputList $Actions
    $App = Randomize-List -InputList $Apps
    $Action = $Action.substring(0,1).toupper()+$Action.substring(1).tolower()
    Write-Output "$Action $App..."
}

function Get-Task {
    $Adverb = Randomize-List -InputList $Adverbs
    $Action = Randomize-List -InputList $Actions
    $Object = Randomize-List -InputList $Objects
    $Adverb = $Adverb.substring(0,1).toupper()+$Adverb.substring(1).tolower()
    Write-Output "$Adverb $Action $Object..."
}

function Say-Level {
    Add-Type -AssemblyName System.speech
    $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
    $speak.Rate   = 2  # -10 to 10; -10 is slowest, 10 is fastest
    $level = $Char.level
    $speak.Speak("Congrats on level $level")
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

Clear-Host

while (1) {
    $Char['name']=($env:username)
    for ($L = 1; $L -le 100; $L++) {
        $Char['level']=$L
        $Title = (Build-Title $L)
        $Align = (Get-Align)
        #Say-Level
        $LevelLoop = @{ID = 0; Activity = "$env:username, Level $L $Title"; Status = "$Align"}
        Write-Progress @LevelLoop
        $R = (Get-Random 20)
        $Exp = (1.5 * $L)
        for ($E = 1; $E -le $Exp; $E++){
            if ((Get-Random 100) -le 100) {$Gear = Build-Gear}
            $GearLoop = @{ID = 3; Activity = "Equipment:"; Status = $Gear}
            $ExpLoop = @{ID = 4; Activity = "Current level:"; Status = "Experience:"; PercentComplete = $E/$Exp * 100}
            Write-Progress @GearLoop
            Write-Progress @Exploop
            $Quest = (Get-Quest)
            #[console]::beep(3000,150)
            $wsh = New-Object -ComObject WScript.Shell
            $wsh.SendKeys('+{F15}')
            for($B = 1; $B -le $R; $B++) {
                $Task = (Get-Task)
                $QuestLoop = @{ID = 1; Activity = "Current Quest: $Quest"; Status = "Progress->"; PercentComplete = $B/$R * 100}
                Write-Progress @QuestLoop
                $R2 = (Get-Random 75)
                for($A = 1; $A -le $R2; $A++ ) {
                    $Stat3 = (($A/$R2) * 100).ToString("#")
                    $TaskLoop = @{ID = 2; Activity = $Task; Status = "Progress-->"; PercentComplete = $A/$R2 * 100}
                    Write-Progress @TaskLoop
                    Start-Sleep -Milliseconds (Get-Random 100)
                }
            }
        }
    }
}