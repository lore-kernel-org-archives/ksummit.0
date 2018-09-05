Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 01F7E15B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:45:19 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7BA07FE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  5 Sep 2018 16:45:18 +0000 (UTC)
Message-ID: <1536165914.3627.17.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: paulmck@linux.vnet.ibm.com, Steven Rostedt <rostedt@goodmis.org>
Date: Wed, 05 Sep 2018 17:45:14 +0100
In-Reply-To: <20180905162007.GO4225@linux.vnet.ibm.com>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<20180905113715.GJ9781@sirena.org.uk>
	<20180905150315.GA10819@linux.vnet.ibm.com>
	<20180905115008.22e3d21f@gandalf.local.home>
	<20180905162007.GO4225@linux.vnet.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
 bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2018-09-05 at 09:20 -0700, Paul E. McKenney wrote:
> On Wed, Sep 05, 2018 at 11:50:08AM -0400, Steven Rostedt wrote:
> > On Wed, 5 Sep 2018 08:03:15 -0700
> > "Paul E. McKenney" <paulmck@linux.vnet.ibm.com> wrote:
> > 
> > > I am one of those strange people who rebase in order to improve
> > > bisectability.  But one reason I can do that is that I have
> > > relatively
> > > few patches, and it gets harder the more patches I am
> > > carrying.  I suppose
> > > that someone (not me!) could rebase -stable to make it more
> > > bisectable,
> > 
> > How would rebasing it make stable more bisectable? Once you rebase,
> > you don't have a tree that use to work? Although I guess you may
> > find the commit that caused the problem better. But rebasing
> > creates a lot of other issues, I would not recommend rebasing
> > stable, as that would totally break the RT stable tree work flow.
> 
> Instead of leaving the buggy commit and the span where the bug
> exists, you rebase the fix into the original buggy fix.

We do this in SCSI as well, but only if the tree hasn't yet been
submitted to Linus.  The technical term is folding.  It's obviously
better to fix buggy commits that haven't gone upstream because it
improves bisectability.

> And I bet that rebasing -stable would cause no end of broken glass in
> a great many  projects.  ;-)

If others rely on your tree, rebasing is harder and must be done more
carefully and with co-ordination, but it's not impossible assuming you
have a problem big enough.  Again, it's an expediency based trade off.

James
