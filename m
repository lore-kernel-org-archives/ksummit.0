Return-Path: <josh@joshtriplett.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5E38D947
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 22:50:51 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
	[217.70.183.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CAD302022E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 22:50:50 +0000 (UTC)
Date: Fri, 9 May 2014 15:50:40 -0700
From: Josh Triplett <josh@joshtriplett.org>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20140509225040.GD5725@thin>
References: <20140502204141.GB24108@thunk.org>
	<20140502210123.GA13536@redhat.com>
	<CA+5PVA6oTQy5j1XyQG_h6Vk1kW8UrA_j61ouPfm_kvZMQ9ZqEA@mail.gmail.com>
	<1399066024.2202.72.camel@dabdike>
	<CA+5PVA7VQzdMRuMARmAR=c6MnDg-bFg16Hgk=bCNzKmokRUAPQ@mail.gmail.com>
	<CALCETrVZJ5swLixykH_qn4K7GDDRqKkXtPeJqdM1LXToRW+uyA@mail.gmail.com>
	<20140506171807.GA20776@cloud>
	<CALCETrUDEi=Q2k_CMZGdizfUkTpObKrggP-XPsCOBndRGuX7tQ@mail.gmail.com>
	<536D1CCE.3060708@zytor.com>
	<CALCETrVr=Tv+LyTRPg-ntTJPKtO3aQWEoDEVSwCm5RpOStkWPA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrVr=Tv+LyTRPg-ntTJPKtO3aQWEoDEVSwCm5RpOStkWPA@mail.gmail.com>
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

On Fri, May 09, 2014 at 01:37:22PM -0700, Andy Lutomirski wrote:
> The best arguments I've heard so far for why the kernel needs to try
> to protect itself against root are:
> 
> 1. MS/Verisign demand it.
> 
> 2. It's annoying to fool a user into thinking that they just booted
> Some Other OS when they're really running Linux without kernel help.
> NB: no one has claimed that it's impossible AFAIK, just that it's
> annoyingly complicated.
> 
> I like neither of these arguments.  #1 is politics, not security, and
> #2 seems like security by annoying the attacker.

#1 is useful if you care about supporting users booting Linux on modern
systems without changing BIOS configuration.

As for #2, I agree that it's just "annoying the attacker", and I don't
want to quibble over the value of that in this particular case, but keep
in mind that a *lot* of security is "annoying the attacker"; you can
rather precisely quantify how secure a system is by how much it costs to
purchase exploited systems or similar.  (See "An Agenda for Empirical
Cyber Crime Research", USENIX ATC 2011.)  And in very much the same
spirit as "I don't have to run faster than the bear", a lot of security
(against broad-scale exploits rather than targeted threats) is about
making it more painful to exploit a system than to do a
social-engineering attack or a physical security breach.

- Josh Triplett
