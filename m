Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 36BA62FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 15:18:53 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id C6C5A1FA0F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 21 May 2014 15:18:51 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <537BA385.6090208@zytor.com>
References: <537BA385.6090208@zytor.com>
To: "H. Peter Anvin" <hpa@zytor.com>
Date: Wed, 21 May 2014 16:18:47 +0100
Message-ID: <18264.1400685527@warthog.procyon.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Services needed from kernel.org
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


I posted a list of niggles about the cgit interface over the gitweb interface
a while back (see below).  As far as I can tell, none of them got addressed.

David
---
There some things in gitweb that are missing from the cgit interface on
git.kernel.org that would be nice to have:

(1) Could the patch view screen be made to show tabs expanded?  (Both in the
    diff and in the description).

(2) If an additional remote was pushed into a kernel tree, IIRC with gitweb
    its branches used to show up in the tree in pink boxes - see:

	http://git.infradead.org/users/dhowells/linux-headers.git/shortlog/refs/tags/disintegrate-fbdev-20121220

    where you can see:

	linus/master

    in a pink box.  Could this be brought back please?

 (3) Tag entries in the tag list on the front page had a "shortlog" button
     associated with them in gitweb that would show the log starting from that
     tag - but that's no longer so easy to do.

 (4) Author names are no longer clickable to get a list of patches by that
     author.
