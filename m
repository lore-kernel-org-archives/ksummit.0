Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 727B7106B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Sep 2018 12:30:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 99D761A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 26 Sep 2018 12:30:39 +0000 (UTC)
Date: Wed, 26 Sep 2018 09:30:13 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180926093013.1ff3e2ef@coco.lan>
In-Reply-To: <1537830902.4935.1.camel@HansenPartnership.com>
References: <cf7638b9-c25d-d47e-f539-192a43268122@kernel.org>
	<1537830902.4935.1.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org, olof@lxom.net,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH-TOPIC] Review - Code of Conduct: Let's
 revamp it.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 24 Sep 2018 16:15:02 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> On Mon, 2018-09-24 at 08:24 -0600, Shuah Khan wrote:

> > What is offensive is a bit more clear. It will be learning curve for
> > us as a community and I do think we will get there. I believe our
> > kernel community at large is respectful and helpful.  
> 
> Actually, reading the above and agreeing with it I think the main
> problem is that what we're discussing as a Code of Conduct isn't one at
> all; it's really an anti Harassment policy.  That's why I think it
> doesn't cover the email reviews and things very well and why we're all
> concerned that it gives maintainers a load of responsibilities they
> can't really police.
> 
> Perhaps we could do with finding a middle ground between the previous
> code of conflict, which was fairly tailored to our environment but
> lacked some specifics and the new code of conduct which doesn't seem to
> be well tailored at all for us.

Agreed.

> Perhaps what we're looking for as the middle ground is something based
> on the Debian code of conduct (obviously with modifications for us):
> 
> https://www.debian.org/code_of_conduct

Interesting! They have a separate CoC for mailing lists:

	https://www.debian.org/MailingLists/#codeofconduct

With contain things that really matter to our workflow: don't send
SPAM, don't send OOT emails, use 80 chars, use English[1], etc.

[1] Out of curiosity, opening it here, their CoC was translated to
    my locale language. IMHO, this is a very good way of welcoming
    people that aren't native English speakers.

    At the Portuguese translation, it also mentions an specific
    mailing list for the ones that want to send messages using
    the Portuguese language (debian-user-portuguese).

    Obviously, this won't work for a CoC inside the git tree, but 
    perhaps some sort of automation could be done at the Sphinx
    html output in order to provide a translated version of it,
    if available on other languages.

> It seems to keep their discussions (even on debian-legal) within the
> bounds of civility.
> 
> Perhaps the one thing lacking in the Debian CoC is the actual
> responsibilities of a maintainer, so perhaps that's the bit we should
> concentrate on.
> 
> To try to kick off: as a maintainer, I'm happy to try to police
> civility by calling adverse behaviours out on the list and trying to
> get people to see each other's point of view in an argument (it's
> basically what the SCSI maintainers already do).  I do think we also
> have the ultimate sanction of asking for a ban of people who prove
> incorrigible (we've done that before on vger), but we should use it
> very sparingly.

I suspect that the way to handle to bad conduct may be different
along subsystems (and it depends on the actual situation). From my 
experience, at least at the media ML, usually silently ignoring
offensive emails work a way better than replying.

Usually, all people want when they put offensive text on emails
is attention. Not giving them attention is usually the best
punishment[2].

[2] One thing that perhaps could be done would be to add some CoC-aware
    anti-spam-kind-of-filtering heuristics at VGER (no idea if VGER infra
    would actually support it without introducing high delays). If a 
    message contain some wording that could fit into an offensive pattern,
    it could discard the message, replying to the sender an automatic
    message - with some fallback mechanism like notifying someone, in order 
    to cover false-positive cases. It may even have some temporary auto-ban
    feature, if the abusive behavior happens more than <x> times during
    a certain period of time. For sure that won't cover all cases, but
    it could be effective on obvious abusive cases.

We did have to ban once or twice incorrigible people via vger,
but, IMO this is a last resort, as the troll may resurrect using
a different email account (that actually happened once on media ML
too).

Thanks,
Mauro
