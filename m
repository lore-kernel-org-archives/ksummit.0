Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 42F819B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:54:43 +0000 (UTC)
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D202A20357
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:54:42 +0000 (UTC)
Received: by mail-pa0-f54.google.com with SMTP id bj1so3394072pad.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 09 May 2014 10:54:42 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 9 May 2014 10:54:33 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Johannes Berg <johannes@sipsolutions.net>
Message-ID: <20140509175433.GA25690@roeck-us.net>
References: <20140509170709.GA9747@redhat.com> <20140509171954.GC8289@cloud>
	<1399656674.4136.12.camel@jlt4.sipsolutions.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1399656674.4136.12.camel@jlt4.sipsolutions.net>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 09, 2014 at 07:31:14PM +0200, Johannes Berg wrote:
> On Fri, 2014-05-09 at 10:19 -0700, josh@joshtriplett.org wrote:
> 
> > I'd like to see this topic as well.  I think we could do a lot better
> > here than we do.  And don't forget that GCC is one of our top static
> > analysis tools, if only because it's the only one *everyone* runs; that
> > includes both warnings and the possibility of shipping and building our
> > own GCC plugin.
> > 
> > I'd also like to nominate Christopher Li, for Sparse.
> 
> Seconded, I'm also interested in general in whether people still think
> sparse is useful and we should give it attention, or should focus more
> on really getting everything into gcc - we have a number of sparse
> warnings in very low-level header files that get used everywhere, for
> example the one I just fixed in [1] or the one I tried to fix but that
> ended up being buggy ([2]), but there doesn't seem to be much attention
> to these during the patch submission etc.
> 
I use it (together with smatch) as part of my automated sanity tests.

Guenter
