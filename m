Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 56677947
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 17:23:14 +0000 (UTC)
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 018B420207
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 17:23:13 +0000 (UTC)
Received: by mail-pa0-f51.google.com with SMTP id kq14so1253256pab.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 04 May 2014 10:23:13 -0700 (PDT)
Date: Sun, 4 May 2014 10:23:18 -0700
From: Olof Johansson <olof@lixom.net>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140504172318.GB4418@quad.lixom.net>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan>
	<20140504105612.GB15180@arm.com>
	<1655995.vGcMNE2bRf@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1655995.vGcMNE2bRf@vostro.rjw.lan>
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

On Sun, May 04, 2014 at 02:19:55PM +0200, Rafael J. Wysocki wrote:
> On Sunday, May 04, 2014 11:56:12 AM Catalin Marinas wrote:
> > Hi Rafael,
> 
> Hi,
> 
> > On Sat, May 03, 2014 at 01:05:21AM +0100, Rafael J. Wysocki wrote:
> > > On Friday, May 02, 2014 02:42:07 PM Olof Johansson wrote:
> > > > I labelled this as a tech topic. Feel free to upgrade it to a workshop
> > > > or relabel it if needed. Base set of people I'd like to see involved
> > > > are:
> > > > 
> > > > * Darren Hart, who is doing things to make ACPI more DT-like for
> > > > embedded use cases.
> > > > * Rafael Wysocki, who also has had some ideas on how to make the
> > > > models fit together.
> > > > * Grant Likely, since he's in the intersection as well.
> > > > * Greg K-H would be much appreciated as well, since he'd have to deal
> > > > with some of the resulting mess.
> > > > * Dave Woodhouse would also be good to have there.
> > 
> > BTW, that's a topic of high interest to me as well (as arm64 maintainer
> > and lots of ACPI patches coming my way ;)).
> 
> Sure. :-)
> 
> > > > All solutions above have trade-offs, and neither is an obvious choice.
> > > > We could likely spend between now and KS arguing this every day on the
> > > > lists if we wanted to. Getting the people into the same room for a
> > > > couple of hours is likely to be a much better way to resolve it.
> > > 
> > > For what it's worth, we are working on extending ACPI to allow DT-style
> > > information to be included into ACPI tables.
> > 
> > That's good as long as it's covered by some future ACPI spec.
> 
> There are three levels of this.  First, we need an ACPI configuration object
> to put the information into and getting this part into the spec is one of
> the goals.  Second, the format of the information has to be specified and
> that will probably require an auxiliary document the creation of which is
> the next goal.  Finally, we need a specification of the DT bindings for the
> IP blocks in question, but that's necessary for entirely DT-based firmware too.

Some of these things are simple, and some of them can get really really messy:

How are you anticipating handling power management? On x86, will you need to be
able to handle controlling regulators and clocks through common frameworks? If
so, do you have any proposed solutions for how to handle references to those
since firmware usually keeps ownership of those hardware blocks in your
environments?

Same for pin control, where we have frameworks in the kernel on ARM, but
x86/ACPI tends to let firmware handle it all...

> > My biggest worry on the ARM(64) side is hw vendors being inventive and coming
> > up with their own (less than standard) ACPI+DT mix.
> 
> That's everyone's worry so to speak.  It would be good if we could point them
> in the right direction sooner rather than later.


-Olof
