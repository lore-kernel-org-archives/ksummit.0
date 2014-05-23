Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 6BE62988
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 08:12:04 +0000 (UTC)
Received: from aserp1040.oracle.com (aserp1040.oracle.com [141.146.126.69])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 076451F90C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 May 2014 08:12:03 +0000 (UTC)
Date: Fri, 23 May 2014 11:11:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Andy Grover <agrover@redhat.com>
Message-ID: <20140523081146.GS15585@mwanda>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown> <537628ED.1020208@fb.com>
	<5376465F.2040508@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5376465F.2040508@redhat.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 16, 2014 at 10:09:51AM -0700, Andy Grover wrote:
> * If the maintainer is unresponsive, what recourse does a submitter
> have? (Is this written down somewhere?) Is taking recourse actually
> culturally acceptable? How would the gone-around maintainer treat
> future submissions?

You ping the maintainer after a month of no response.  If there is still
no response after month two then you try to send it through Andrew.

If the maintainer responds but requests changes then you have to do what
he says.  If the maintainer responds but just NAKs your patch, then
you're pretty much screwed.  If you really care, then you have to carry
those patches out of tree.

> 
> * At what point does it make sense to field a sub- or co-maintainer?

I don't maintain a git tree but the mechanical bit don't seem that hard
to me.  It's reviewing the code which is tricky.  All patches should be
going to a list (LKML doesn't count) so anyone can help review patches.

But how to get people to review each other's patches?

regards,
dan carpenter
