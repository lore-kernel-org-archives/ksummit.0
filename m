Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3A78195A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 21:42:21 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 518AF2033B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 21:42:20 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Olof Johansson <olof@lixom.net>
Date: Sun, 04 May 2014 23:58:56 +0200
Message-ID: <3443151.uQIbj9tkE3@vostro.rjw.lan>
In-Reply-To: <20140504172318.GB4418@quad.lixom.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1655995.vGcMNE2bRf@vostro.rjw.lan>
	<20140504172318.GB4418@quad.lixom.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: "dvhart@dvhart.com" <dvhart@dvhart.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Driver model/resources, ACPI, DT,
	etc (sigh)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sunday, May 04, 2014 10:23:18 AM Olof Johansson wrote:
> On Sun, May 04, 2014 at 02:19:55PM +0200, Rafael J. Wysocki wrote:
> > On Sunday, May 04, 2014 11:56:12 AM Catalin Marinas wrote:

[cut]

> > > > For what it's worth, we are working on extending ACPI to allow DT-style
> > > > information to be included into ACPI tables.
> > > 
> > > That's good as long as it's covered by some future ACPI spec.
> > 
> > There are three levels of this.  First, we need an ACPI configuration object
> > to put the information into and getting this part into the spec is one of
> > the goals.  Second, the format of the information has to be specified and
> > that will probably require an auxiliary document the creation of which is
> > the next goal.  Finally, we need a specification of the DT bindings for the
> > IP blocks in question, but that's necessary for entirely DT-based firmware too.
> 
> Some of these things are simple, and some of them can get really really messy:
> 
> How are you anticipating handling power management? On x86, will you need to be
> able to handle controlling regulators and clocks through common frameworks? If
> so, do you have any proposed solutions for how to handle references to those
> since firmware usually keeps ownership of those hardware blocks in your
> environments?

There is no one simple answer here I'm afraid.

First, there is firmware and there are ACPI tables.  Technically, the ACPI tables
are provided by firware and used by the kernel.  If the kernel chooses not to use
and PM methods from the ACPI tables, it may very well decide to go for controlling
regulators and clocks directly if it knows how to do that.  [Note that the problem
arises only if the ACPI tables contain information on clocks and voltage regulators
*along* *with* ACPI PM methods for devices.]

On some platforms, however, ther is firware in addition to the ACPI tables (that
is, SMM on x86, for example) and *that* firmware may touch those things too in
which case it is better to use the ACPI methods for PM after all.

In my opinion the general rule should be that if ACPI PM methods are used, we
don't manipulate clocks and voltage regulators directly at the same time, because
that may lead to conflicts.  Moreover, the decision whether or not to use ACPI PM
methods cannot be made by individual drivers, because those methods for different
devices may not be mutually independent.  So there needs to be a way to determine
which approach to use upfront and to communicate that to all drivers.

So drivers should not refuse to work if certain PM-related controls are not
available to them and they should not blindly try to use those controls even if
they appear to be available.  If that is assured, things should work.

> Same for pin control, where we have frameworks in the kernel on ARM, but
> x86/ACPI tends to let firmware handle it all...

I would say if pin control information is made available to us by the firmware,
we can use it.  If it is not, we need to live without it.

> > > My biggest worry on the ARM(64) side is hw vendors being inventive and coming
> > > up with their own (less than standard) ACPI+DT mix.
> > 
> > That's everyone's worry so to speak.  It would be good if we could point them
> > in the right direction sooner rather than later.

Thanks!

-- 
I speak only for myself.
Rafael J. Wysocki, Intel Open Source Technology Center.
