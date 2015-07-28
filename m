Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CE99E483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 22:09:19 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 023307C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 22:09:18 +0000 (UTC)
Message-ID: <55B7FD82.8010806@sonymobile.com>
Date: Tue, 28 Jul 2015 15:09:06 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
In-Reply-To: <20150723154014.GD11162@sirena.org.uk>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Cc: Pavel Machek <pavel@ucw.cz>, "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>,
	=?windows-1252?Q?=22Andersson=2C_?= =?windows-1252?Q?Bj=F6rn=22?=
	<Bjorn.Andersson@sonymobile.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/23/2015 08:40 AM, Mark Brown wrote:
> On Thu, Jul 23, 2015 at 08:42:51AM -0400, Steven Rostedt wrote:
> 
>> Although is this something to be a core topic or a tech topic? Does
>> this affect all subsystems, or just a set of drivers? Note, a core
>> topic wont get as much time for discussion as a tech topic would.
> 
> It's basically all subsystems that get impacted, at the minute I'd say
> it's more a plan of action and process discussion than a technical one
> though in the context of KS planning that's quite probably the same
> thing.
> 
>> Also, what is expected to be solved at KS?
> 
> Tim Bird (Cced) has been running some sessions at other conferences
> scoping the problem and discussing ways to move forward on this, another
> similar session might be useful.

As Mark says, I've been working on almost exactly this topic for several
months now.  Last year I conducted a survey investigating obstacles
that developers (mostly corporate product developers) have in mainlining.
There are lots of non-technical issues that are worth working on (version
gap, corporate incentives, training, etc.), but which are outside
the scope of the kernel summit.

There are also some technical areas where I think coordinated
effort might be useful, to identify deficiencies and collaborate on
progress.  These might be worth discussing at the summit.

In March of this year, I analysed code from several shipping phones
(representing a number of different SoCs, including both ARM and
Intel-architecture CPUs), and found that most products have between
1.2 and 3 million lines of code out-of-tree.  We are still in progress of
finding patterns of out-of-treeness, to inform decisions about technical
projects going forward.

There is now a wiki page at:
See http://elinux.org/Kernel_areas_of_focus_for_mainlining
In particular it has a table showing certain areas that tend to have
a lot of out-of-tree code (e.g. most phones have between 80K to
100K of lines of wireless driver support out-of-mainline)

IMHO it would be useful to discuss these areas, to see if there
are technical reasons for these deficiencies, and work to resolve
them.
 -- Tim
 
