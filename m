Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 59018CE4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Oct 2018 00:00:05 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BC9DA3F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Oct 2018 00:00:04 +0000 (UTC)
Message-ID: <1539216001.3462.1.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Date: Wed, 10 Oct 2018 17:00:01 -0700
In-Reply-To: <87efcxtmhf.fsf@xmission.com>
References: <1539202053.12644.8.camel@HansenPartnership.com>
	<87efcxtmhf.fsf@xmission.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [PATCH v2 0/3] code of conduct fixes
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, 2018-10-10 at 18:23 -0500, Eric W. Biederman wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> writes:
> 
> > Resend to show accumulated tags and also to add a third patch
> > listing the TAB as the reporting point as a few people seem to
> > want.  If it gets the same level of support, I'll send it in with
> > the other two.
> 
> 
> There is also:
> 
> > Our Responsibilities
> > ====================
> > 
> > Maintainers are responsible for clarifying the standards of
> > acceptable behavior and are expected to take appropriate and fair
> > corrective action in response to any instances of unacceptable
> > behavior.
> > 
> > Maintainers have the right and responsibility to remove, edit, or
> > reject comments, commits, code, wiki edits, issues, and other
> > contributions that are not aligned to this Code of Conduct, or to
> > ban temporarily or permanently any contributor for other behaviors
> > that they deem inappropriate, threatening, offensive, or harmful.
> 
> Which is very problematic.
> a) In append only logs like git we can not edit history.
>    Making it a mainters responsibility to edit the history, to do the
>    impossible is a problem.

Git isn't entirely append only.  We can do limited history changes by
rebasing.  Some trees do that quite a lot.  Github has this same
history problem, so certainly we could amend commits before they hit
Linus' tree but after that it isn't "fair corrective action" because it
can't be done technically.

> b) There are no responsibilities of for people who are not
> Maintainers.
>    That is another problem.

Yes, I don't disagree with this.  It's one of the huge problems with
this whole CoC thing: in a community which has apparent leaders but no
real power structure, conforming to a CoC becomes everyone's
responsibility not just the maintainers.

> c) The entire tone of the reponsibilities section is out of line with
> a
>    community where there are no enforcement powers only the power to
>    accept or not accept a patch.  Only the power to persuade not to
>    enforce.

Persuasion and Leadership go hand in hand.  I agree there's no backing
power to compel, but persuasive leaders are still not powerless. 
There's always potentially an outlier who simply won't listen and won't
be persuaded, but they're usually not members of the community either
...

> Overall in the discussions I have heard people talking about
> persuading, educating, and not feeding trolls.   Nowhere have I heard
> people talking about policing the community which I understand that
> responsiblity section to be talking about.

Policing is the wrong word: no-one has policing power.  However, we
still have persuasive power.  The point is there's a reasonable line
you can tread as a persuader.  Some very few people simply won't
listen, but we have, actually, excluded them before without a code of
conduct.

> Increasingly I am getting the feeling that this document does not the
> linux development community.  Perhaps a revert and trying to come up
> with better language from scratch would be better.

I'm open to pushing a revert instead. However, I think this one is
workable too if interpreted reasonably.

> I don't know how to rephrase that reponsibility section but if we
> don't go with the revert something looks like it need sot be done
> there.

That is an argument for keeping what we have ... these things are
difficult to write.

James
