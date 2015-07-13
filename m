Return-Path: <PeterHuewe@gmx.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6FFACACC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 19:44:53 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CDD21115
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 19:44:52 +0000 (UTC)
From: Peter =?iso-8859-1?q?H=FCwe?= <PeterHuewe@gmx.de>
To: Jonathan Corbet <corbet@lwn.net>
Date: Mon, 13 Jul 2015 21:46:46 +0200
References: <201507130038.01474.PeterHuewe@gmx.de>
	<CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
	<20150713114509.14f1f866@lwn.net>
In-Reply-To: <20150713114509.14f1f866@lwn.net>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <201507132146.47186.PeterHuewe@gmx.de>
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

Am Montag, 13. Juli 2015, 19:45:09 schrieb Jonathan Corbet:
> On Mon, 13 Jul 2015 12:47:23 +0300
> 
> Alexey Dobriyan <adobriyan@gmail.com> wrote:
> > I have counter suggestion:
> > * remove kernel-doc official status, remove generating scripts
> > 
> >   because it doesn't work,
> 
> kerneldoc does work, after a fashion.  It works well enough that people
> use it, and I hear about it quickly when somebody's comment change breaks
> the docs build.  I don't think we can remove it in the absence of
> something better.
Jonathan, do you keep an up-to-date copy of the generated files somewhere?
(I cannot get it to work out of the box on my machine)

> Creating "something better" is actually on my list of things to do.  The
> only problem is that I've had to buy a second 4TB drive to hold that list,
> so I don't know when I'll have time to think about it.
Where do you think are the major issues from your point of view? 

Would doxygen be "something better"? The kernel-doc style looks already quite 
similar.
Maybe the kernel should not reinvent everything :)




Thanks,
Peter
