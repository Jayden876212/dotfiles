class Config {
	constructor() { }

	getThemeMode() {
		const themeModes = {
			'light': {
				name: 'Light',
				icon: 'light-mode'
			},
			'dark': {
				name: 'Dark',
				icon: 'dark-mode'
			},
			// 'auto': {
			// 	name: 'Auto',
			// 	icon: 'auto-mode',
			// 	lightHour: '7',
			// 	darkHour: '18'
			// }
		};

		return themeModes;
	}

	getFontFamily() {
		const fontFamilies = {
			'monospace': 'Fira Code Retina, Hack, Ubuntu Mono, Monaco, Lucida Console, monospace',
			'sans-serif': 'Inter, SF Pro Text, Roboto, Open Sans, sans-serif',
			'serif': 'serif'
		};

		return fontFamilies;
	}

	getQuickSearchData() {
		const quickSearchData = {
			'r/': {
				urlPrefix: 'https://reddit.com/r/'
			},
			// 'w/': {
			// 	urlPrefix: 'https://wikipedia.org/wiki/'
			// },
			// 'u/': {
			// 	urlPrefix: 'https://unsplash.com/s/photos/'
			// },
			'a/': {
				urlPrefix: 'https://allegro.pl/listing?string='
			},
			// 'e/': {
			// 	urlPrefix: 'https://ebay.com/sch/?_nkw='
			// },
			// 'y/': {
			// 	urlPrefix: 'https://youtube.com/results?search_query='
			// },
			// @manilarome are you fucking serious?
			// Like for a love of god I know you may like it, but pls don't put.. wha.... WHAT EVER THIS IS in your project. plz
			// 'n/': {
			// 	urlPrefix: 'https://nhentai.net/g/'
			// },
			'g/': {
				urlPrefix: 'https://github.com/search?q='
			}
		};

		return quickSearchData;
	}

	getSearchEngines() {

		const searchEngines = {
			'startpage': {
				name: 'Startpage',
				prefix: 'https://www.startpage.com/do/dsearch?query=',
				icon: 'startpage'
			},
			// 'qwant': {
			// 	name: 'Qwant',
			// 	prefix: 'https://www.qwant.com/?q=',
			// 	icon: 'qwant'
			// },
			// 'ecosia': {
			// 	name: 'Ecosia',
			// 	prefix: 'https://www.ecosia.org/search?q=',
			// 	icon: 'ecosia'
			// },
			// 'duckduckgo': {
			// 	name: 'Duckduckgo',
			// 	prefix: 'https://duckduckgo.com/?q=',
			// 	icon: 'duckduckgo'
			// },
			// 'yahoo': {
			// 	name: 'Yahoo',
			// 	prefix: 'https://search.yahoo.com/search?p=',
			// 	icon: 'yahoo'
			// },
			// 'google': {
			// 	name: 'Google',
			// 	prefix: 'https://www.google.com/search?q=',
			// 	icon: 'google'
			// },
			// 'bing': {
			// 	name: 'Bing',
			// 	prefix: 'https://www.bing.com/search?q=',
			// 	icon: 'bing'
			// }
		};

		return searchEngines;
	}

	getWebSites() {
		// Web menu
		// A list of websites that will be generated and put on the web menu
		const webSites = [
			{
				site: 'Reddit',
				icon: 'reddit',
				url: 'https://reddit.com/',
				category: 'social'
			},
			{
				site: 'Github',
				icon: 'github',
				url: 'https://github.com/',
				category: 'development'
			},
			// {
			// 	site: 'Facebook',
			// 	icon: 'facebook',
			// 	url: 'https://facebook.com/',
			// 	category: 'social'
			// },
			// {
			// 	site: 'Gmail',
			// 	icon: 'gmail',
			// 	url: 'https://mail.google.com/',
			// 	category: 'social'
			// },
			// {
			// 	site: 'Youtube',
			// 	icon: 'youtube',
			// 	url: 'https://youtube.com/',
			// 	category: 'media'
			// },
			// {
			// 	site: 'Google Drive',
			// 	icon: 'gdrive',
			// 	url: 'https://drive.google.com/',
			// 	category: 'cloud'
			// },
			// {
			// 	site: 'Twitter',
			// 	icon: 'twitter',
			// 	url: 'https://twitter.com/',
			// 	category: 'social'
			// },
			// {
			// 	site: 'Instagram',
			// 	icon: 'instagram',
			// 	url: 'https://instagram.com/',
			// 	category: 'social'
			// },
			// {
			// 	site: 'Bitbucket',
			// 	icon: 'bitbucket',
			// 	url: 'https://bitbucket.org/',
			// 	category: 'development'
			// },
			{
				site: 'Gitlab',
				icon: 'gitlab',
				url: 'https://gitlab.com/',
				category: 'development'
			},
			// {
			// 	site: 'Deviantart',
			// 	icon: 'deviantart',
			// 	url: 'https://deviantart.com/',
			// 	category: 'design'
			// },
			{
				site: 'Duckduckgo',
				icon: 'duckduckgo',
				url: 'https://duckduckgo.com/',
				category: 'search engine'
			},
			// {
			// 	site: 'Ecosia',
			// 	icon: 'ecosia',
			// 	url: 'https://ecosia.org/',
			// 	category: 'search engine'
			// },
			// {
			// 	site: 'Google',
			// 	icon: 'google',
			// 	url: 'https://google.com/',
			// 	category: 'search engine'
			// },
			{
				site: 'Wikipedia',
				icon: 'wikipedia',
				url: 'https://wikipedia.org/',
				category: 'information'
			},
			// {
			// 	site: 'Unsplash',
			// 	icon: 'unsplash',
			// 	url: 'https://unsplash.com/',
			// 	category: 'design'
			// },
			// {
			// 	site: 'Twitch',
			// 	icon: 'twitch',
			// 	url: 'https://twitch.tv/',
			// 	category: 'media'
			// },
			// {
			// 	site: 'Yahoo',
			// 	icon: 'yahoo',
			// 	url: 'https://mail.yahoo.com/',
			// 	category: 'search engine'
			// },
			// {
			// 	site: 'Bing',
			// 	icon: 'bing',
			// 	url: 'https://bing.com',
			// 	category: 'search engine'
			// },
			// {
			// 	site: 'Material.io',
			// 	icon: 'materialio',
			// 	url: 'https://material.io/',
			// 	category: 'design'
			// },
			// {
			// 	site: 'Netflix',
			// 	icon: 'netflix',
			// 	url: 'https://netflix.com/',
			// 	category: 'media'
			// },
			// {
			// 	site: 'Office 365',
			// 	icon: 'office365',
			// 	url: 'https://office.com/',
			// 	category: 'information'
			// },
			// {
			// 	site: '4chan',
			// 	icon: '4chan',
			// 	url: 'https://4chan.org/',
			// 	category: 'social'
			// },
			// {
			// 	site: 'Discord',
			// 	icon: 'discord',
			// 	url: 'https://discord.com/',
			// 	category: 'social'
			// },
			// {
			// 	site: 'Spotify',
			// 	icon: 'spotify',
			// 	url: 'https://spotify.com/',
			// 	category: 'media'
			// },
			// {
			// 	site: 'Ebay',
			// 	icon: 'ebay',
			// 	url: 'https://ebay.com/',
			// 	category: 'shop'
			// },
			// {
			// 	site: 'JSFiddle',
			// 	icon: 'jsfiddle',
			// 	url: 'https://jsfiddle.net/',
			// 	category: 'development'
			// },
			{
				site: 'ArchWiki',
				icon: 'archwiki',
				url: 'https://wiki.archlinux.org/',
				category: 'information'
			},
			// {
			// 	site: 'Figma',
			// 	icon: 'figma',
			// 	url: 'https://figma.com/',
			// 	category: 'design'
			// },
			{
				site: 'Stackoverflow',
				icon: 'stackoverflow',
				url: 'https://stackoverflow.com/',
				category: 'development'
			},
			{
				site: 'Stackexchange',
				icon: 'stackexchange',
				url: 'https://stackexchange.com/',
				category: 'development'
			},
			{
				site: 'Superuser',
				icon: 'superuser',
				url: 'https://superuser.com/',
				category: 'development'
			},
			// {
			// 	site: 'Calendar',
			// 	icon: 'calendar',
			// 	url: 'https://calendar.google.com/',
			// 	category: 'social'
			// },
			// {
			// 	site: 'Messenger',
			// 	icon: 'messenger',
			// 	url: 'https://messenger.com/',
			// 	category: 'social'
			// },
			// {
			// 	site: 'Icons8',
			// 	icon: 'icons8',
			// 	url: 'https://icons8.com/',
			// 	category: 'design'
			// },
			{
				site: 'Markdown Cheatsheet',
				icon: 'markdown',
				url: 'https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet/',
				category: 'development'
			},
			// {
			// 	site: 'Interneting is Hard',
			// 	icon: 'interneting-is-hard',
			// 	url: 'https://internetingishard.com/',
			// 	category: 'development'
			// },
			// {
			// 	site: 'Keycode',
			// 	icon: 'keycode',
			// 	url: 'https://keycode.info/',
			// 	category: 'development'
			// },
			// {
			// 	site: 'Soundcloud',
			// 	icon: 'soundcloud',
			// 	url: 'https://soundcloud.com/',
			// 	category: 'media'
			// },
			// {
			// 	site: 'Amazon',
			// 	icon: 'amazon',
			// 	url: 'https://amazon.com/',
			// 	category: 'shop'
			// },
			// {
			// 	site: 'Flaticon',
			// 	icon: 'flaticon',
			// 	url: 'https://flaticon.com/',
			// 	category: 'design'
			// },
			// {
			// 	site: 'Wikimedia Commons',
			// 	icon: 'commons',
			// 	url: 'https://commons.wikimedia.org/',
			// 	category: 'design'
			// },
			// {
			// 	site: 'MEGA',
			// 	icon: 'mega',
			// 	url: 'https://mega.nz/',
			// 	category: 'cloud'
			// },
			// {
			// 	site: 'MDN Web Docs',
			// 	icon: 'mdn',
			// 	url: 'https://developer.mozilla.org/',
			// 	category: 'development'
			// },
			// {
			// 	site: 'Qwant',
			// 	icon: 'qwant',
			// 	url: 'https://qwant.com/',
			// 	category: 'search engine'
			// },
			{
				site: 'Startpage',
				icon: 'startpage',
				url: 'https://startpage.com/',
				category: 'search engine'
			}
		];

		return webSites;
	}

	getPanelSites() {
		// Panel
		// A list of websites that will be generated and put on the Panel
		const panelSites = [
			// {
			// 	site: 'Reddit',
			// 	icon: 'reddit',
			// 	url: 'https://reddit.com/'
			// },
			// {
			// 	site: 'Github',
			// 	icon: 'github',
			// 	url: 'https://github.com/'
			// },
			// {
			// 	site: 'Facebook',
			// 	icon: 'facebook',
			// 	url: 'https://facebook.com/'
			// },
			// {
			// 	site: 'Gmail',
			// 	icon: 'gmail',
			// 	url: 'https://mail.google.com/'
			// },
			// {
			// 	site: 'Youtube',
			// 	icon: 'youtube',
			// 	url: 'https://youtube.com/'
			// },
			// {
			// 	site: 'GDrive',
			// 	icon: 'gdrive',
			// 	url: 'https://drive.google.com/'
			// },
			// {
			// 	site: 'Twitter',
			// 	icon: 'twitter',
			// 	url: 'https://twitter.com/'
			// },
			// {
			// 	site: 'Material.io',
			// 	icon: 'materialio',
			// 	url: 'https://material.io/'
			// }
		];

		return panelSites;
	}
}
