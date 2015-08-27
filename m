Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 25ED5D89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Aug 2015 22:49:55 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 9EC28102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 27 Aug 2015 22:49:54 +0000 (UTC)
Message-ID: <1440715792.2196.149.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Stephen Hemminger <stephen@networkplumber.org>
Date: Thu, 27 Aug 2015 15:49:52 -0700
In-Reply-To: <20150827150849.36404678@urahara>
References: <alpine.LRH.2.20.1508241335370.1294@namei.org>
	<CACRpkdbJ15sA0xXz1XN8Z-636-tijT1UNDgf1J+sM9Zm1anSkA@mail.gmail.com>
	<CAGXu5j+XR7TJSgbTNYhCP0YhvvNwA5HtEL=xKCR9GUttzb06Uw@mail.gmail.com>
	<1440446941.2201.32.camel@HansenPartnership.com>
	<alpine.LRH.2.20.1508250612360.22949@namei.org>
	<alpine.DEB.2.11.1508242220570.15006@nanos>
	<alpine.LRH.2.20.1508250753470.26669@namei.org>
	<CAGXu5jK_4=w_e81askreLCGHXA3B3juYf-a+SNsA1j53yzt8Hw@mail.gmail.com>
	<20150824235409.GD13446@thunk.org>
	<CAGXu5j+6y1-efqzQdNdz2jCDQy=sWjfk7CuyC62djV9n=RDaWA@mail.gmail.com>
	<20150827150849.36404678@urahara>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Emily Ratliff <eratliff@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] grsecurity and kernel hardening
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2015-08-27 at 15:08 -0700, Stephen Hemminger wrote:
> Looks like grsecurity has had a turn for the worse
>  http://www.theregister.co.uk/2015/08/27/grsecurity/

We could add this to the legal discussion.  The above article reads like
a classic how not to do things right.  Trademarks aren't like copyrights
or patents, they're really tricky things to use successfully.  You can't
register them and only pull them out of a drawer when someone does
something you don't like.  For trademarks, you have to establish your
mark and the norms first.  This usually requires some sort of policy
statement, the most critical element of which is (especially if the mark
is actually part of the distributed open source base or a tag attached
to the patch set) what acceptable and non-acceptable use is.  In
particular, you can't allow people to use it all over the place and then
later turn around and decide X use is a trademark infringement because
you now decide you don't like it or whoever's using it hasn't paid you
any money.

The Iceweasel controversy notwithstanding, Mozilla seems to have about
the most effective Open Source trademark practises.  They certainly
demonstrate that a trademark gives you more control than you'd otherwise
expect over a permissively licensed project.

>  But can't say that I blame him for being mad about vendors
>  using without giving back...

We also have to be a little careful about this.  The strict requirements
are whatever the licence says and nothing more.  We like it when vendors
give back, either by becoming contributing members of the community or
sponsoring conferences, or even just giving developers cash, but we have
to acknowledge that they don't do it because they're required to, or
even because they feel morally obliged to ... they mostly do it because
they have sound business reasons for doing so.

Getting a vendor to see that they have sound business reasons for giving
back is a specialised skill usually practised over long time period and
only successfully by a few people in the industry.  It doesn't happen
automatically and certainly not because you have a dummy spit over
someone taking something you advertised as "for free" and having the
temerity to expect not to have to pay you.

Perhaps it would be useful to run a "how to get your company to regard
open source as an investment" type training course, but it's probable
that the kernel summit isn't the best venue.

James
