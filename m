Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id ECFCB9B1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:51:49 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [5.9.151.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CDCB92034F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  9 May 2014 17:51:48 +0000 (UTC)
Message-ID: <1399656674.4136.12.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: josh@joshtriplett.org
Date: Fri, 09 May 2014 19:31:14 +0200
In-Reply-To: <20140509171954.GC8289@cloud>
References: <20140509170709.GA9747@redhat.com> <20140509171954.GC8289@cloud>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] coverity, static checking etc.
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2014-05-09 at 10:19 -0700, josh@joshtriplett.org wrote:

> I'd like to see this topic as well.  I think we could do a lot better
> here than we do.  And don't forget that GCC is one of our top static
> analysis tools, if only because it's the only one *everyone* runs; that
> includes both warnings and the possibility of shipping and building our
> own GCC plugin.
> 
> I'd also like to nominate Christopher Li, for Sparse.

Seconded, I'm also interested in general in whether people still think
sparse is useful and we should give it attention, or should focus more
on really getting everything into gcc - we have a number of sparse
warnings in very low-level header files that get used everywhere, for
example the one I just fixed in [1] or the one I tried to fix but that
ended up being buggy ([2]), but there doesn't seem to be much attention
to these during the patch submission etc.

johannes

[1] http://thread.gmane.org/gmane.linux.kernel/1699192
[2] http://thread.gmane.org/gmane.linux.kernel/1642101/focus=1642108
