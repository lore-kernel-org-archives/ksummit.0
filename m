Return-Path: <catalin.marinas@arm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1A930988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 10:56:58 +0000 (UTC)
Received: from collaborate-mta1.arm.com (fw-tnat.austin.arm.com
	[217.140.110.23])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C8AF020214
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 May 2014 10:56:57 +0000 (UTC)
Date: Sun, 4 May 2014 11:56:12 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140504105612.GB15180@arm.com>
References: <CAOesGMghcsw+xeGRBoTSNwWnADTJfF=hgtFUQfnu9L3Lg1cCjA@mail.gmail.com>
	<1583732.MIn3aNNoTS@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1583732.MIn3aNNoTS@vostro.rjw.lan>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"dvhart@dvhart.com" <dvhart@dvhart.com>,
	"Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

Hi Rafael,

On Sat, May 03, 2014 at 01:05:21AM +0100, Rafael J. Wysocki wrote:
> On Friday, May 02, 2014 02:42:07 PM Olof Johansson wrote:
> > I labelled this as a tech topic. Feel free to upgrade it to a workshop
> > or relabel it if needed. Base set of people I'd like to see involved
> > are:
> > 
> > * Darren Hart, who is doing things to make ACPI more DT-like for
> > embedded use cases.
> > * Rafael Wysocki, who also has had some ideas on how to make the
> > models fit together.
> > * Grant Likely, since he's in the intersection as well.
> > * Greg K-H would be much appreciated as well, since he'd have to deal
> > with some of the resulting mess.
> > * Dave Woodhouse would also be good to have there.

BTW, that's a topic of high interest to me as well (as arm64 maintainer
and lots of ACPI patches coming my way ;)).

> > All solutions above have trade-offs, and neither is an obvious choice.
> > We could likely spend between now and KS arguing this every day on the
> > lists if we wanted to. Getting the people into the same room for a
> > couple of hours is likely to be a much better way to resolve it.
> 
> For what it's worth, we are working on extending ACPI to allow DT-style
> information to be included into ACPI tables.

That's good as long as it's covered by some future ACPI spec. My biggest
worry on the ARM(64) side is hw vendors being inventive and coming up
with their own (less than standard) ACPI+DT mix.

-- 
Catalin
