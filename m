Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5EE2D900
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Jul 2017 08:25:20 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CDF231BB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 24 Jul 2017 08:25:19 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CAJfpegsK_SvLOg9rTMSwVSZpDG4HFkPrkfaPtGrniLhtr1vUhw@mail.gmail.com>
References: <CAJfpegsK_SvLOg9rTMSwVSZpDG4HFkPrkfaPtGrniLhtr1vUhw@mail.gmail.com>
	<10144.1499863410@warthog.procyon.org.uk>
	<12463.1499871476@warthog.procyon.org.uk>
	<20170712082139.17cfd33a@xeon-e3>
	<CA+55aFySG7NAvsphb76J-M2YuM8_4wQ8Cvufu24Gb=EhpaoKTg@mail.gmail.com>
	<20170719090239.39f031c5@gandalf.local.home>
To: Miklos Szeredi <miklos@szeredi.hu>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <25484.1500884717.1@warthog.procyon.org.uk>
Date: Mon, 24 Jul 2017 09:25:17 +0100
Message-ID: <25485.1500884717@warthog.procyon.org.uk>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Getting better/supplementary
	error info back to userspace
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Miklos Szeredi <miklos@szeredi.hu> wrote:

> My suggestion was to keep the kernel interface really simple, e.g.:
> 
>    return detailed_error(-EINVAL, "failure to do foo because of bar");

That's what I was thinking of, though I'd prefix the string with a source tag,
such as "nfs", "vfs" or "dvb-core".

David
