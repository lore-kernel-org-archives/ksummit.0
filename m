Return-Path: <keescook@chromium.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9A984265
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 23:04:34 +0000 (UTC)
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
	[209.85.215.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 96C0C70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 23:04:33 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id z75so138634pgz.5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 02 Jul 2019 16:04:33 -0700 (PDT)
Date: Tue, 2 Jul 2019 16:04:31 -0700
From: Kees Cook <keescook@chromium.org>
To: Theodore Ts'o <tytso@mit.edu>
Message-ID: <201907021559.FEC3922@keescook>
References: <alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190702224347.GJ3032@mit.edu>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On Tue, Jul 02, 2019 at 06:43:47PM -0400, Theodore Ts'o wrote:
> On Tue, Jul 02, 2019 at 03:26:48PM -0700, James Bottomley wrote:
> > git is our upstream for version control and our upstream has already
> > had this as a feature since 2014.  Trying to go to upstream  5 years
> > later and ask them to change it is likely going to be a singularly
> > unsuccessful exercise, plus even in the unlikely event we can work out
> > how to do it compatibly and without causing confusion and upstream said
> > yes it would take another few years to propagate.
> 
> If we really want to use the Link: header, we should be able to do
> this without requiring any changes to git.
> 
> Step 1)   git config am.messageid true

This is a lossy action: we don't know which list the ID came from (e.g.
many things are sent to subsystem lists and not lkml).

> Step 2)   Write and install a .git/hooks/applypatch-msg script which
> 	  looks for Message-Id: and transmogrifies that line to a
> 	  Link: trailer, using the lore.kernel.org URL template

I think the lorifier.py[1] mentioned earlier has 90% of the "step 2"
logic, including caching the lore list mappings. Is there a "git am" hook
we could build on instead? /me looks. Yes; seems to be "applypatch-msg"?
Unclear if the email headers are included...

[1] https://github.com/danrue/lorifier

-- 
Kees Cook
