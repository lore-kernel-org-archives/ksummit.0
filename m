Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4FC45154D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 19:11:47 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CC8D97F8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 19:11:46 +0000 (UTC)
Date: Thu, 13 Jun 2019 16:11:41 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20190613161141.41f90b83@coco.lan>
In-Reply-To: <1560451292.3329.51.camel@HansenPartnership.com>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<20190613142621.6a934377@coco.lan>
	<1560451292.3329.51.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Thu, 13 Jun 2019 11:41:32 -0700
James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:

> On Thu, 2019-06-13 at 14:27 -0300, Mauro Carvalho Chehab wrote:
> > Em Thu, 13 Jun 2019 07:35:07 -0700
> > James Bottomley <James.Bottomley@HansenPartnership.com> escreveu:  
> > > It depends: every patch you do to an old driver comes with a risk
> > > of breakage.  What we've found is even apparently sane patches
> > > cause breakage which isn't discovered until months later when
> > > someone with the hardware actually tests.   
> > 
> > True, but, if you do the diff between the .o file produced before
> > the patch and after it (and/or the associated .a file), you should be
> > able to discover if the change caused a regression or not.
> > 
> > So, if the patch is a "pure" coding style fix, you could be able to
> > avoid regressions.  
> 
> Right, that's why I said "doesn't change the binary in the rules lower
> down".  However, the number of people who actually come with a same
> binary before and after section in their changelog is tiny ...
> 
> So perhaps we should document somewhere how (or even provide a tool) to
> demonstrate the binary remains the same across the patch, because it is
> an enormous help to subsystem maintainers.

Yeah, a tool or a CI bot test with would help to identify binary-identical
changes would be really helpful, as this could help a lot maintainers to
decide either to take or not cleanup patches (including those coccinelle
stuff) without requiring hardware testing.

Thanks,
Mauro
