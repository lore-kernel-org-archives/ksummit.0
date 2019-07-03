Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C1E7EF5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 04:51:03 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2D2C670D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 04:51:01 +0000 (UTC)
Message-ID: <1562129458.29304.94.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Theodore Ts'o <tytso@mit.edu>
Date: Tue, 02 Jul 2019 21:50:58 -0700
In-Reply-To: <20190703041602.GB19593@mit.edu>
References: <37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu> <201907021559.FEC3922@keescook>
	<20190702231858.GK3032@mit.edu>
	<1562110396.29304.35.camel@HansenPartnership.com>
	<20190703041602.GB19593@mit.edu>
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

On Wed, 2019-07-03 at 00:16 -0400, Theodore Ts'o wrote:
> On Tue, Jul 02, 2019 at 04:33:16PM -0700, James Bottomley wrote:
> > 
> > I think the concern is creating a link that doesn't exist because
> > lore
> > doesn't archive the list.  For instance this produces a 404:
> > 
> > https://lore.kernel.org/r/1561044605.7970.5.camel@HansenPartnership
> > .com
> > 
> > But this works
> > 
> > http://marc.info/?i=1561044605.7970.5.camel@HansenPartnership.com
> 
> Shouldn't we fix this by making sure lore archives the linux-scsi
> list?  :-)

Well, it has been mentioned, yes ...

> More seriously, I this is going to be a general problem, since there
> may very well be some lists that won't be archived on marc.info.  So
> using a bare Message-Id isn't going to solve this problem.  It seems
> the best solution will be bringing all of the kernel mailing lists
> into lore.kernel.org.

My thought was actually a message-id is more descriptive because it can
be fed into any archive (or even google) to find the email.  However,
it's also easy to strip the message-id out of the lore url and do the
same, so my only weak objection is the URL would be expected to be
functional and the chances are there will always be some patch on some
list that isn't in the archive yet.

James
