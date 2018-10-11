Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5259E9EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Oct 2018 03:12:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C92CCEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 11 Oct 2018 03:12:00 +0000 (UTC)
Date: Thu, 11 Oct 2018 00:11:55 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20181011001155.4ed20a52@coco.lan>
In-Reply-To: <1539216001.3462.1.camel@HansenPartnership.com>
References: <1539202053.12644.8.camel@HansenPartnership.com>
	<87efcxtmhf.fsf@xmission.com>
	<1539216001.3462.1.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH v2 0/3] code of conduct fixes
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 10 Oct 2018 17:00:01 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> On Wed, 2018-10-10 at 18:23 -0500, Eric W. Biederman wrote:
> > James Bottomley <James.Bottomley@HansenPartnership.com> writes:
> >   
> > > Resend to show accumulated tags and also to add a third patch
> > > listing the TAB as the reporting point as a few people seem to
> > > want.  If it gets the same level of support, I'll send it in with
> > > the other two.  
> > 
> > 
> > There is also:
> >   
> > > Our Responsibilities
> > > ====================
> > > 
> > > Maintainers are responsible for clarifying the standards of
> > > acceptable behavior and are expected to take appropriate and fair
> > > corrective action in response to any instances of unacceptable
> > > behavior.
> > > 
> > > Maintainers have the right and responsibility to remove, edit, or
> > > reject comments, commits, code, wiki edits, issues, and other
> > > contributions that are not aligned to this Code of Conduct, or to
> > > ban temporarily or permanently any contributor for other behaviors
> > > that they deem inappropriate, threatening, offensive, or harmful.  
> > 
> > Which is very problematic.
> > a) In append only logs like git we can not edit history.
> >    Making it a mainters responsibility to edit the history, to do the
> >    impossible is a problem.  
> 
> Git isn't entirely append only.  We can do limited history changes by
> rebasing.  Some trees do that quite a lot.  Github has this same
> history problem, so certainly we could amend commits before they hit
> Linus' tree but after that it isn't "fair corrective action" because it
> can't be done technically.

We should discuss more about this during MS/KS. Even before pushing upstream, 
it is a problem on some subsytems, as sub-maintainers and driver developers
may have issues with rebases.

I'm sure maintainers will do rebases if they think it is worth enough,
provided that it won't break things, but rebases should be the exception,
not the rule.

So, I would add on a FAQ (or at the CoC itself) that maintainers won't
do git rebases due to CoC. So, people complaining about CoC violations
inside patches should reply ASAP, in order for the maintainer to be
able to see it *before* merging the patch on his tree.

> > Overall in the discussions I have heard people talking about
> > persuading, educating, and not feeding trolls.   Nowhere have I heard
> > people talking about policing the community which I understand that
> > responsiblity section to be talking about.  
> 
> Policing is the wrong word: no-one has policing power.  However, we
> still have persuasive power.  The point is there's a reasonable line
> you can tread as a persuader.  Some very few people simply won't
> listen, but we have, actually, excluded them before without a code of
> conduct.

Yes, but this particular CoC assumes that maintainer has policing power.

This needs to be reviewed. For now, I would get rid of

	"have the right and responsibility"

in favor of something lighter:

	"should"

Later we may need something else. 

> 
> > Increasingly I am getting the feeling that this document does not the
> > linux development community.  Perhaps a revert and trying to come up
> > with better language from scratch would be better.  
> 
> I'm open to pushing a revert instead. However, I think this one is
> workable too if interpreted reasonably.

Agreed.

> > I don't know how to rephrase that reponsibility section but if we
> > don't go with the revert something looks like it need sot be done
> > there.  
> 
> That is an argument for keeping what we have ... these things are
> difficult to write.

A simple change like the above (plus this /3 patch series) should work for
now, but, IMHO, this CoC model is too bound to a centralized web-based
site-hosted development model, lacking ways for it to work with
de-centralized e-mail based workflows.

For next Kernels, we may need to either replace it by something else
or do more changes on it, in order for it to make sense with our
workflow.

Thanks,
Mauro
