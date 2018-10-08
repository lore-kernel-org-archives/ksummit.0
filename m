Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EB9CE734E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 21:35:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0910F808
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 21:35:27 +0000 (UTC)
Date: Mon, 8 Oct 2018 18:35:17 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@gmail.com>
Message-ID: <20181008183423.4bdcaeea@coco.lan>
In-Reply-To: <CABVU7+t4VDg6p4Kq-P6U+epOOoeiy8E5XJ0gxDAJTyfW7h6Y5Q@mail.gmail.com>
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon>
	<CAKON4Owevjg=wyQrxJ4z7x=hUryKGhHkXB=htL5G6MhuruwZ-Q@mail.gmail.com>
	<CABVU7+t4VDg6p4Kq-P6U+epOOoeiy8E5XJ0gxDAJTyfW7h6Y5Q@mail.gmail.com>
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

Em Thu, 4 Oct 2018 12:21:42 -0700
Rodrigo Vivi <rodrigo.vivi@gmail.com> escreveu:

> On Thu, Oct 4, 2018 at 12:06 PM jonsmirl@gmail.com <jonsmirl@gmail.com>
> wrote:
> 
> > On Thu, Oct 4, 2018 at 2:32 PM Laurent Pinchart
> > <laurent.pinchart@ideasonboard.com> wrote:  
> > >
> > > Hi Jon,
> > >
> > > On Thursday, 4 October 2018 19:23:33 EEST jonsmirl@gmail.com wrote:  
> > > > I would highly recommend getting the new CoC reviewed and approved by
> > > > some of the very smart lawyers that help out the Linux community.  I
> > > > would also recommend discussing the Brendan Eich situation at Ksummit.
> > > > A situation like this needs to be planned for since an improper
> > > > response will make things much worse leading to legal challenges.
> > > >
> > > > Some random articles to refresh everyone's memory...
> > > >  
> > https://www.telegraph.co.uk/finance/newsbysector/mediatechnologyandtelecoms/  
> > > >  
> > digital-media/10743456/Mozilla-chief-Brendan-Eich-steps-down-over-gay-marria  
> > > > ge-row.html
> > > >  
> > https://www.theguardian.com/commentisfree/2014/apr/07/brendan-eich-has-the->
> > right-to-fight-gay-rights-but-not-to-be-mozillas-ceo  
> > > > https://www.bbc.com/news/technology-26868536
> > > >  
> > https://www.telegraph.co.uk/technology/technology-topics/10745283/Brendan-Ei  
> > > >  
> > ch-is-a-homophobe-Im-a-lesbian-and-neither-of-us-deserves-to-lose-our-jobs.h  
> > > > tml  
> > >
> > > We're facing a textbook case that has a probability of generating heated
> > > discussions no lower than 100%. I remember having a pretty strong  
> > opinion on  
> > > the topic when it came under public scrutiny (and while I generally  
> > don't mind  
> > > discussing it, I won't disclose that opinion here as that's entirely
> > > irrelevant). The more interesting part was that waiting for the debate  
> > to cool  
> > > down gave me time to think, and realize that what is often perceived as a
> > > black-and-white situation most often turns out to be more complex than
> > > initially perceived.
> > >
> > > One point that I would like to explore is thus how we can take the time  
> > needed  
> > > to solve such matters when the mob is waiting outside of the courtroom  
> > with  
> > > tar and feathers. I don't want to discuss here what our response to such  
> > a  
> > > case should be, but the process that we should follow to come up with a
> > > response. It is of paramount importance in my opinion for the body  
> > tasked with  
> > > handling those issues to follow a process that ensures it will be able  
> > to keep  
> > > a cool head and have enough time available to think the response  
> > carefully.
> >
> > What is going to happen when someone gets fired after being accused of
> > violating the CoC and they lose $20M in options? INAL but it appears
> > to me that the CoC has created lawsuit exposure for all of the
> > maintainers. This CoC really needs to be vetted by the kernel legal
> > team.
> >  
> 
> you mean If someone gets fired for violating respect to the other human
> being in public?!
> I'm afraid this already happen around the world. And I never saw anyone
> blaming news or social networks for that. The cause of this consequence is
> on the speech itself, not on the channels....

No, that's not what's written at the letter of the CoC. It is written
there that:

If developer A violates the CoC insulting developer B, the maintainer C is
responsible to take actions against developer B.

If maintainer C doesn't take actions[1], developer B can complain to
TAB against maintainer C (and not against developer A).

In other words, at the light of this CoC, the one that should be held
into account is not the one that lacked respect. It is someone else
that was unable to "educate" developer A.

[1] It should be notice that, even the best good will maintainer
won't be able to enforce the CoC, as several actions are impossible to
handle for an e-mail-based workflow: maintainer B can't edit or 
remove all copies of an email that developer A posted on a public
mailing list and their mirrors. Even his capability of banning developer A
is limited, as he usually doesn't maintain the e-mail server. So, he has
to ask someone else to do that.

Thanks,
Mauro
