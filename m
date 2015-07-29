Return-Path: <heiko@sntech.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DFE1798
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 08:18:06 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [95.129.55.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 27EC8E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 29 Jul 2015 08:18:05 +0000 (UTC)
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 29 Jul 2015 10:18 +0200
Message-ID: <2263990.AArGKpLqUn@diego>
In-Reply-To: <55B82222.3010409@samsung.com>
References: <20150723105726.GC30929@amd> <55B7FD82.8010806@sonymobile.com>
	<55B82222.3010409@samsung.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Pavel Machek <pavel@ucw.cz>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>,
	=?ISO-8859-1?Q?Andersson=2C_Bj=F6rn?= <Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Am Mittwoch, 29. Juli 2015, 09:45:22 schrieb Krzysztof Kozlowski:
> On 29.07.2015 07:09, Tim Bird wrote:
> > On 07/23/2015 08:40 AM, Mark Brown wrote:
> >> On Thu, Jul 23, 2015 at 08:42:51AM -0400, Steven Rostedt wrote:
> >>> Although is this something to be a core topic or a tech topic? Does
> >>> this affect all subsystems, or just a set of drivers? Note, a core
> >>> topic wont get as much time for discussion as a tech topic would.
> >> 
> >> It's basically all subsystems that get impacted, at the minute I'd say
> >> it's more a plan of action and process discussion than a technical one
> >> though in the context of KS planning that's quite probably the same
> >> thing.
> >> 
> >>> Also, what is expected to be solved at KS?
> >> 
> >> Tim Bird (Cced) has been running some sessions at other conferences
> >> scoping the problem and discussing ways to move forward on this, another
> >> similar session might be useful.
> > 
> > As Mark says, I've been working on almost exactly this topic for several
> > months now.  Last year I conducted a survey investigating obstacles
> > that developers (mostly corporate product developers) have in mainlining.
> > There are lots of non-technical issues that are worth working on (version
> > gap, corporate incentives, training, etc.), but which are outside
> > the scope of the kernel summit.
> > 
> > There are also some technical areas where I think coordinated
> > effort might be useful, to identify deficiencies and collaborate on
> > progress.  These might be worth discussing at the summit.
> > 
> > In March of this year, I analysed code from several shipping phones
> > (representing a number of different SoCs, including both ARM and
> > Intel-architecture CPUs), and found that most products have between
> > 1.2 and 3 million lines of code out-of-tree.  We are still in progress of
> > finding patterns of out-of-treeness, to inform decisions about technical
> > projects going forward.
> > 
> > There is now a wiki page at:
> > See http://elinux.org/Kernel_areas_of_focus_for_mainlining
> > In particular it has a table showing certain areas that tend to have
> > a lot of out-of-tree code (e.g. most phones have between 80K to
> > 100K of lines of wireless driver support out-of-mainline)
> 
> Did anyone see successful attempts of mainlining such vendor code? I
> mean mainlining by individuals, not by vendor company itself.

I started the Rockchip ARM support in this manner ;-) . My main job is hacking 
on the mentioned vendor kernels, Finding the quirks after everybody put their 
out-of-tree stuff into it, so doing mainline is for me always a means of 
balance in terms of clean code, having a nice process to follow and a lot of 
great people to learn from. So I'm doing mainline as a means to learn and 
grow.


> It is a difficult task, especially without datasheets but it's possible.
> At least for some drivers.
> 
> If there were such efforts, I would be curious what obstacles he/she
> encountered (except a common one - missing datasheet/specs) and how he
> can be helped?

The dubious code quality Laurent already mentioned in another mail - aka you 
normally cannot upstream vendor-drivers directly.

For example in the vendor kernel, the clock tree was 150K of C code per soc 
and hard to read at all. So in a first step I did "reverse-engineer" the code 
from the GPL'ed source release and built a register map out of it [0].

So getting the clock tree right to what it is today was one of the biggest 
obstacles. Another was pinctrl, which in retrospect is sub-optimal.


So I guess the big issues are the big core systems which you essentially _need 
to get right_ from the start, as everything else builds on it. And with dt-
bindings you get issues if stuff needs to be redone later.


On the other hand, Rockchip SoCs have the benefit of seeming to use a lot of 
external IPs (dw-uart, dw-mmc, dw-hdmi, etc), so a lot of the later drivers 
get comparatively easy.



[0] 
https://docs.google.com/document/d/1voaR9Xk3lisCQIG3ThySOSnSHBUequljQYnceFlr53w/edit
[Public and linked to already way before any involvement from Rockchip itself, 
so does not fall under an NDA, but also unchanged since then]
