Return-Path: <gnomes@lxorguk.ukuu.org.uk>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 814917137
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 15:37:56 +0000 (UTC)
Received: from fuzix.org (www.llwyncelyn.cymru [82.70.14.225])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A72477F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 15:37:55 +0000 (UTC)
Date: Mon, 8 Oct 2018 16:37:48 +0100
From: Alan Cox <gnomes@lxorguk.ukuu.org.uk>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20181008163748.0e68cba5@alans-desktop>
In-Reply-To: <1538883209.4088.14.camel@HansenPartnership.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861851.4088.7.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF80516F31@USCULXMSG01.am.sony.com>
	<1538883209.4088.14.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Tim.Bird@sony.com, linux-kernel@vger.kernel.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH 2/2] code-of-conduct: Strip the
 enforcement paragraph pending community discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

 
> I happen to think that the fact that the TAB cannot compel where it
> cannot persuade is a huge strength of the system because it means
> there's no power structure to subvert if someone were interested in
> using it to try to impose their own viewpoint on the community.  But
> that's just my opinion and I did write the TAB charter, so I'm probably
> biased in this viewpoint.

The TAB can't handle it anyway because the privacy promise about
reporting is incompatible with reality for three reasons (and I bet there
are more)

1. Things like the EUCD can force almost all but the name to be revealed
to the person complained about as the tab has no legal privilege.
2. There are lots of laws in lots of locations where some allegations
*MUST* be reported to law enforcement.
3. We know from things like the catholic church debacle that serious
allegations need to be fast-pathed to the legal system - yet the privacy
promises are incompatible with that.

It ever got really nasty then the scenario that unfolds is potentially
the following

Developer A makes a complaint about developer B
Developer B's employer fires developer B

Developer B then uses things like the EUCD to force the TAB to provide
the complaint details (with personal data redacted) and the TAB has no
real defence as it's not legally privileged. 

Developer B then sues developer A, the TAB for all sorts of things, the
LF and their employer.

In court what's going to happen to the TAB ?

= Where is your written policy ?
= Who approved it and reviewed it for legal compliance ?
= What are your qualifications in this area ?
= Where are the full minutes of the decision ?
= Which of you work for rival companies ?
= What personal connections do or your frends have to A and B ?

Needless to say answers like 'we don't have one, nobody, none, umm I think
there's an email thread' are not going to go down well.

This sort of mess works with big company HR departments because they've
got lawyers and they have lots of written process. If it hits a court
then B's employer is able to point at all their rules and policies,
employment contracts etc. All of the decisions were either legally
privileged or minuted properly. The people who made the decisions have
appropriate professional qualifications.

The TAB can't enforce anything. If maintainers decide to carry on
accepting patches from someone what can they do ?

So both patches:

Reviewed-by: Alan Cox <alan@llwyncelyn.cymru>
