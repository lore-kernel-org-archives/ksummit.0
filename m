Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3E5FDAC8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 22:53:25 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 064D070D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 22:53:23 +0000 (UTC)
Message-ID: <1562108000.29304.21.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Theodore Ts'o <tytso@mit.edu>
Date: Tue, 02 Jul 2019 15:53:20 -0700
In-Reply-To: <20190702224347.GJ3032@mit.edu>
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

On Tue, 2019-07-02 at 18:43 -0400, Theodore Ts'o wrote:
> On Tue, Jul 02, 2019 at 03:26:48PM -0700, James Bottomley wrote:
> > git is our upstream for version control and our upstream has
> > already
> > had this as a feature since 2014.  Trying to go to upstream  5
> > years
> > later and ask them to change it is likely going to be a singularly
> > unsuccessful exercise, plus even in the unlikely event we can work
> > out
> > how to do it compatibly and without causing confusion and upstream
> > said
> > yes it would take another few years to propagate.
> 
> If we really want to use the Link: header, we should be able to do
> this without requiring any changes to git.
> 
> Step 1)   git config am.messageid true
> Step 2)   Write and install a .git/hooks/applypatch-msg script which
> 	  looks for Message-Id: and transmogrifies that line to a
> 	  Link: trailer, using the lore.kernel.org URL template
> Step 3)   Document this in Documentation/process.  For bonus points
> 	  create a script which automatically sets up the user's git
> 	  configuration by setting up am.messageid config and
> 	  installing the hook file.
> Step 4)   Profit

But we don't need the intermediate stages of that: Thomas already has a
hook that can pick the Message-Id out of the email and transform it
directly to a Link: tag (although I suspect it might be a pre-
applypatch hook).

The wider point was that if git would just capture the message-id then
we could use it and transform it to what we want to see.  The new
information is that git can do this, just as part of the body not the
metadata, which means we'd see it in the commit stream rather than
having to agree on the script and a hook and make everyone use it.

James
