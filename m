Return-Path: <mchehab@osg.samsung.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D0713B3D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 12:43:48 +0000 (UTC)
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7E6671BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 12:43:47 +0000 (UTC)
Date: Tue, 14 Jul 2015 09:43:42 -0300
From: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20150714094342.36be30fe@recife.lan>
In-Reply-To: <20150713203647.1fdb8bb4@lwn.net>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
	<20150713114509.14f1f866@lwn.net>
	<201507132146.47186.PeterHuewe@gmx.de>
	<20150713203647.1fdb8bb4@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

Em Mon, 13 Jul 2015 20:36:47 -0600
Jonathan Corbet <corbet@lwn.net> escreveu:

> > Would doxygen be "something better"? The kernel-doc style looks already quite 
> > similar.
> > Maybe the kernel should not reinvent everything :)

My experience is that, from time to time, people send us drivers written
by the manufacturer with Doxygen-compatible tags. Converting them to
kernel-doc is a huge task, not worthing the effort. I tried in the past
to request developers to "fix" the comments. The net result is either
to not have a final version of the driver submitted or to receive a
comments-stripped version of it, with is actually worse, as we loose
lots of otherwise good documentation. So, nowadays, I'm opting to keep
whatever comments are there at the code, provided that it is not using
C99 comments.

So, I'm a huge fan of extending the kernel-doc to accept all markup tags
that Doxygen supports.

> Doxygen may be worth a look.  I'm personally fond of Sphinx, though I
> still haven't done a big project in it.

I never used Sphinx. Doxygen seems better on my eyes, because people
already sends us media drivers using Doxygen tags style. Also, as
mentioned, kernel-doc style is a subset. Not to mention that, in the
specific case of media,we're using Doxygen to document some libraries
packaged inside v4l-utils (with is the userspace counterpart of the 
Kernel subsystem). So, at least for me, Doxygen would be easier to use.

Regards,
Mauro
