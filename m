Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A6D0EA04
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 18:37:49 +0000 (UTC)
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DC90BA8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 18:37:48 +0000 (UTC)
Received: by oibp128 with SMTP id p128so34343875oib.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 09 Jul 2015 11:37:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20150709150938.GF4265@tuxdriver.com>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150708140727.GH23515@io.lakedaemon.net>
	<trinity-9a36fcd4-7739-40a7-b5f9-0ecf88d0a331-1436383797204@3capp-gmx-bs35>
	<20150708221836.GN23515@io.lakedaemon.net>
	<20150709150938.GF4265@tuxdriver.com>
Date: Thu, 9 Jul 2015 20:37:48 +0200
Message-ID: <CAOesGMgo6YJDFYkD2USEe46dHtORWQv87o2OSoL645cnUR8U9g@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
To: "John W. Linville" <linville@tuxdriver.com>
Content-Type: text/plain; charset=UTF-8
Cc: Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, Jul 9, 2015 at 5:09 PM, John W. Linville <linville@tuxdriver.com> wrote:

> The bigger concern was that while I was wrangling everyone else's
> wireless patches, I had less and less time to do useful work elsewhere
> in the kernel.  I definitely have heard other maintainers express
> similar complaints, so this seems like a relatively common concern.
> It would be good to find and promote maintainer organizations within
> subsystems that are less likely to monopolize the mainainer's
> development time.  Previously we have had discussions of how the
> TIP tree is run, but I'm not sure that works well in every case.
> Are there other working models for this?

arm-soc is ran a bit like TIP, but not identically. It's usually Arnd
and I who handle most of it, with Kevin Kilman stepping in in
particular when Arnd goes on paternity leave.

On a whole, I can say that Arnd seems to have time left to deal with
other parts of the kernel and posting patches, since he spends most or
all of his work on upstream stuff while it's mostly a side activity
for me.

One thing that we're doing that's quite helpful is that we hand off
and mostly time-slice our maintainership, which means you get to be
off from it for a while every now and then. That's different from TIP
where they instead tend to have areas of the kernel that each
co-maintainer focuses on. The last couple of months I've been overly
busy with work and life and I've stepped away shortly, which our model
makes fairly easy to do. I'm re-engaging now though, since Arnd is out
on paternity leave again so me and Kevin are looking after things
through the fall.

We also don't engage all that much with developers directly -- mostly
new lead developers/maintainers on new platforms and people
upstreaming new SoC families. Most of the day to day work is delegated
to per-vendor maintainers below us and we work with them on the back
end and merge their branches.

I think we've talked about how we handle our work in the past, but I'd
be happy to elaborate more (here over email or elsewhere) if anyone
wants to learn more about what we've found to work pretty well for us.


-Olof
