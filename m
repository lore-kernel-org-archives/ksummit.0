Return-Path: <dave@stgolabs.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E08265
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Aug 2015 07:07:22 +0000 (UTC)
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C2EB37C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  2 Aug 2015 07:07:21 +0000 (UTC)
Message-ID: <1438499234.2249.122.camel@stgolabs.net>
From: Davidlohr Bueso <dave@stgolabs.net>
To: Jonathan Corbet <corbet@lwn.net>
Date: Sun, 02 Aug 2015 00:07:14 -0700
In-Reply-To: <20150801164142.653012af@lwn.net>
References: <20150801164142.653012af@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, 2015-08-01 at 16:41 +0200, Jonathan Corbet wrote:
> There could, I think, be value in talking about where we would like our
> docs subsystem to go.  

Perhaps more important would be focusing on ways of _improving_ our
already existing Documentation/*. Some areas really stink, a combination
of stale and incorrect information. My brain is too melted to give exact
examples, just one of those things you run into.

In general core kernel docs is pretty well maintained. This, I believe,
is a result of maintainers pushing for quality docs with patches. I
don't know about others, ie drivers, but perhaps examples could be taken
from -tip, or akpm.

> What kind of changes would we like to make to render
> our docs more accessible, more current, and easier to contribute to?

I would say that if anyone has anything meaningful to say, he or she,
will find the way. As you mentioned, nicely formatted plain text files
work well.

While I don't discourage it, I am not a fan of automated documentation.
As you and mtk would know, writing high quality, informative, systems
software documentation is an involved process. And it should be, imo.
Same goes for describing APIs and algorithms in code comments. Sure,
automation has its pros, particularly keeping docs up to date; yet this
does not outweigh a well crafted document, which involves actual though.

Thanks,
Davidlohr
