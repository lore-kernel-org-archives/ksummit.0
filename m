Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7C4F6D7E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 23:33:19 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8224F70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  2 Jul 2019 23:33:18 +0000 (UTC)
Message-ID: <1562110396.29304.35.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Theodore Ts'o <tytso@mit.edu>, Kees Cook <keescook@chromium.org>
Date: Tue, 02 Jul 2019 16:33:16 -0700
In-Reply-To: <20190702231858.GK3032@mit.edu>
References: <1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu> <201907021559.FEC3922@keescook>
	<20190702231858.GK3032@mit.edu>
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

On Tue, 2019-07-02 at 19:18 -0400, Theodore Ts'o wrote:
> On Tue, Jul 02, 2019 at 04:04:31PM -0700, Kees Cook wrote:
> > > Step 1)   git config am.messageid true
> > 
> > This is a lossy action: we don't know which list the ID came from
> > (e.g.
> > many things are sent to subsystem lists and not lkml).
> 
> Why do we need to care which list the ID came from?  Many messages
> are
> cc'ed to multiple lists that are archived on lore.kernel.org.  And it
> doesn't matter:
> 
> 	lore.kernel.org/r/<message-id>
> 
> ... will work without needing to know which list it was sent to.

I think the concern is creating a link that doesn't exist because lore
doesn't archive the list.  For instance this produces a 404:

https://lore.kernel.org/r/1561044605.7970.5.camel@HansenPartnership.com

But this works

http://marc.info/?i=1561044605.7970.5.camel@HansenPartnership.com

James
