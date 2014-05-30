Return-Path: <rostedt@goodmis.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E68119C9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 15:06:42 +0000 (UTC)
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.227])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 6FCCA1FC59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 May 2014 15:06:42 +0000 (UTC)
Date: Fri, 30 May 2014 11:06:40 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Message-ID: <20140530110640.70d6ae02@gandalf.local.home>
In-Reply-To: <700704721.GMn4j9GJx9@vostro.rjw.lan>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<alpine.DEB.2.02.1405281847450.1280@utopia.booyaka.com>
	<20140529182753.GJ25041@thunk.org>
	<700704721.GMn4j9GJx9@vostro.rjw.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Reforming Acked-by (was Re: [TOPIC]
 Encouraging more reviewers)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 29 May 2014 23:03:28 +0200
"Rafael J. Wysocki" <rjw@rjwysocki.net> wrote:


> Well, perhaps we can reserve the Acked-by for maintainers and add
> something like Supported-by for the 2nd meaning.

Or add a new tag for maintainers. I like:

 Approved-by:

As that is what the meaning of the maintainer acked-by is.  I sometimes
use Acked-by when I'm not the maintainer of the code but the code
changes something related to tracing, or something else I dabble in
(interrupts, scheduler, etc). Code that I may not maintain, but
something I do work with. Acked-by to me isn't limited to a maintainer,
but for those that deal with the code, and agree with the change.
Supported-by gives the meaning that I'm funding that change.

Where as, a maintainer could pass in an "Approved-by" which means "Yes,
I approve this change and it may go through another tree instead of
mine".

-- Steve
