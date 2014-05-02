Return-Path: <johannes@sipsolutions.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 36D0621
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:32:12 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net [144.76.43.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A941B1FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  2 May 2014 20:32:11 +0000 (UTC)
Message-ID: <1399061048.7206.2.camel@jlt4.sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Jiri Kosina <jkosina@suse.cz>
Date: Fri, 02 May 2014 22:04:08 +0200
In-Reply-To: <alpine.LNX.2.00.1405022121070.29834@pobox.suse.cz>
References: <alpine.LNX.2.00.1405022121070.29834@pobox.suse.cz>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] "depth" of the tree of
 maintainers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, 2014-05-02 at 21:42 +0200, Jiri Kosina wrote:
> Is our tree too flat? This might turn into just a question to Linus than 
> really a discussion topic.
>
> It seems to me (and it has been the case for a few past years, so it's 
> probably not an issue at the end of the day) like there are many places 
> where we are violating a natural tree-like hierarchy our development model 
> has, with many people sending pull requests directly to Linus instead of 
> going through sub-maintainers. Is this really a problem? If so, how to 
> deal with it?

I don't know about that, but I'm pretty far removed and have been
wondering if it's too *deep*, since a pull request from me to John to
DaveM to Linus can take a very long time to actually get into the
tree ...

This gets to the point where sometimes shortly before the merge window
opens I don't even bother sending fixes to the current tree any more but
just put them into the -next branch marked Cc stable, which has Greg
(rightfully) complaining that there shouldn't be so much stable material
coming into the tree in the merge window since presumably most of that
wasn't actually *developed* in that time)

johannes
