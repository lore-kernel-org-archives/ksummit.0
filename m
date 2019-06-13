Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F2F0C1524
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 19:01:50 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2FD0D711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 19:01:50 +0000 (UTC)
Date: Thu, 13 Jun 2019 16:01:41 -0300
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20190613160141.6f3bd158@coco.lan>
In-Reply-To: <20190613184808.GA1093@kroah.com>
References: <20190612085405.6045d95d@lwn.net>
	<20190613115712.5024a1b2@coco.lan>
	<20190613184808.GA1093@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Thu, 13 Jun 2019 20:48:08 +0200
Greg KH <greg@kroah.com> escreveu:

> On Thu, Jun 13, 2019 at 11:57:12AM -0300, Mauro Carvalho Chehab wrote:
> > >  - Things we'd like to improve in the documentation toolchain.  
> > 
> > I remember once I submitted a patch with a script capable of
> > parsing the files at ABI and produce a parsed content, with the
> > goal of validating the ABI files against its syntax and to
> > generate an ABI book.
> > 
> > IMO, it makes sense to have one book containing the Linux ABI, but, 
> > as the patch didn't have much attention, and I got sidetracked with
> > something else, I ended giving up on trying to push it. 
> > 
> > Perhaps by KS it would be time to rescue it from some old git tree
> > and see if it would be worth the time to work on it.  
> 
> I liked that patcheset.  If you can dig it up, I can work on reviving it
> if you don't want to.

The patches are here:

	https://git.linuxtv.org/mchehab/experimental-old.git/commit/?h=abi_docs_v3&id=da4b94205aced79df7389ca6f2ec4328fb8604a7

I'll rebase them on the top of linux-next and re-submit.

Thanks,
Mauro
