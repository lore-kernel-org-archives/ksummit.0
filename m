Return-Path: <paul@pwsan.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 3A6FF85D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 01:12:08 +0000 (UTC)
Received: from utopia.booyaka.com (utopia.booyaka.com [74.50.51.50])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BAF091FA28
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 01:12:07 +0000 (UTC)
Date: Fri, 30 May 2014 01:12:06 +0000 (UTC)
From: Paul Walmsley <paul@pwsan.com>
To: Greg KH <greg@kroah.com>
In-Reply-To: <20140529233004.GB11741@kroah.com>
Message-ID: <alpine.DEB.2.02.1405300056000.8897@utopia.booyaka.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
	<20140529182753.GJ25041@thunk.org>
	<700704721.GMn4j9GJx9@vostro.rjw.lan>
	<CAOesGMgmFkMRurwKdLpmFSOqz-tZ51Phws5ZAA71dieVbHPRFQ@mail.gmail.com>
	<20140529233004.GB11741@kroah.com>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
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

On Thu, 29 May 2014, Greg KH wrote:

> On Thu, May 29, 2014 at 02:03:16PM -0700, Olof Johansson wrote:
> > What are we really trying to fix here? Is the current process really
> > broken or are we trying to create more process that's not needed for
> > some other reason?
> 
> I think the latter.
> 
> Somehow, we seem to be constantly increasing our rate of change, are
> people thinking we are having problems here?  If so, exactly where?

If "increasing our rate of change" was the only metric that we cared 
about, we wouldn't be discussing how to attract more reviewers.

But, on the other hand, if "increasing our rate of change" is the primary 
metric that's important to some folks, it might explain why we keep 
asking ourselves how to increase the review bandwidth every year, with 
little apparent positive result.

> This thread has taken an odd turn into trying to make some new kind of 
> process for an unknown issue (i.e. the people on this list are not going 
> to recognize the reviewers more, it's up to you to educate your managers 
> / company more.)

There's no additional process suggested for the Acked-by: discussion - so 
I guess you're not referring to the $SUBJECT thread, but rather to the 
"designated reviewer" proposal.

In that case, the issue seems fairly obvious:

   How do we encourage and recognize people who take the time to review 
   code, and who do it well from the point of view of maintainers?

...

Regarding the "managers/company" comment: I don't think it matters whether 
good reviews come from hobbyists or corporate employees - humans like 
being formally recognized for their contributions.


- Paul
