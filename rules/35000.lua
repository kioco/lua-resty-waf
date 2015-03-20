-- User Agents

local _M = {}

_M.version = "0.5"

local _rules = {
	{
		id = 35001,
		var = {
			type = "USER_AGENT",
			opts = nil,
			pattern = { "grabber", "cgichk", "bsqlbf", "mozilla/4.0 (compatible)", "sqlmap", "mozilla/4.0 (compatible; msie 6.0; win32)", "mozilla/5.0 sf//", "nessus", "arachni", "metis", "sql power injector", "bilbo", "absinthe", "black widow", "n-stealth", "brutus", "webtrends security analyzer", "netsparker", "python-httplib2", "jaascois", "pmafind", ".nasl", "nsauditor", "paros", "dirbuster", "pangolin", "nmap nse", "sqlninja", "nikto", "webinspect", "blackwidow", "grendel-scan", "havij", "w3af", "hydra" },
			operator = "PM"
		},
		opts = { score = 3 },
		action = "SCORE",
		description = "User agent indicates an automated scan of the site"
	},
	{
		id = 35002,
		var = {
			type = "USER_AGENT",
			opts = nil,
			pattern = { "webmole", "wisenutbot", "prowebwalker", "hanzoweb", "email", "toata dragostea mea pentru diavola", "gameBoy, powered by nintendo", "missigua", "poe-component-client", "emailsiphon", "adsarobot", "under the rainbow 2.", "nessus", "floodgate", "email extractor", "webaltbot", "contactbot/", "butch__2.1.1", "pe 1.4", "indy library", "autoemailspider", "mozilla/3.mozilla/2.01", "fantombrowser", "digout4uagent", "panscient.com", "telesoft", "; widows", "converacrawler", "www.weblogs.com", "murzillo compatible", "isc systems irc search 2.1", "emailmagnet", "microsoft url control", "datacha0s", "emailwolf", "production bot", "sitesnagger", "webbandit", "web by mail", "faxobot", "grub crawler", "jakarta", "eirgrabber", "webemailextrac", "extractorpro", "attache", "educate search vxb", "8484 boston project", "franklin locator", "nokia-waptoolkit", "mailto:craftbot@yahoo.com", "full web bot", "pcbrowser", "psurf", "user-Agent", "pleasecrawl/1.", "kenjin spider", "gecko/2525", "no browser", "webster pro", "wep Search 00", "grub-client", "fastlwspider", "this is an exploit", "contentsmartz", "teleport pro", "dts agent", "nikto", "morzilla", "via", "atomic_email_hunter", "program shareware 1.0.", "ecollector", "emailcollect", "china local browse 2.", "backdoor", "stress test", "foobar/", "emailreaper", "xmlrpc exploit", "compatible ; msie", "s.t.a.l.k.e.r.", "compatible-", "webvulnscan", "nameofagent", "copyrightcheck", "advanced email extractor", "surveybot", "compatible ;.", "searchbot admin@google", "wordpress/4.01", "webemailextract", "larbin@unspecified", "turing machine", "zeus", "windows-update-agent", "morfeus fucking scanner", "user-agent:", "voideye", "mosiac 1", "chinaclaw", "newt activeX; win32", "web downloader", "safexplorer tl", "agdm79@mail.ru", "cheesebot", "hhjhj@yahoo", "fiddler", "psycheclone", "microsoft internet explorer/5.0", "core-project/1", "atspider", "copyguard", "neuralbot/0.2", "wordpress hash grabber", "amiga-aweb/3.4", "packrat", "rsync", "crescent internet toolpak", "security scan", "vadixbot", "concealed defense", "a href=", "bwh3_user_agent", "internet ninja", "microsoft url", "emailharvest", "shai", "wisebot", "internet exploiter sux", "wells search ii", "webroot", "digimarc webreader", "botversion", "black hole", "w3mir", "pmafind", "athens", "hl_ftien_spider", " injection", "takeout", "eo browse", "cherrypicker", "internet-exprorer", },
			operator = "NOT_PM"
		},
		opts = { nolog = true },
		action = "SKIP",
		description = "Search for rogue crawler"
	},
	{
		id = 35003,
		var = {
			type = "USER_AGENT",
			opts = nil,
			pattern = [=[(?:(?:c(?:o(?:n(?:t(?:entsmartz|actbot(?:/)?)|cealed defense|veracrawler)|mpatible(?: ;(?: msie|\.)|-)|py(?:rightcheck|guard)|re-project/1.0)|h(?:ina(?: local browse 2\.|claw)|e(?:rrypicker|esebot))|rescent internet toolpak)|w(?:e(?:b(?: (?:downloader|by mail)|(?:(?:altb|ro)o|bandi)t|emailextract?|vulnscan|mole)|lls search ii|p Search 00)|i(?:ndows(?:-update-agent)|se(?:nut)?bot)|ordpress(?: hash grabber|\/4\.01)|3mir)|m(?:o(?:r(?:feus fucking scanner|zilla)|zilla\/3\.mozilla\/2\.01$|siac 1.)|i(?:crosoft (?:internet explorer\/5\.0$|url control)|ssigua)|ailto:craftbot\@yahoo\.com|urzillo compatible)|p(?:ro(?:gram shareware 1\.0\.|duction bot|webwalker)|a(?:nscient\.com|ckrat)|oe-component-client|s(?:ycheclone|urf)|leasecrawl\/1\.|cbrowser|e 1\.4|mafind)|e(?:mail(?:(?:collec|harves|magne)t|(?: extracto|reape)r|(siphon|spider)|siphon|wolf)|(?:collecto|irgrabbe)r|ducate search vxb|xtractorpro|o browse)|t(?:(?: ?h ?a ?t ?' ?s g ?o ?t ?t ?a ? h ?u ?r ?|his is an exploi|akeou)t|oata dragostea mea pentru diavola|ele(?:port pro|soft)|uring machine)|a(?:t(?:(?:omic_email_hunt|spid)er|tache|hens)|d(?:vanced email extractor|sarobot)|gdm79\@mail\.ru|miga-aweb\/3\.4|utoemailspider| href=)|^(?:(google|i?explorer?\.exe|(ms)?ie( [0-9.]+)?\ ?(compatible( browser)?)?)$|www\.weblogs\.com|(?:jakart|vi)a|microsoft url|user-Agent)|s(?:e(?:archbot admin@google.com|curity scan)|(?:tress tes|urveybo)t|\.t\.a\.l\.k\.e\.r\.|afexplorer tl|itesnagger|hai)|n(?:o(?:kia-waptoolkit.* googlebot.*googlebot| browser)|e(?:(?:wt activeX; win3|uralbot\/0\.)2|ssus)|ameofagent|ikto)|f(?:a(?:(?:ntombrows|stlwspid)er|xobot)|(?:ranklin locato|iddle)r|ull web bot|loodgate|oobar/)|i(?:n(?:ternet(?: (?:exploiter sux|ninja)|-exprorer)|dy library)|sc systems irc search 2\.1)|g(?:ameBoy, powered by nintendo|rub(?: crawler|-client)|ecko\/25)|(myie2|libwen-us|murzillo compatible|webaltbot|wisenutbot)|b(?:wh3_user_agent|utch__2\.1\.1|lack hole|ackdoor)|d(?:ig(?:imarc webreader|out4uagent)|ts agent)|(?:(script|sql) inject|$botname/$botvers)ion|(msie .+; .*windows xp|compatible \; msie)|h(?:l_ftien_spider|hjhj@yahoo|anzoweb)|(?:8484 boston projec|xmlrpc exploi)t|u(?:nder the rainbow 2\.|ser-agent:)|(sogou develop spider|sohu agent)|(?:(?:d|e)browse|demo bot)|zeus(?: .*webster pro)?|[a-z]surf[0-9][0-9]|v(?:adixbot|oideye)|larbin@unspecified|\bdatacha0s\b|kenjin spider|; widows|rsync|\\\r))]=],
			operator = "REGEX"
		},
		opts = { skipend = true, score = 3 },
		action = "SCORE",
		description = "Rogue website crawler"
	}
}

function _M.rules()
	return _rules
end

return _M
