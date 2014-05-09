Return-Path: <hpa@zytor.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id CC31E979
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 18:22:29 +0000 (UTC)
Received: from mail.zytor.com (terminus.zytor.com [198.137.202.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7F18B20344
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 18:22:29 +0000 (UTC)
Message-ID: <536D1CCE.3060708@zytor.com>
Date: Fri, 09 May 2014 11:22:06 -0700
From: "H. Peter Anvin" <hpa@zytor.com>
MIME-Version: 1.0
To: Andy Lutomirski <luto@amacapital.net>,
	Josh Triplett <josh@joshtriplett.org>
References: <5363E8E1.9030806@zytor.com>	<CAKgNAkjueYU9fyiZ46OZG9unOsGTkkJJF5ndVsR6KbLr=OFRAQ@mail.gmail.com>	<20140502193314.GA24108@thunk.org>
	<20140502194935.GA9766@redhat.com>	<20140502204141.GB24108@thunk.org>
	<20140502210123.GA13536@redhat.com>	<CA+5PVA6oTQy5j1XyQG_h6Vk1kW8UrA_j61ouPfm_kvZMQ9ZqEA@mail.gmail.com>	<1399066024.2202.72.camel@dabdike>	<CA+5PVA7VQzdMRuMARmAR=c6MnDg-bFg16Hgk=bCNzKmokRUAPQ@mail.gmail.com>	<CALCETrVZJ5swLixykH_qn4K7GDDRqKkXtPeJqdM1LXToRW+uyA@mail.gmail.com>	<20140506171807.GA20776@cloud>
	<CALCETrUDEi=Q2k_CMZGdizfUkTpObKrggP-XPsCOBndRGuX7tQ@mail.gmail.com>
In-Reply-To: <CALCETrUDEi=Q2k_CMZGdizfUkTpObKrggP-XPsCOBndRGuX7tQ@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Sarah Sharp <sarah@minilop.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Greg KH <gregkh@linuxfoundation.org>, Julia Lawall <julia.lawall@lip6.fr>,
	Darren Hart <darren@dvhart.com>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Kernel tinification: shrinking
 the kernel and avoiding size regressions
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 05/06/2014 10:31 AM, Andy Lutomirski wrote:
> 
> I have two main objections to "root != kernel".  The bigger is that
> I'd like to see the security argument for it so that people can think
> about whether it makes sense.  The smaller is that "root != kernel"
> isn't necessarily well-defined.
> 
> For example, should root be able to write to the filesystem from which
> the kernel loads?  Should root be able to kexec a new kernel, if that
> clears some key known to the current kernel in the process?  Should
> root be able to start a KVM instance that passes essentially all
> hardware through?  Should root be able to talk directly to the
> system's embedded controller?  Should root be able to read all
> physical memory?  How about reading just enough to learn the kernel's
> semi-secret randomized addresses?  How about running perf without
> restrictions?
> 
> In the past, the actual security goal seems to have been "root shall
> not be able to do anything that would anger Microsoft and/or
> Verisign", which is far-enough removed from actual security that I
> don't want it anywhere near my system.  But if I could have a
> reasonable policy that "root shall not be able to persistently
> compromise the machine", then I think this could be great.
> 
> Note that the latter goal does not actually require that root be
> unable to modify the running kernel.
> 

The first aspect of this is that the kernel needs to *be able to* lock
out root from select functions.  These things will be system
configuration dependent.

Once you have the separation you can define exceptions.

	-hpa
