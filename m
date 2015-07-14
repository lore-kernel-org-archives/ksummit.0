Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B45D93E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:36:50 +0000 (UTC)
Received: from vena.lwn.net (tex.lwn.net [70.33.254.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 77AF611A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 02:36:49 +0000 (UTC)
Date: Mon, 13 Jul 2015 20:36:47 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Peter =?UTF-8?B?SMO8d2U=?= <PeterHuewe@gmx.de>
Message-ID: <20150713203647.1fdb8bb4@lwn.net>
In-Reply-To: <201507132146.47186.PeterHuewe@gmx.de>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
	<20150713114509.14f1f866@lwn.net>
	<201507132146.47186.PeterHuewe@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 13 Jul 2015 21:46:46 +0200
Peter Hüwe <PeterHuewe@gmx.de> wrote:

> > kerneldoc does work, after a fashion.  It works well enough that people
> > use it, and I hear about it quickly when somebody's comment change breaks
> > the docs build.  I don't think we can remove it in the absence of
> > something better.  
> Jonathan, do you keep an up-to-date copy of the generated files somewhere?
> (I cannot get it to work out of the box on my machine)

I don't, sorry.  That would probably be a good thing for me to do for a
number of reasons.

> > Creating "something better" is actually on my list of things to do.  The
> > only problem is that I've had to buy a second 4TB drive to hold that list,
> > so I don't know when I'll have time to think about it.  
> Where do you think are the major issues from your point of view? 

Well, as mentioned before, kerneldoc is fragile.  A little while back
somebody changed a struct to a union without updating the comments to
match; that was enough to break the entire document build process.  That
kind of thing happens a lot; I don't think it should have to be that way.

Beyond that, DocBook is a major pain.  I get a fair number of patches
along the lines of "that </para> should really have been ahead of that
</whatever>".  It's verbose, intimidating to newcomers, and causes more
worn-out shift keys than anything else.  We don't need something with the
complexity of DocBook; something closer to Markdown or ReST would do us
just fine and make the documentation much more accessible.

But making any such change is a big job, and convincing the community to
go with a change in tooling is probably a bigger job.  So I'm not rushing
into it.

> Would doxygen be "something better"? The kernel-doc style looks already quite 
> similar.
> Maybe the kernel should not reinvent everything :)

Doxygen may be worth a look.  I'm personally fond of Sphinx, though I
still haven't done a big project in it.

But this is all just dreaming until somebody has the time to do a major
docs overhaul and sell it to everybody else.  Until then, I'm focused on
slowly improving what we have now...

jon
