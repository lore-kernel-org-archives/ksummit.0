Return-Path: <tytso@thunk.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0A7C7BCC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:59:33 +0000 (UTC)
Received: from imap.thunk.org (imap.thunk.org [74.207.234.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 89D3B9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  9 Jul 2015 23:59:32 +0000 (UTC)
Date: Thu, 9 Jul 2015 19:59:28 -0400
From: Theodore Ts'o <tytso@mit.edu>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150709235928.GI9417@thunk.org>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<1436481109.3324.219.camel@infradead.org>
	<20150709233854.GE111846@vmdeb7>
	<1436485273.24408.4.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1436485273.24408.4.camel@infradead.org>
Cc: Jason Cooper <jason@lakedaemon.net>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 10, 2015 at 12:41:13AM +0100, David Woodhouse wrote:
> On Thu, 2015-07-09 at 16:38 -0700, Darren Hart wrote:
> > since we're talking about recruiting, my point was by implementing 
> > some of these things we can maintain our standards while reducing 
> > maintainer/reviewer overhead.
> 
> Hopefully, yes. But people actually have to *use* the tools and
> services we provide. Like checkpatch.
> 
> Rather than seeing them as part of the problem.

Using checkpatch on patches before they are submitted are definitely
part of the solution.  Using "checkpatch --file" or coccinelle on
files where you are not the maintainer or one of the core subsystem
developers to inflate your patch count is (IMHO) part of the problem.

	      	      	   	       	  - Ted
