Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8CB907AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Jun 2014 11:24:12 +0000 (UTC)
Received: from v094114.home.net.pl (v094114.home.net.pl [79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 4D58A2022D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 12 Jun 2014 11:24:10 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Thu, 12 Jun 2014 13:41:37 +0200
Message-ID: <1999432.vk0R5DDNUy@vostro.rjw.lan>
In-Reply-To: <1402526161.2523.79.camel@dabdike.int.hansenpartnership.com>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<CAG4TOxPCX6mrUc4FGeUfQkCsXjWZjm=5ie3TjSXvSjT0oJps=A@mail.gmail.com>
	<1402526161.2523.79.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	David Vrabel <david.vrabel@citrix.com>,
	Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: Re: [Ksummit-discuss] Topic: Removal of code that is still in use
	by users but there is a better code.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wednesday, June 11, 2014 03:36:01 PM James Bottomley wrote:
> On Wed, 2014-06-11 at 15:26 -0700, Roland Dreier wrote:
> > On Wed, Jun 11, 2014 at 3:17 PM, James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:
> > > This would eventually become like CONFIG_EXPERIMENTAL before somebody
> > > put it out of its misery: a pointless thing which everybody enables.
> > 
> > Probably so.
> > 
> > > Could we just step back and ask what the burning need to do this (at
> > > least for drivers; I understand the ABI deprecation headache) is?  Most
> > > driver code for obsolete things harmlessly compiles; why bother trying
> > > to hunt them down and shoot them when they're not really causing
> > > offence?
> > 
> > Every time a developer wants to change a core API, that developer
> > needs to patch every driver that uses the API.  Every old, unused,
> > bitrotten driver we have in the tree is 100% wasted work, and often a
> > substantial amount of work because it's really hard even to understand
> > how those drivers are (mis)using the API being changed.
> 
> Well how often do we do that?  It's not like it's the most common
> activity.
> 
> Even when we do it, mostly the changes are mechanical and no-one really
> notices.  On the odd occasion we have to change the call properties of
> the API (usually because of locking or layering problems) it forces the
> question of whether the driver is in use or not.  Mostly you don't
> change the API and put the driver under CONFIG_BROKEN to see if anyone
> turns up to claim it.
> 
> In fact, we could document the above and call it our driver deprecation
> process.  I've done this occasionally in SCSI, but the fact it's so rare
> tends to make me think we don't really have that much of a problem.

I agree here.

Generally, if a kernel-wide change is being made for good reasons and something
gets in the way, it is a fair question to ask if that thing is actually used by
someone.  If it is not used by anyone, removing it may be regarded as part of
making the change.

Rafael
