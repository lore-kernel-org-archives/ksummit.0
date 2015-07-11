Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BB393AE7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 15:04:41 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4058C112
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 15:04:41 +0000 (UTC)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 1B14620A0C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 11:04:39 -0400 (EDT)
Date: Sat, 11 Jul 2015 08:04:37 -0700
From: Greg KH <greg@kroah.com>
To: Darren Hart <dvhart@infradead.org>
Message-ID: <20150711150437.GA6666@kroah.com>
References: <559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710143641.GW4341@mwanda> <20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com> <20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com> <20150711023946.GV111846@vmdeb7>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150711023946.GV111846@vmdeb7>
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Jason Cooper <jason@lakedaemon.net>
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

On Fri, Jul 10, 2015 at 07:39:46PM -0700, Darren Hart wrote:
> OK, all good points. It looks as though I can step up my own tooling some to
> make the email-to-compilation step faster so I don't spend as much time on
> patches with compiler warnings, that don't apply, etc. Dan C. said something
> similar.

I think I mentioned it before, but Wolfram has a set of scripts that
does this really well.  I don't know if they are published anywhere, but
that would be a good place to start with.  I think Sara Sharp also had a
bunch that she used to make life easier, you might want to ask her the
next time you see her in the office.

> The "one hour class" thing makes it sound like it takes "one hour" - but I find
> I have to revisit this stuff fairly regularly, and those hours add up.

Really?  Why?  Once you learn the workflow, what keeps changing that
breaks things?  External stuff (like corporate email servers), or things
in our workflow/tools?

thanks,

greg k-h
