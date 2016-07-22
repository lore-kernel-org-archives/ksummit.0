Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BB7F94D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 11:05:48 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4F9B8CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 22 Jul 2016 11:05:48 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <14459ec4-b42d-d6e1-51fd-eb6ac77ada17@suse.cz>
References: <14459ec4-b42d-d6e1-51fd-eb6ac77ada17@suse.cz>
	<87inw1skws.fsf@x220.int.ebiederm.org>
	<25598.1469113525@warthog.procyon.org.uk>
	<20160721233333.GD9841@dtor-ws>
	<11488.1469170986@warthog.procyon.org.uk>
	<CACVxJT-CB2V1dDdnJdbjewmXR04RpqB51c1jnh29Go_ceu6AWw@mail.gmail.com>
	<15317.1469182420@warthog.procyon.org.uk>
	<CACVxJT-gj8x8A4O_qrc826VnGwZS8ynMStph_mruYaM7dJ6EEQ@mail.gmail.com>
To: Vlastimil Babka <vbabka@suse.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <15900.1469185546.1@warthog.procyon.org.uk>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Jul 2016 12:05:46 +0100
Message-ID: <15901.1469185546@warthog.procyon.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] More useful types in the linux
	kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Vlastimil Babka <vbabka@suse.cz> wrote:

> > I can resurrect irq_flags_t but there is no procedure for merging 1MB+=
 diffs
> > without spending whole life splitting and emailing maintainers.
> =

> I think the procedure is that you have a script (e.g. coccinelle) to mak=
e such
> patch and Linus applies it himself just before/after rc1.

Can coccinelle manage changing the local variable declaration, especially =
if
someone does:

	unsigned long flags, fred;

where fred is unrelated.

But, on the other hand, it should be possible to compile test very easily =
if
irq_flags_t is a typedef'd struct.

David
