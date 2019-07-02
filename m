Return-Path: <tglx@linutronix.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8D25AEC2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 23:12:42 +0000 (UTC)
Received: from Galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DB4470D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 23:12:41 +0000 (UTC)
Date: Wed, 3 Jul 2019 01:12:36 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
In-Reply-To: <1562108000.29304.21.camel@HansenPartnership.com>
Message-ID: <alpine.DEB.2.21.1907030059230.1802@nanos.tec.linutronix.de>
References: <1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<1562108000.29304.21.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Tue, 2 Jul 2019, James Bottomley wrote:

> On Tue, 2019-07-02 at 18:43 -0400, Theodore Ts'o wrote:
> > On Tue, Jul 02, 2019 at 03:26:48PM -0700, James Bottomley wrote:
> > > git is our upstream for version control and our upstream has
> > > already
> > > had this as a feature since 2014.  Trying to go to upstream  5
> > > years
> > > later and ask them to change it is likely going to be a singularly
> > > unsuccessful exercise, plus even in the unlikely event we can work
> > > out
> > > how to do it compatibly and without causing confusion and upstream
> > > said
> > > yes it would take another few years to propagate.
> > 
> > If we really want to use the Link: header, we should be able to do
> > this without requiring any changes to git.
> > 
> > Step 1)   git config am.messageid true
> > Step 2)   Write and install a .git/hooks/applypatch-msg script which
> > 	  looks for Message-Id: and transmogrifies that line to a
> > 	  Link: trailer, using the lore.kernel.org URL template
> > Step 3)   Document this in Documentation/process.  For bonus points
> > 	  create a script which automatically sets up the user's git
> > 	  configuration by setting up am.messageid config and
> > 	  installing the hook file.
> > Step 4)   Profit
> 
> But we don't need the intermediate stages of that: Thomas already has a
> hook that can pick the Message-Id out of the email and transform it
> directly to a Link: tag (although I suspect it might be a pre-
> applypatch hook).

My workflow is not git-am based at all. My script converts a mbox to a
quilt series. That also picks up all tags from replies in mbox and adds the
Link from the message id to each patch.

I use that both for review and to polish stuff before I expose it to git
with git quiltimport and push it out.

But yes, I could easily convert that into a 'prepare mbox for git-am'
tool. I'm happy to do that.

But writing a script which converts the Message-ID tag which git can
generate into a 'Link: lore...' format for whatever git hook is appropriate
is not rocket science either.

Both solutions require the maintainer to do something extra. Ted's proposal
is perhaps more conveniant as it is a one time effort to add the script and
enable the am.messageid thing. But then probably most people have scripts
around git-am so adding it there is equally one time :)

Thanks,

	tglx
