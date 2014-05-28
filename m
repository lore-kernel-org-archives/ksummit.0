Return-Path: <lczerner@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8CFB5892
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 10:06:30 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 074AA1FA1F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 10:06:29 +0000 (UTC)
Date: Wed, 28 May 2014 12:06:25 +0200 (CEST)
From: =?ISO-8859-15?Q?Luk=E1=A8_Czerner?= <lczerner@redhat.com>
To: Wolfram Sang <wsa@the-dreams.de>
In-Reply-To: <20140528053749.GA2649@katana>
Message-ID: <alpine.LFD.2.00.1405281158180.2075@localhost.localdomain>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<20140528053749.GA2649@katana>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-771162446-1401271588=:2075"
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-771162446-1401271588=:2075
Content-Type: TEXT/PLAIN; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

On Wed, 28 May 2014, Wolfram Sang wrote:

> Date: Wed, 28 May 2014 07:37:49 +0200
> From: Wolfram Sang <wsa@the-dreams.de>
> To: Luká¨ Czerner <lczerner@redhat.com>
> Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
>     ksummit-discuss@lists.linuxfoundation.org
> Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
> 
> 
> > > The thing I'd like to see way more in the Linux ecosystem:
> > > 
> > > Paid reviewers/maintainers (selected people, no hiring offers). The
> > > number of developers increases faster than the number of quality
> > > keepers. So, the latter should be given the chance to focus on it, if
> > > they want to.
> > 
> > That does not make much sense to me. In order to review the code you
> > need to understand it and if you already understand the code, you
> > can write it as well.
> 
> Huh, have you ever maintained something? I couldn't write most of the
> drivers I get for I2C, because I simply don't have access to the
> hardware.

But the lack of HW was the one thing stopping you right ? Not the
lack of skills or knowledge. I am just saying that it's quite likely
that there are even less people with the skills who are willing to be
dedicated to review than developers who are willing to review
patches from time to time.

> Also, I it is one thing to get the driver working (dealing
> with HW bugs and documentation flaws) and another to get the driver
> proper (use proper kernal interfaces, coding style...).
> 
> > I do not think that having dedicated reviewers is realistic in the
> > long run.
> 
> Then, think more of dedicated maintainers: I don't know one maintainer
> who is not interested in hacking as well. Which is needed, of course.
> There are reviews which make flaws in the subsystem core obvious.
> Usually, the original patch comitter is only interested in this reviewed
> patch and does not want to deal with the core. So, this kind of work is
> up to the maintainer. If maintainers are backed off, more of this work
> could be done IMO.

Are you suggesting that existing maintainers should either stop
hacking, or give up maintainership in favour of those who does not
want to write code ? :) Sorry for exaggerating, but I do not think
that having people dedicated solely to review is realistic.

We should rather focus on encouraging developers to review more.

> 
> > However encouraging reviewers by treating reviewed-by tag with equal
> > "respect" as signed-off-by seems like the better way.
> 
> In general, yes. As I said before, "Reviewed-by" tags need to be trusted
> what also takes some time and effort in the beginning.
> 
> 
--8323328-771162446-1401271588=:2075--
