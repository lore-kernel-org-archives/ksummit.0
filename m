Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 18FF6B88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 12:53:13 +0000 (UTC)
Received: from vena.lwn.net (tex.lwn.net [70.33.254.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C3AF8EA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 12:53:11 +0000 (UTC)
Date: Tue, 14 Jul 2015 06:53:10 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Message-ID: <20150714065310.7e21edff@lwn.net>
In-Reply-To: <20150714094342.36be30fe@recife.lan>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
	<20150713114509.14f1f866@lwn.net>
	<201507132146.47186.PeterHuewe@gmx.de>
	<20150713203647.1fdb8bb4@lwn.net>
	<20150714094342.36be30fe@recife.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE-TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 14 Jul 2015 09:43:42 -0300
Mauro Carvalho Chehab <mchehab@osg.samsung.com> wrote:

> > Doxygen may be worth a look.  I'm personally fond of Sphinx, though I
> > still haven't done a big project in it.  
> 
> I never used Sphinx. Doxygen seems better on my eyes, because people
> already sends us media drivers using Doxygen tags style. Also, as
> mentioned, kernel-doc style is a subset. Not to mention that, in the
> specific case of media,we're using Doxygen to document some libraries
> packaged inside v4l-utils (with is the userspace counterpart of the 
> Kernel subsystem). So, at least for me, Doxygen would be easier to use.

Just for clarity: any new documentation solution that required
reformatting all existing doc comments is clearly not going anywhere; even
I am not dumb enough to try to push something like that through.

In any case, this is all in the "would be nice to look at seriously" stage
over here.  I have no real idea if something like Sphinx would be a useful
and practical improvement or not; I'm certainly not agitating for a change
in that direction now.

jon
