Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8EEEE949
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Aug 2016 20:19:33 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 31835ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 24 Aug 2016 20:19:33 +0000 (UTC)
Message-ID: <1472069969.2570.18.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Greg KH <greg@kroah.com>, Wolfram Sang <wsa@the-dreams.de>
Date: Wed, 24 Aug 2016 16:19:29 -0400
In-Reply-To: <20160824195759.GA643@kroah.com>
References: <e315013e77cc851b040b5b5f4fe9f0bf@motives.com>
	<20160824130832.GA28564@kroah.com>
	<1472048738.7013.8.camel@localhost.localdomain>
	<20160824143932.roapysz7wmxof6fj@x> <20160824173949.GD30853@kroah.com>
	<20160824183050.GA19740@katana> <20160824195759.GA643@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2016-08-24 at 15:57 -0400, Greg KH wrote:
> On Wed, Aug 24, 2016 at 08:30:50PM +0200, Wolfram Sang wrote:
> > > So we need be aware that if the kernel summit starts discussing
> > > legal
> > > issues, we open ourselves up to a much wider range of "issues"
> > > than we
> > > have ever had before.
> > 
> > I'd think the variety of opinions will make it impossible to reach
> > a
> > common statement or conclusion anyhow (as this thread shows as
> > well).
> > But to inform (interested) people what is happening right now and
> > discuss it, why not? What kind of issues could come from that?
> 
> When someone involved in a legal suit talks to other people about it,
> those other people, in some countries/jurisdictions, can then be 
> called in to testify / be disposed as part of that suit by the other 
> member of it.
> 
> I do my best to _never_ have to be disposed in anything, and so 
> should everyone else, as what can be asked in that can be _very_ wide
> ranging and is almost always used in ways that you never want or 
> intended it to be.

To clarify for everyone: the specific danger here is that if we have a
discussion on legal issues, any statement you make as part of the
discussion is discoverable as evidence in a court proceeding, meaning
that if one side or the other thinks whatever you said can help them,
they can call you to repeat it in court.  Worse still, such a statement
could potentially be portrayed as "the opinion of the community" if
we're not careful.  Lawyers become trained to recognise what is safe to
say in this regard and what isn't, but we, as kernel developers, aren't
used to guarding our opinions in this way.

Everyone has to bear this in mind, and that's why, when Christoph gave
his statement about VMware, we didn't actually allow any discussion.

The way companies escape from this is to have a corporate lawyer be
part of the conversation so it's protected under attorney client
privilege.  However, we have no such protections. (In case you're
wondering, the lawyer who's present actually has to be your counsel,
it's not enough that they simply be a lawyer).

James
