Return-Path: <lurodriguez@suse.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BB869ABF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 20:38:33 +0000 (UTC)
Received: from mx2.suse.de (cantor2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 25A61FD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 20:38:33 +0000 (UTC)
Date: Thu, 9 Jul 2015 22:38:30 +0200
From: "Luis R. Rodriguez" <mcgrof@suse.com>
To: josh@joshtriplett.org
Message-ID: <20150709203830.GF7021@wotan.suse.de>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150709201127.GA3426@cloud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150709201127.GA3426@cloud>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Jul 09, 2015 at 01:11:27PM -0700, josh@joshtriplett.org wrote:
> Bonus if this is also wired into the 0day bot, so that you also find out
> if you introduce a new warning or error.

No reason to make bots do stupid work, if we really wanted to consider
this a bit more seriously the pipeline could be:

  mailing-list | coccinelle coccicheck| smatch | sparse | 0-day-bot

That would make the 0-day-bot chain only do sensible things. My undestanding
is that the 0-day bot now has Coccinelle integration though, not so sure
of the rest, if the pipline is already set up then the auto-patch-merging
is the only next step needed, can patchwork do that for some subsystem
already set up ? It should just be a matter of adding a git repo and
adding it to the list of 0-day bot git repos.

 Luis
