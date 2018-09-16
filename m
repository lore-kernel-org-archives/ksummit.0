Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 356EF84B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 23:58:05 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D48103CC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 23:58:04 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAFhKne8kiF6k-QUJ9x-cCyBcVvfuWKdcUtQZNz=1sx_iHR+64g@mail.gmail.com>
References: <CAFhKne8kiF6k-QUJ9x-cCyBcVvfuWKdcUtQZNz=1sx_iHR+64g@mail.gmail.com>
To: Matthew Wilcox <willy6545@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <9927.1537142282.1@warthog.procyon.org.uk>
Date: Mon, 17 Sep 2018 00:58:02 +0100
Message-ID: <9928.1537142282@warthog.procyon.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Project Banbury
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Matthew Wilcox <willy6545@gmail.com> wrote:

> We've all pulled the wrong drive out of a machine or unplugged a USB key
> before the write back has completely finished. You try to plug it back in,
> but the damage is done.  The pending writes are lost, the filesystem is
> damaged and full of errors and you are having a Bad Day. What if
> ... plugging the drive back in could be made to work?

Is this something fscache could be made to help with?  Though that might be
more at a filesystem level than a blockdev level.

David
