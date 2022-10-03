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
    'of spreadsheet sorting','of log searching','of portal slaying','of Azure','event parsing')

function Randomize-List
{
   Param(
     [array]$InputList
   )
   return $InputList | Get-Random -Count 1
}

function Get-Align {
    $Align = Randomize-List -InputList $Alignments
    Write-Output "$Align"
}

function Get-Project {
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

Function Build-Gear {
    $Mod = Randomize-List -InputList $Mods
    $Mat = Randomize-List -InputList $Mats
    $Item = Randomize-List -InputList $Items
    $Bonus = Randomize-List -InputList $Bonuses
    $Mod = $Mod.substring(0,1).toupper()+$Mod.substring(1).tolower()
    $Roll = (Get-Random 10)
    Write-Output "$Mod +$Roll $Mat $Item $Bonus"
}

Clear-Host

while (1) {
    
    for ($L = 1; $L -le 100; $L++) {
        $Align = (Get-Align)
        $LevelLoop = @{ID = 0; Activity = "Level $L IT Engineer"; Status = "$Align"}
        Write-Progress @LevelLoop
        $R = (Get-Random 50)
        for ($E = 1; $E -le 30; $E++){
            $wsh = New-Object -ComObject WScript.Shell
            $wsh.SendKeys('+{F15}')
            if ((Get-Random 100) -le 100) {$Gear = Build-Gear}
            $GearLoop = @{ID = 3; Activity = "Equipment:"; Status = "$Gear"}
            $ExpLoop = @{ID = 4; Activity = "Current level:"; Status = "Experience:"; PercentComplete = $E/30 * 100}
            Write-Progress @GearLoop
            Write-Progress @Exploop
            $Project = (Get-Project)
            for($B = 1; $B -le $R; $B++) {
                $Task = (Get-Task)
                $Stat2 = (($B/$R) * 100).ToString("#")
                $ProjectLoop = @{ID = 1; Activity = "Current Quest: $Project"; Status = "Progress->"; PercentComplete = $B/$R * 100}
                Write-Progress @ProjectLoop
                $R2 = (Get-Random 100)
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