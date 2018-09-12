Return-Path: <tony@atomide.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D9E8BF31
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 13:59:59 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 8621C63D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 13:59:59 +0000 (UTC)
Date: Wed, 12 Sep 2018 06:59:55 -0700
From: Tony Lindgren <tony@atomide.com>
To: Guenter Roeck <linux@roeck-us.net>
Message-ID: <20180912135955.GP5659@atomide.com>
References: <1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
	<1536706409.3511.14.camel@HansenPartnership.com>
	<20180911232249.GL5659@atomide.com>
	<1536708545.3511.18.camel@HansenPartnership.com>
	<CAMuHMdUTkrT6Jovw1wwCTQj3Cg+5yw5WPn5QKRNOhrcvB13s7g@mail.gmail.com>
	<1536755770.3506.3.camel@HansenPartnership.com>
	<3e6baddf-3e62-f6fe-4bbf-1a62694d4c96@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3e6baddf-3e62-f6fe-4bbf-1a62694d4c96@roeck-us.net>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

* Guenter Roeck <linux@roeck-us.net> [180912 13:42]:
> On 09/12/2018 05:36 AM, James Bottomley wrote:
> > 
> > Look, shit happens occasionally.  What then happens is that you get a
> > note from Stephen saying your tree is dropped for a day for crapping on
> > the carpet and you fix it.  -next still builds without you so I don't
> > get what all the fuss is about.  From my point of view the -next
> > process works very well and I don't see a need to complicate it with a
> > -next-next or a -pre-next or whatever.

Fine so I trust James and many maintainers to do proper testing before
next. And I do testing too for the stuff I queue. And in many cases the
damage is quite limited in case of issues.

But then we have constant stream of patches that affect everybody and cause
regressions that don't seem to have much testing done on them before they
hit next.

> Not sure if I agree with the "works very well" part. I would say it works,
> for the most part, decently well, and we would be in a much worse situation
> without it. I would hope for code in -next to be tested a bit better,
> and problems to be fixed faster, but one can not have everything.

I think we can do much better. If we get next into usable shape then more
people will use it for testing. And then the -rc cycle becomes easy as
things have been mostly done already in next. Well, at least for me the
-rc cycle is now much easier after doing constant testing with next.

After all, next is really our common development tree, right? :)

So "How to keep Linux next working and usable continuously" might actually
be a somewhat constructive topic to dicuss.

> However, I definitely agree that we don't need -next-next or -pre-next.
> That would not improve the situation at all; it would just create even
> more noise and result in people testing their code even less before
> publishing it.

We could still establish a standard naming for "please-test-me" type
branches. Then we would at least provide a trigger for the test scripts
to go test them.

Regards,

Tony
