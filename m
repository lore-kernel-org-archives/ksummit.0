Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 08BB6D13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 20:31:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AA6297F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 10 Oct 2018 20:31:00 +0000 (UTC)
Date: Wed, 10 Oct 2018 17:30:55 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Alan Cox <gnomes@lxorguk.ukuu.org.uk>
Message-ID: <20181010173055.5ea10f95@coco.lan>
In-Reply-To: <20181010210948.62ed5ce6@alans-desktop>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861851.4088.7.camel@HansenPartnership.com>
	<20181008172303.4f06cd94@coco.lan>
	<20181010165308.187aae51@alans-desktop>
	<20181010141917.611fb5d8@coco.lan>
	<20181010210948.62ed5ce6@alans-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	linux-kernel <linux-kernel@vger.kernel.org>,
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

Em Wed, 10 Oct 2018 21:09:48 +0100
Alan Cox <gnomes@lxorguk.ukuu.org.uk> escreveu:

> On Wed, 10 Oct 2018 14:19:17 -0300
> Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
> 
> > Em Wed, 10 Oct 2018 16:53:08 +0100
> > Alan Cox <gnomes@lxorguk.ukuu.org.uk> escreveu:
> >   
> > > > -Maintainers have the right and responsibility to remove, edit, or reject
> > > > +Maintainers may remove, edit, or reject
> > > >  comments, commits, code, wiki edits, issues, and other contributions that are
> > > >  not aligned to this Code of Conduct, or to ban temporarily or permanently any
> > > >  contributor for other behaviors that they deem inappropriate, threatening,
> > > > 
> > > > The previous text seems too much legal for my taste.
> > > >       
> > > 
> > > That is just as confusing. Maintainers have the right to remove, edit,
> > > reject commits that *are* aligned with the code as well.    
> > 
> > Good point. Yeah, a maintainer can do whatever he thinks it is 
> > appropriate for a patch - even when it follows the CoC.
> >   
> > > So what exactly is the point here ?    
> > 
> > The point is "responsibility" - that sounds like it is bounding a legal
> > duty to a maintainer.  
> 
> If you remove the responsibility aspect you might as well remove the
> entire clause. It doesn't say anything as it's simply a subset of what
> maintainers do anyway.
> 
> So how about
> 
> "Maintainers should remove, edit or reject..."
> 
> that keeps the sense that there should be pressure against abusive
> behaviour.

Works for me.

> except of course someone will attach a zero day exploit and fix to a
> coc-violating rant and then you are a bit stuffed 8)

:-)

Thanks,
Mauro
