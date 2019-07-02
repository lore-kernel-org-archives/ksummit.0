Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 45799CAB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 22:26:53 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 52EBE782
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 22:26:51 +0000 (UTC)
Message-ID: <1562106408.29304.11.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Thomas Gleixner <tglx@linutronix.de>
Date: Tue, 02 Jul 2019 15:26:48 -0700
In-Reply-To: <alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
References: <20263.1561993564@warthog.procyon.org.uk>
	<alpine.DEB.2.21.1907011735341.1802@nanos.tec.linutronix.de>
	<1561996215.3551.49.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907011945530.1802@nanos.tec.linutronix.de>
	<1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2019-07-03 at 00:07 +0200, Thomas Gleixner wrote:
> On Tue, 2 Jul 2019, James Bottomley wrote:
> 
> > On Tue, 2019-07-02 at 09:30 -0700, Kees Cook wrote:
> > > On Tue, Jul 02, 2019 at 08:51:53AM -0700, James Bottomley wrote:
> > > > Yes, I think we all agree on this.  The real question is
> > > > how.  If we make git do it, I think trivially Message-Id: can
> > > > become part of the optional metadata.  Or we could all use
> > > > commit hooks that add a link tag.  Personally I prefer the
> > > > former because it would be universally done with no effort but
> > > > I recognise it would take time to get the ecosystem change to
> > > > propagate.
> > > 
> > > I think this should be easy to implement in a general way. I
> > > suspect there wouldn't be much love for hard-coding the details,
> > > though, so maybe it would require per-developer git
> > > configuration. I imagine a general mapping would need to be:
> > > 
> > > list_email -> archive_url
> > > 
> > > i.e. if "$list_email" is in the To/Cc, then "git am" can easily
> > > insert the Message-Id into the "$archive_url". For example:
> > > 
> > > linux-kernel@vger.kernel.org -> https://lkml.kernel.org/r/%s
> > 
> > I don't want to admit to being the sucker who actually looking into
> > coding this today, so shall we just say I learned through
> > "contacts" that git already has this feature:
> > 
> > ---
> > commit a078f7321b02eb945b63804a80b0ba52c9da4ed3
> > Author: Paolo Bonzini <pbonzini@redhat.com>
> > Date:   Tue Nov 25 15:00:56 2014 +0100
> > 
> >     git-am: add --message-id/--no-message-id
> > ---
> > 
> > It's not quite as we would wish: it adds a 
> > 
> > Message-ID: <ID>
> > 
> > Tag to the commit.  For some reason its undocumented, but it's been
> > there since version 2.3.0.  I realise the format isn't what we've
> > been discussing, but if it's there we can use it ... and since it's
> > in a pretty early version we can all use it now.
> 
> Please no.
> 
> If we allow Message-ID just because git has that undocumented
> feature,

Actually, documentation was added in a later version, so in my 2.13 git
it's there.  It even has a config option to turn it on

am.messageid = 1

>  then we open the door for the next undocumented tag because XYZ has
> that other magic feature which creates 'This patch was sent with
> $Message-Id: <ID>'.

git is our upstream for version control and our upstream has already
had this as a feature since 2014.  Trying to go to upstream  5 years
later and ask them to change it is likely going to be a singularly
unsuccessful exercise, plus even in the unlikely event we can work out
how to do it compatibly and without causing confusion and upstream said
yes it would take another few years to propagate.

> We really don't want yet another version of tag for that purpose. The
> 'Link:' tag is documented and proven to be useful.

You were the one pushing this, do you really want to hold it up because
what's available isn't exactly what you want?

What's wrong with Kees' suggestion that we add a new config option to
determine how we display the tag?  The information is basically there
so a Message-Id: tag can be converted to any type of Link: tag you
like.

I'm going to be a lot more successful going to the git upstream and
saying we've already been using a Link tag for a while, so we'd like
your message-id to appear as a Link: for compatibility than I am going
to be to try to get them to add a Link: tag ...

James
