Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C5682BC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 17:45:10 +0000 (UTC)
Received: from vena.lwn.net (tex.lwn.net [70.33.254.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8B23D110
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Jul 2015 17:45:10 +0000 (UTC)
Date: Mon, 13 Jul 2015 11:45:09 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Alexey Dobriyan <adobriyan@gmail.com>
Message-ID: <20150713114509.14f1f866@lwn.net>
In-Reply-To: <CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
References: <201507130038.01474.PeterHuewe@gmx.de>
	<CACVxJT9WjwWZUQWPk_jXOLOZsTh8HdGuKWr1ri3q02fEaFLejA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

On Mon, 13 Jul 2015 12:47:23 +0300
Alexey Dobriyan <adobriyan@gmail.com> wrote:

> I have counter suggestion:
> * remove kernel-doc official status, remove generating scripts
>   because it doesn't work,

kerneldoc does work, after a fashion.  It works well enough that people
use it, and I hear about it quickly when somebody's comment change breaks
the docs build.  I don't think we can remove it in the absence of
something better.

Creating "something better" is actually on my list of things to do.  The
only problem is that I've had to buy a second 4TB drive to hold that list,
so I don't know when I'll have time to think about it.

jon
