Return-Path: <Bjorn.Andersson@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C947480
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 23:07:50 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 685488B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 23:07:49 +0000 (UTC)
Date: Tue, 28 Jul 2015 16:07:43 -0700
From: Bjorn Andersson <bjorn.andersson@sonymobile.com>
To: Tim Bird <tim.bird@sonymobile.com>
Message-ID: <20150728230743.GO4753@usrtlx11787.corpusers.net>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <55B7FD82.8010806@sonymobile.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue 28 Jul 15:09 PDT 2015, Tim Bird wrote:

> On 07/23/2015 08:40 AM, Mark Brown wrote:
> > On Thu, Jul 23, 2015 at 08:42:51AM -0400, Steven Rostedt wrote:
> > 
> >> Although is this something to be a core topic or a tech topic? Does
> >> this affect all subsystems, or just a set of drivers? Note, a core
> >> topic wont get as much time for discussion as a tech topic would.
> > 
> > It's basically all subsystems that get impacted, at the minute I'd say
> > it's more a plan of action and process discussion than a technical one
> > though in the context of KS planning that's quite probably the same
> > thing.
> > 
> >> Also, what is expected to be solved at KS?
> > 
> > Tim Bird (Cced) has been running some sessions at other conferences
> > scoping the problem and discussing ways to move forward on this, another
> > similar session might be useful.
> 
[..]
> In particular it has a table showing certain areas that tend to have
> a lot of out-of-tree code (e.g. most phones have between 80K to
> 100K of lines of wireless driver support out-of-mainline)
> 

In the Xperia Z3 we have a bcm4339 and I managed to get that up and
running with the brcmf driver on mainline last week - pending Qualcomm
regulator support and 1 pending patch in mmc.

For some of our other devices we have various Qualcomm based chips and
there's progress towards getting those up to speed on mainline as well
(wcn36xx).

Regards,
Bjorn
