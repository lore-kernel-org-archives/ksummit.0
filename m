Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B69E2483
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 11:49:43 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1B5D0FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 11:49:43 +0000 (UTC)
Message-ID: <1472212180.5189.28.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Greg KH <greg@kroah.com>, "Bradley M. Kuhn" <bkuhn@sfconservancy.org>
Date: Fri, 26 Aug 2016 07:49:40 -0400
In-Reply-To: <20160826005914.GA12749@kroah.com>
References: <e315013e77cc851b040b5b5f4fe9f0bf@motives.com>
	<20160824130832.GA28564@kroah.com>
	<1472052583.61594.577.camel@infradead.org>
	<20160824174724.GE30853@kroah.com> <20160824205011.GA31615@ebb.org>
	<20160824215447.GA5368@kroah.com> <20160825040619.GA32072@ebb.org>
	<20160826005914.GA12749@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2016-08-25 at 20:59 -0400, Greg KH wrote:
> We do it quietly, working with companies, from within, convincing 
> them that yes, this license that seems so strange and crazy is really
> worth following, not only because it is the law (companies ignore the 
> law all the time, it's called risk management), but because it turns 
> out it is the right thing to do from a business point of view.  It's 
> cheaper to do so, the benefit is huge, and the return on investment 
> is immense when they join together to work with us, instead of off in 
> their own bubble.

To give support to this point, I've spent most of my career working at
fairly high levels within various companies to build open source
strategies and business models for them.  There is a very solid
business rationale for any corporation both releasing code under the
GPL and for using projects which are under the GPL.  It takes a while
to communicate and work out the strategy, but if you do it properly,
everyone just gets why.  Take a certain Russian company as an example. 
 When I joined, that company really fancied permissive licences. 
 However, it also feared releasing code that its competition would then
use against it in the market.  The give back clause of the GPL has a
solid answer to this (your competition has to show you the code they
would compete with you on), so it took under a year for the GPL to
become the default licence for them to release projects they controlled
under.

This isn't a "comply or else" approach, it's a "here's the business
value you're missing with your current position approach".  I'm happy
to negotiate with any company on this point and, as Greg says, the fact
that I haven't sued anyone and that I do have a reputation in the
industry really helps to get my foot in the door when it comes to
persuading some entity to be more GPL friendly.

James
