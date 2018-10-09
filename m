Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 679B5C00
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Oct 2018 10:07:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CCDCD4DA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Oct 2018 10:07:41 +0000 (UTC)
Date: Tue, 9 Oct 2018 07:07:36 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Message-ID: <20181009070736.42b8fea5@coco.lan>
In-Reply-To: <CABVU7+uQCcREk1V_SUve64BA8b=Qz0npUJwXgg=eae4H9++mdA@mail.gmail.com>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon>
	<CAKON4Owevjg=wyQrxJ4z7x=hUryKGhHkXB=htL5G6MhuruwZ-Q@mail.gmail.com>
	<CABVU7+t4VDg6p4Kq-P6U+epOOoeiy8E5XJ0gxDAJTyfW7h6Y5Q@mail.gmail.com>
	<20181008183423.4bdcaeea@coco.lan>
	<CABVU7+uQCcREk1V_SUve64BA8b=Qz0npUJwXgg=eae4H9++mdA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Mon, 8 Oct 2018 16:20:05 -0700
Rodrigo Vivi <rodrigo.vivi@gmail.com> escreveu:

> > > > What is going to happen when someone gets fired after being accused of
> > > > violating the CoC and they lose $20M in options? INAL but it appears
> > > > to me that the CoC has created lawsuit exposure for all of the
> > > > maintainers. This CoC really needs to be vetted by the kernel legal
> > > > team.
> > > >  
> > >
> > > you mean If someone gets fired for violating respect to the other human
> > > being in public?!
> > > I'm afraid this already happen around the world. And I never saw anyone
> > > blaming news or social networks for that. The cause of this consequence  
> > is  
> > > on the speech itself, not on the channels....  
> >
> > No, that's not what's written at the letter of the CoC. It is written
> > there that:
> >
> > If developer A violates the CoC insulting developer B, the maintainer C is
> > responsible to take actions against developer B.
> >
> > If maintainer C doesn't take actions[1], developer B can complain to
> > TAB against maintainer C (and not against developer A).
> >
> > In other words, at the light of this CoC, the one that should be held
> > into account is not the one that lacked respect. It is someone else
> > that was unable to "educate" developer A.
> >
> > [1] It should be notice that, even the best good will maintainer
> > won't be able to enforce the CoC, as several actions are impossible to
> > handle for an e-mail-based workflow: maintainer B can't edit or
> > remove all copies of an email that developer A posted on a public
> > mailing list and their mirrors. Even his capability of banning developer A
> > is limited, as he usually doesn't maintain the e-mail server. So, he has
> > to ask someone else to do that.
> >  
> 
> Thanks for explaining like this. Maybe now I understand why some people
> are freaking out about it.
> 
> But in my simplified example just add the Maintainer as conniving.

That is just plain wrong. You can blame the Internet infrastructure
for not allowing removing or editing the text of a previously sent
e-mail. Another e-mail technology, developed back at the eighties
would have allowed such changes (X.400).

In any case, the maintainer can't really take any action about that.
What it is sent, can't be edited anymore. Also, usually, if one
tries to reply to a troll who posts insults, all you get is more
insults. There are plenty of examples like that at public mailing lists.

> So, a company would fire maintainer for being conniving with an harassment
> or any other unacceptable behavior, right?!
> 
> So, Developer A shouts racists words, maintainer C doesn't C the email.
> Developer B complains to the TAB against Developer A and Maintainer C.

No. If you read the CoC carefully, you'll see that it doesn't
have anything saying that TAB would be taking any action against
Developer A. The only person that this CoC who would be punished,
on this CoC's "enforcement" section is the maintainer.

-

See, this CoC was conceived with Github in mind. There, both the
author of a comment/issue/PR/... and the maintainers of a project have
full rights to edit or remove any post.

Also, there is a company behind Github that needs a way to protect
themselves from being sued if someone post harassment messages there
(because this is illegal on several places).

On a Github like service, the hole of the people who will prevent illegal
posts are the ones that own or co-maintain projects. If they're not
willing to do it, then Github can impose bans.

In other words, if someone comes after Github due to an harassment
post, they have legal ways to impose penalties to the ones that
aren't enforcing their policies. The same applies to a project
owner that gave commit grants to other developers: they can also
ban them if, for example, a PR with some harassment text on
it gets merged.

-

The way it is, the way it is currently written, I can't see how this
particular CoC would work for e-mails, as technically, there's no way
for anyone to remove a post that was already sent. It won't work either
for Bugzilla or Trac, as there nobody can edit or remove any entry
(not even the author). People can only add new comments.

I'd say that, even wiki pages (using Mediawiki, for example)
won't fully complain. There, people can be banned and contents
can be edited, but if one looks at the page history, the old
content can still be seen.

In other words, if we use this particular CoC, we need to either
to fix it or to change our workflow to only use Github (or a similar
implementation with the same concepts in mind) and don't use
anymore e-mails, bugzilla, mediawiki, ...

Thanks,
Mauro
