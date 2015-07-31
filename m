Return-Path: <Bjorn.Andersson@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2FE943C8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:56:52 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3EDB18D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 16:56:51 +0000 (UTC)
Date: Fri, 31 Jul 2015 09:56:45 -0700
From: Bjorn Andersson <bjorn.andersson@sonymobile.com>
To: Rob Herring <robherring2@gmail.com>
Message-ID: <20150731165645.GH6519@usrtlx11787.corpusers.net>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
	<20150728230743.GO4753@usrtlx11787.corpusers.net>
	<CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
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

On Fri 31 Jul 09:18 PDT 2015, Rob Herring wrote:

> On Tue, Jul 28, 2015 at 6:07 PM, Bjorn Andersson
> <bjorn.andersson@sonymobile.com> wrote:
> > On Tue 28 Jul 15:09 PDT 2015, Tim Bird wrote:
> >
> >> On 07/23/2015 08:40 AM, Mark Brown wrote:
> >> > On Thu, Jul 23, 2015 at 08:42:51AM -0400, Steven Rostedt wrote:
> >> >
> >> >> Although is this something to be a core topic or a tech topic? Does
> >> >> this affect all subsystems, or just a set of drivers? Note, a core
> >> >> topic wont get as much time for discussion as a tech topic would.
> >> >
> >> > It's basically all subsystems that get impacted, at the minute I'd say
> >> > it's more a plan of action and process discussion than a technical one
> >> > though in the context of KS planning that's quite probably the same
> >> > thing.
> >> >
> >> >> Also, what is expected to be solved at KS?
> >> >
> >> > Tim Bird (Cced) has been running some sessions at other conferences
> >> > scoping the problem and discussing ways to move forward on this, another
> >> > similar session might be useful.
> >>
> > [..]
> >> In particular it has a table showing certain areas that tend to have
> >> a lot of out-of-tree code (e.g. most phones have between 80K to
> >> 100K of lines of wireless driver support out-of-mainline)
> 
> Practically every vendor BSP I've looked at has Broadcom vendor driver
> copied in.
> 

Right, everyone inherits the bcmdhd driver from the android-common tree,
and uses that with some level of patching.

> > In the Xperia Z3 we have a bcm4339 and I managed to get that up and
> > running with the brcmf driver on mainline last week - pending Qualcomm
> > regulator support and 1 pending patch in mmc.
> 
> That's no small feat, but the real problem here are the feature gaps
> with mainline. Things I've heard about are switching between AP and
> client modes, P2P support, Android specific power optimized firmware,
> etc.

Right, I expect both a functional and a stability gap. But the my goal
is to get to the point where our WiFi team can work on these issues -
even if that's on the side of normal product development for the
foreseeable future.

> We do have to start somewhere, but as long as vendors are putting
> new features in their vendor drivers first and not getting pushback
> from customers to have mainline (or mainline + feature X) drivers it
> is going to be a loosing battle.
> 

Right, but we (Sony) are one of those customers' of Broadcomm and by
just having this running we are in a better state of pushing back.

For now I've only tested this on SDIO based bcm devices though, the
latest batch are PCIe; so we have to get back to that...

> The WiFi side is actually in better shape than BT. With BT, we have
> Bluedroid vs. BlueZ, no real DT bindings to describe BT chips (plenty
> of examples of how not to do it[1]), and chip specific userspace
> initialization (firmware loading, baudrate setup, power mgt).
> 

In other words, plenty of savings to be found :)

> NFC is even worse. What's in the kernel for NFC is generally not used
> by Android AFAIK.
> 

The NFC implementation used by Android is completely done in userspace.

The kernel parts looks promising, but last time I looked Android support
was only at the horizon of their todo list; with plenty of
not-so-android-compatible pieces put in before that (e.g DBUS)

Regards,
Bjorn
