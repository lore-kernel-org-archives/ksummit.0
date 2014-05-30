Return-Path: <linville@tuxdriver.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id AB79F9A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 14:45:11 +0000 (UTC)
Received: from smtp.tuxdriver.com (charlotte.tuxdriver.com [70.61.120.58])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EE79520114
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 14:45:10 +0000 (UTC)
Date: Fri, 30 May 2014 10:34:50 -0400
From: "John W. Linville" <linville@tuxdriver.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20140530143449.GC24054@tuxdriver.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
	<20140529182753.GJ25041@thunk.org>
	<700704721.GMn4j9GJx9@vostro.rjw.lan>
	<CAOesGMgmFkMRurwKdLpmFSOqz-tZ51Phws5ZAA71dieVbHPRFQ@mail.gmail.com>
	<20140529233004.GB11741@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20140529233004.GB11741@kroah.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Reforming Acked-by (was Re: [TOPIC]
 Encouraging more reviewers)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, May 29, 2014 at 04:30:04PM -0700, Greg KH wrote:
> On Thu, May 29, 2014 at 02:03:16PM -0700, Olof Johansson wrote:
> > What are we really trying to fix here? Is the current process really
> > broken or are we trying to create more process that's not needed for
> > some other reason?
> 
> I think the latter.
> 
> Somehow, we seem to be constantly increasing our rate of change, are
> people thinking we are having problems here?  If so, exactly where?
> This thread has taken an odd turn into trying to make some new kind of
> process for an unknown issue (i.e. the people on this list are not going
> to recognize the reviewers more, it's up to you to educate your managers
> / company more.)
> 
> Are maintainers who deal with huge number of patches (i.e. 1000+ a year)
> crying out for help that this is somehow going to reduce their burden?
> 
> I don't think so, but hey, what do I know about this development
> process...

I think I'm in that group.  FWIW, all this talk of new and vaguely
differentiated "Foo-by" tags gives me heartburn.  I try to be
dilligent about collecting any such tags that get posted before a
patch is merged, but it can be a bit painful.

Those tags still come down to trust anyway -- just
because someone replies with a Reviewed-by, Tested-by,
Built-and-run-with-ten-other-pathes-by or whatnot doesn't provide
any guarantee at all unless you know the person and trust what they
are saying in the first place.

John
-- 
John W. Linville		Someday the world will need a hero, and you
linville@tuxdriver.com			might be all we have.  Be ready.
