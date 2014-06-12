Return-Path: <linville@tuxdriver.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 29788934
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 01:30:22 +0000 (UTC)
Received: from smtp.tuxdriver.com (charlotte.tuxdriver.com [70.61.120.58])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 94A7E1F8AB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 13 Jun 2014 01:30:21 +0000 (UTC)
Date: Thu, 12 Jun 2014 09:27:57 -0400
From: "John W. Linville" <linville@tuxdriver.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20140612132756.GA4073@tuxdriver.com>
References: <20140610201236.GA21729@laptop.dumpdata.com>
	<53976840.40306@zytor.com> <20140611175433.GA10462@roeck-us.net>
	<CAErSpo5Hg4KXca-oysLyH0OfiDFLmmvFjJHWBVzELtvdr7zV7A@mail.gmail.com>
	<20140612075355.4b0d1f5a@canb.auug.org.au>
	<CALCETrXEZ-Z+Kqgs28RCe7r9M-+QhbR2tQdMtznDB2uwmSmvYA@mail.gmail.com>
	<1402525074.2523.71.camel@dabdike.int.hansenpartnership.com>
	<CAG4TOxPCX6mrUc4FGeUfQkCsXjWZjm=5ie3TjSXvSjT0oJps=A@mail.gmail.com>
	<1402526161.2523.79.camel@dabdike.int.hansenpartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1402526161.2523.79.camel@dabdike.int.hansenpartnership.com>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	David Vrabel <david.vrabel@citrix.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Wed, Jun 11, 2014 at 03:36:01PM -0700, James Bottomley wrote:
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

I think it happens often enough to be a valid concern.  There are
definitely wireless drivers (some which predate my tenure), that
still compile but which I strongly doubt are functional or used.
I've pushed some out of the tree from time to time, and I'll probably
continue to do so.  But in the meantime, it can be difficult to judge
what is used or not and what simply doesn't work because of a series
of subtle mistakes in patch bombs...

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.
