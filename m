Return-Path: <tytso@mit.edu>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5225FC90
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 04:16:07 +0000 (UTC)
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B4F9470D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 04:16:06 +0000 (UTC)
Date: Wed, 3 Jul 2019 00:16:02 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20190703041602.GB19593@mit.edu>
References: <37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu> <201907021559.FEC3922@keescook>
	<20190702231858.GK3032@mit.edu>
	<1562110396.29304.35.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1562110396.29304.35.camel@HansenPartnership.com>
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

On Tue, Jul 02, 2019 at 04:33:16PM -0700, James Bottomley wrote:
> 
> I think the concern is creating a link that doesn't exist because lore
> doesn't archive the list.  For instance this produces a 404:
> 
> https://lore.kernel.org/r/1561044605.7970.5.camel@HansenPartnership.com
> 
> But this works
> 
> http://marc.info/?i=1561044605.7970.5.camel@HansenPartnership.com

Shouldn't we fix this by making sure lore archives the linux-scsi list?  :-)

More seriously, I this is going to be a general problem, since there
may very well be some lists that won't be archived on marc.info.  So
using a bare Message-Id isn't going to solve this problem.  It seems
the best solution will be bringing all of the kernel mailing lists
into lore.kernel.org.

						- Ted
